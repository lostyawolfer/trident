#!/usr/bin/env python3
# written with gemini 2.5 flash but reviewed and edited

import argparse

import os
import sys
import subprocess
import shutil
import tempfile

def build_jar(ver: str,
              repo_url: str = "https://github.com/lostyawolfer/trident.git",
              first_branch: str = "master",
              second_branch: str = "resources", 
              jar_name: str = "trident-tweaks.jar"):

    with tempfile.TemporaryDirectory() as tmpdir:
        print(f"Working in temporary directory: {tmpdir}")

        first_branch_dir = os.path.join(tmpdir, first_branch)
        print(f"Cloning {first_branch} from {repo_url}...")
        subprocess.run(['git', 'clone', '--branch', first_branch, '--depth', '1', repo_url, first_branch_dir], check=True)

        second_branch_dir = os.path.join(tmpdir, second_branch)
        print(f"Cloning {second_branch} from {repo_url}...")
        subprocess.run(['git', 'clone', '--branch', second_branch, '--depth', '1', repo_url, second_branch_dir], check=True)


        data_source = os.path.join(first_branch_dir, "data")
        data_destination = os.path.join(tmpdir, "data")
        if os.path.exists(data_source):
            print(f"Copying '{data_source}' to '{data_destination}'")
            shutil.copytree(data_source, data_destination)
        else:
            print(f"Warning: 'data' directory not found in {first_branch_dir}")

        assets_source = os.path.join(second_branch_dir, "assets")
        assets_destination = os.path.join(tmpdir, "assets")
        if os.path.exists(assets_source):
            print(f"Copying '{assets_source}' to '{assets_destination}'")
            shutil.copytree(assets_source, assets_destination)
        else:
            print(f"Warning: 'assets' directory not found in {second_branch_dir}")

        pack_png_source = os.path.join(second_branch_dir, "pack.png")
        logo_png_destination = os.path.join(tmpdir, "logo.png")
        if os.path.exists(pack_png_source):
            print(f"Copying '{pack_png_source}' to '{logo_png_destination}'")
            shutil.copy2(pack_png_source, logo_png_destination) # Use copy2 to preserve metadata
        else:
            print(f"Warning: 'pack.png' not found in {second_branch_dir}")


        print(f"Removing cloned directory: {first_branch_dir}")
        shutil.rmtree(first_branch_dir)

        print(f"Removing cloned directory: {second_branch_dir}")
        shutil.rmtree(second_branch_dir)



        fabric_mod_file_content = f"""{{
    "schemaVersion": 1,
    "id": "trident",
    "version": "{ver}",
    "name": "trident tweaks",
    "description": "A mod that has all the little tweaks from Trident SMP. This is a datapack and a resourcepack combo in a mod form. The dependencies here contain all the mods that Trident SMP uses.",
    "authors": [
        "lostyawolfer"
    ],
    "contact": {{
        "homepage": "none",
        "sources": "https://github.com/lostyawolfer/trident",
        "issues": "none"
    }},
    "license": "WTFPL",
    "icon": "logo.png",
    "environment": "*",
    "depends": {{
        "fabricloader": ">=0.16.10",
        "minecraft": "=1.21.4",
        "java": ">=17",
        "fabric-api": ">=0.119.0",

        "philipsruins": "*",

        "carpet": "*",
        "nochatreports": "*",
        "packetfixer": "*",
        "ping-wheel": "*",
        "player-locator-plus": "*",
        "voicechat": "*",
        "sit": "*",
        "universal_ores": "*",
        "watut": "*",
        
        "azaleawood": "*",
        "birchupdate": "*",
        "connectiblechains": "*",
        "copperhopper": "*",
        "customizableelytra": "*",
        "easyanvils": "*",
        "easymagic": "*",
        "end_reborn": "*",
        "potioncauldron": "*"
    }}
}}"""

        fabric_mod_file_path = os.path.join(tmpdir, "fabric.mod.json")
        with open(fabric_mod_file_path, "w") as f:
            f.write(fabric_mod_file_content)
        print(f"Added fabric.mod.json: {fabric_mod_file_path}")


        # Navigate to the temporary directory to create the JAR
        current_dir = os.getcwd()
        os.chdir(tmpdir)

        try:
            print(f"Creating JAR file: {jar_name}")
            subprocess.run(['jar', 'cf', jar_name, '.'], check=True)

            shutil.move(jar_name, current_dir)
            print(f"JAR file created successfully: {os.path.join(current_dir, jar_name)}")

        finally:
            os.chdir(current_dir)

if __name__ == "__main__":
    _, ver, _ = sys.argv + ['']
    if ver[0].isnumeric():
        ver = ver[:1]
    
    if ver == '':
        raise Exception("tell me the version!!!")

    build_jar(ver=ver,
              repo_url="https://github.com/lostyawolfer/trident",
              first_branch="master",
              second_branch="resources",
              jar_name="trident-tweaks.jar")
