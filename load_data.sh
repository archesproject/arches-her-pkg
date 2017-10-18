#!/bin/bash

eval HERPATH=$PWD
read -e -p "Enter the path to arches: " ARCHESPATH
eval ARCHESPATH=$ARCHESPATH
cd $ARCHESPATH

# Rebuild db
arches4py manage.py packages -o setup_db

# Load Arches HER thesauri and collections
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"AMIE Named Locations.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"AMIE Personal Salutations.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"DCMI Vocabulary Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"FISH Archaeological Objects.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"FISH Archaeological Sciences.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"FISH Event Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"FISH Evidence.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"FISH Maritime Craft Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"FISH Material Types.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"GLHER LBst Qualifier.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"GLHER LBst Side.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"GLHER List Address Flag.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"HER Designation Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"Historic England Periods.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"Lincoln Additional Schemes.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"Lincoln DM Types.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"Lincoln HER Periods.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"Lincoln Recording Event Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"Lincoln Source Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Actor Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Administrative Area Types.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Administrative Areas.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Area Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Conditions.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Contact Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Description Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Dimension Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Entry Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS External Sources.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Landuse Classification.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Languages.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Management Activity Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Material Names.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Material Types.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Measurement Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Measurement Units.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Methods.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Name Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Owner.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS PRN Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Parentage.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Protection Grade.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Protection Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Repositories.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Resource Description.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Right Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Role Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Scripts.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Storage Area Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Subjects.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Techniques.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Voyage Type.xml" -ow overwrite -st keep


arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/collections/"Arches HER Collections.xml" -ow overwrite -st keep

# Load Resource Models, Branches
arches4py manage.py packages -o import_graphs -s $HERPATH/graphs/branches/
arches4py manage.py packages -o import_graphs -s $HERPATH/graphs/resource_models/

# Unzip Overlays
# unzip Lincoln_1886_1889.zip
# unzip Lincoln_1887_1890.zip
# unzip Lincoln_1905_1907.zip
# unzip Lincoln_1906_1908.zip
# unzip Lincoln_1920.zip
# unzip Lincoln_1921_1933.zip
# unzip Lincoln_1932_1938.zip
# unzip Lincoln_1946_1950.zip
# unzip Lincoln_VectorMap_District_Colour.zip
# unzip Lincoln_VectorMap_Local_Colour.zip

# # Load Overlays
# arches4py manage.py packages -o add_tileserver_layer -m $HERPATH/map_layers/tile_server/overlays/Lincoln_1886_1889/Lincoln_1886_1889.xml -n "Lincoln 1886 to 1889"
# arches4py manage.py packages -o add_tileserver_layer -m $HERPATH/map_layers/tile_server/overlays/Lincoln_1887_1890/Lincoln_1887_1890.xml -n "Lincoln 1887 to 1890"
# arches4py manage.py packages -o add_tileserver_layer -m $HERPATH/map_layers/tile_server/overlays/Lincoln_1905_1907/Lincoln_1905_1907.xml -n "Lincoln 1905 to 1907"
# arches4py manage.py packages -o add_tileserver_layer -m $HERPATH/map_layers/tile_server/overlays/Lincoln_1906_1908/Lincoln_1906_1908.xml -n "Lincoln 1906 to 1908"
# arches4py manage.py packages -o add_tileserver_layer -m $HERPATH/map_layers/tile_server/overlays/Lincoln_1920/Lincoln_1920.xml -n "Lincoln 1920"
# arches4py manage.py packages -o add_tileserver_layer -m $HERPATH/map_layers/tile_server/overlays/Lincoln_1921_1933/Lincoln_1921_1933.xml -n "Lincoln 1921 to 1933"
# arches4py manage.py packages -o add_tileserver_layer -m $HERPATH/map_layers/tile_server/overlays/Lincoln_1932_1938/Lincoln_1932_1938.xml -n "Lincoln 1932 to 1938"
# arches4py manage.py packages -o add_tileserver_layer -m $HERPATH/map_layers/tile_server/overlays/Lincoln_1946_1950/Lincoln_1946_1950.xml -n "Lincoln 1946 to 1950"
# arches4py manage.py packages -o add_tileserver_layer -m $HERPATH/map_layers/tile_server/overlays/Lincoln_VectorMap_District_Colour/Lincoln_VectorMap_District_Colour.xml -n "Lincoln VectorMap District Colour"
# arches4py manage.py packages -o add_tileserver_layer -m $HERPATH/map_layers/tile_server/overlays/Lincoln_VectorMap_Local_Colour/Lincoln_VectorMap_Local_Colour.xml -n "Lincoln VectorMap Local Colour"

# Load Business Data
arches4py manage.py packages -o import_business_data -s $HERPATH/business_data/files/LHD_Heritage_Asset_Artefacts.csv -ow overwrite --bulk
arches4py manage.py packages -o import_business_data -s $HERPATH/business_data/files/LHD_Investigative_Activities.csv -ow overwrite --bulk
arches4py manage.py packages -o import_business_data -s $HERPATH/business_data/files/LHD_Heritage_Asset_Monument.csv -ow overwrite --bulk
arches4py manage.py packages -o import_business_data -s $HERPATH/business_data/files/LHD_Bibliographic_Sources.csv -ow overwrite --bulk
arches4py manage.py packages -o import_business_data -s $HERPATH/business_data/files/LHD_Organizations.csv -ow overwrite --bulk
arches4py manage.py packages -o import_business_data -s $HERPATH/business_data/files/LHD_Actors.csv -ow overwrite --bulk


# # Load Related Resources
# arches4py manage.py packages -o import_business_data_relations -s $HERPATH/data_export/DISCO\ Project_2017-04-14_18-24-49.relations
# arches4py manage.py packages -o import_business_data_relations -s $HERPATH/business_data/HER_master.relations
