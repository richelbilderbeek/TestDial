#!/bin/sh
#zip packs all the files to port into a single .zip file,
#minicking the same folder structure
#Folder structure
# *
#   * Classes
#     * CppAbout
#     * CppDial
#     * CppDialWidget
#     * CppQtAboutDialog
#     * CppQtDialWidget
#     * CppRainbow
#     * CppRectangle
#     * CppTrace
#     * CppWidget
#     * CppWtAboutDialog
#     * CppWtAutoConfig
#     * CppWtDialWidget
#   * Tools
#    * ToolTestDial

echo "Converting DIA to PNG"
dia --filter=png ToolTestDialArchitecture.dia

echo "Removing previous user's information"
rm *.user

echo "Mimicking file structure"
mkdir temp_zip
mkdir temp_zip/Classes
mkdir temp_zip/Classes/CppAbout
mkdir temp_zip/Classes/CppDial
mkdir temp_zip/Classes/CppDialWidget
mkdir temp_zip/Classes/CppQtAboutDialog
mkdir temp_zip/Classes/CppQtDialWidget
mkdir temp_zip/Classes/CppRainbow
mkdir temp_zip/Classes/CppRectangle
mkdir temp_zip/Classes/CppTrace
mkdir temp_zip/Classes/CppWidget
mkdir temp_zip/Classes/CppWtAboutDialog
mkdir temp_zip/Classes/CppWtAutoConfig
mkdir temp_zip/Classes/CppWtDialWidget
mkdir temp_zip/Tools
mkdir temp_zip/Tools/ToolTestDial

echo "Copying files"
cp ../../Classes/CppAbout/*.* temp_zip/Classes/CppAbout
cp ../../Classes/CppDial/*.* temp_zip/Classes/CppDial
cp ../../Classes/CppDialWidget/*.* temp_zip/Classes/CppDialWidget
cp ../../Classes/CppQtAboutDialog/*.* temp_zip/Classes/CppQtAboutDialog
cp ../../Classes/CppQtDialWidget/*.* temp_zip/Classes/CppQtDialWidget
cp ../../Classes/CppRainbow/*.* temp_zip/Classes/CppRainbow
cp ../../Classes/CppRectangle/*.* temp_zip/Classes/CppRectangle
cp ../../Classes/CppTrace/*.* temp_zip/Classes/CppTrace
cp ../../Classes/CppWidget/*.* temp_zip/Classes/CppWidget
cp ../../Classes/CppWtAboutDialog/*.* temp_zip/Classes/CppWtAboutDialog
cp ../../Classes/CppWtAutoConfig/*.* temp_zip/Classes/CppWtAutoConfig
cp ../../Classes/CppWtDialWidget/*.* temp_zip/Classes/CppWtDialWidget
cp ../../Tools/ToolTestDial/*.* temp_zip/Tools/ToolTestDial

FILENAME=ToolTestDialSource_2_1
ZIP_FILENAME=$FILENAME".zip"

echo "Remove previous zip"
rm $ZIP_FILENAME

#echo "Compressing files"
cd temp_zip
zip -r $FILENAME Classes
#zip -r $FILENAME Libraries
#zip -r $FILENAME Projects
zip -r $FILENAME Tools
cd ..
cp "temp_zip/"$ZIP_FILENAME $ZIP_FILENAME

echo "Cleaning up"

#Classes
rm temp_zip/Classes/CppAbout/*.*
rm temp_zip/Classes/CppDial/*.*
rm temp_zip/Classes/CppDialWidget/*.*
rm temp_zip/Classes/CppQtAboutDialog/*.*
rm temp_zip/Classes/CppQtDialWidget/*.*
rm temp_zip/Classes/CppRainbow/*.*
rm temp_zip/Classes/CppRectangle/*.*
rm temp_zip/Classes/CppTrace/*.*
rm temp_zip/Classes/CppWidget/*.*
rm temp_zip/Classes/CppWtAboutDialog/*.*
rm temp_zip/Classes/CppWtAutoConfig/*.*
rm temp_zip/Classes/CppWtDialWidget/*.*
rmdir temp_zip/Classes/CppAbout
rmdir temp_zip/Classes/CppDial
rmdir temp_zip/Classes/CppDialWidget
rmdir temp_zip/Classes/CppQtAboutDialog
rmdir temp_zip/Classes/CppQtDialWidget
rmdir temp_zip/Classes/CppRainbow
rmdir temp_zip/Classes/CppRectangle
rmdir temp_zip/Classes/CppTrace
rmdir temp_zip/Classes/CppWidget
rmdir temp_zip/Classes/CppWtAboutDialog
rmdir temp_zip/Classes/CppWtAutoConfig
rmdir temp_zip/Classes/CppWtDialWidget
rmdir temp_zip/Classes

#Tools
rm temp_zip/Tools/ToolTestDial/*.*
rmdir temp_zip/Tools/ToolTestDial
rmdir temp_zip/Tools
rm temp_zip/*.*
rmdir temp_zip
echo "Done"
