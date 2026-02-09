#! /bin/bash
cd "$1"
mkdir "$2"
cd "$2"
echo "New keg located at: $PWD"
mkdir lib
mkdir icons
mkdir data
mkdir desktop
touch keg-name.txt
echo "Done! Here are your next steps:"
echo "1. Move .so files into the lib folder in the keg"
echo "2. Move .desktop files into the desktop folder"
echo "3. Move application data into the data folder"
echo "4. Move icons to the icons folder"
echo "5. Place binaries in the root of the keg"
echo "6. Use kegbuild to build into a keg package"