name: Build with PyInstaller

on: [push, pull_request]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - name: Checkout repository
      uses: actions/checkout@v2

    - name: Set up Python
      uses: actions/setup-python@v2
      with:
        python-version: 3.8

    - name: Install dependencies
      run: |
        python -m pip install --upgrade pip
        pip install pyinstaller

    - name: Generate spec file
      run: |
        echo "
        # -*- mode: python ; coding: utf-8 -*-
        block_cipher = None
        a = Analysis(
            ['prototypepokemonstats/Main.py'],
            pathex=['/path/to/PokemonCalculatorEVSIVS_Locale'],
            binaries=[],
            datas=[
                ('prototypepokemonstats/Assets/Images/icon.ico', 'prototypepokemonstats/Assets/Images'),
                ('prototypepokemonstats/Assets/Images/arrow_down.png', 'prototypepokemonstats/Assets/Images'),
                ('prototypepokemonstats/Assets/Images/arrow_left.png', 'prototypepokemonstats/Assets/Images'),
                ('prototypepokemonstats/Assets/Images/arrow_right.png', 'prototypepokemonstats/Assets/Images'),
                ('prototypepokemonstats/Assets/Images/arrow_up.png', 'prototypepokemonstats/Assets/Images'),
                ('prototypepokemonstats/Assets/Images/megaevolution.png', 'prototypepokemonstats/Assets/Images'),
                ('prototypepokemonstats/Assets/PokemonGen/GenI.png', 'prototypepokemonstats/Assets/PokemonGen'),
                ('prototypepokemonstats/Assets/PokemonGen/GenII.png', 'prototypepokemonstats/Assets/PokemonGen'),
                ('prototypepokemonstats/Assets/PokemonGen/GenIII.png', 'prototypepokemonstats/Assets/PokemonGen'),
                ('prototypepokemonstats/Assets/PokemonGen/GenIV.png', 'prototypepokemonstats/Assets/PokemonGen'),
                ('prototypepokemonstats/Assets/PokemonGen/GenV.png', 'prototypepokemonstats/Assets/PokemonGen'),
                ('prototypepokemonstats/Assets/PokemonGen/GenVI.png', 'prototypepokemonstats/Assets/PokemonGen'),
                ('prototypepokemonstats/Assets/PokemonGen/GenVII.png', 'prototypepokemonstats/Assets/PokemonGen'),
                ('prototypepokemonstats/Assets/PokemonGen/GenVIII.png', 'prototypepokemonstats/Assets/PokemonGen'),
                ('prototypepokemonstats/Assets/PokemonGen/GenMega.png', 'prototypepokemonstats/Assets/PokemonGen'),
                ('prototypepokemonstats/Assets/PokemonType/types_label.png', 'prototypepokemonstats/Assets/PokemonType'),
                ('prototypepokemonstats/color.py', 'prototypepokemonstats'),
                ('prototypepokemonstats/createDB.py', 'prototypepokemonstats'),
                ('prototypepokemonstats/DatabaseCommand.py', 'prototypepokemonstats'),
                ('prototypepokemonstats/formula.py', 'prototypepokemonstats'),
                ('prototypepokemonstats/RadarChart.py', 'prototypepokemonstats'),
                ('prototypepokemonstats/ui_management.py', 'prototypepokemonstats'),
            ],
            hiddenimports=[
            'tkinter.ttk',
            'tkinter',
            'PIL.Image',
            'PIL.ImageTk',
            'numpy',
            'matplotlib.pyplot',
            'math',
            'os',
            'sqlite3'
            ],
            hookspath=[],
            runtime_hooks=[],
            excludes=[],
            win_no_prefer_redirects=False,
            win_private_assemblies=False,
            cipher=block_cipher,
            noarchive=False,
        )
        pyz = PYZ(a.pure, a.zipped_data, cipher=block_cipher)
        exe = EXE(
            pyz,
            a.scripts,
            [],
            exclude_binaries=True,
            name='Main',
            debug=False,
            bootloader_ignore_signals=False,
            strip=False,
            upx=True,
            upx_exclude=[],
            runtime_tmpdir=None,
            console=True
        )
        coll = COLLECT(
            exe,
            a.binaries,
            a.zipfiles,
            a.datas,
            strip=False,
            upx=True,
            upx_exclude=[],
            name='Main'
        )
        " > my_spec_file.spec

    - name: Build executable
      run: pyinstaller my_spec_file.spec -y

    - name: Archive output
      uses: actions/upload-artifact@v2
      with:
        name: executable
        path: dist/
