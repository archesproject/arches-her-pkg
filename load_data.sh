#!/bin/bash

eval HERPATH=$PWD
read -e -p "Enter the path to arches: " ARCHESPATH
eval ARCHESPATH=$ARCHESPATH
cd $ARCHESPATH

# Rebuild db
# arches4py manage.py packages -o setup_db

# Load DISCO and Liverpool specific Arches defaut thesauri and collections
# arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/arches_liverpool_concepts.xml -ow overwrite -st keep
# arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/DISCO_concepts.xml -ow overwrite -st keep
# arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/Lincoln_Additional_Schemes.xml -ow overwrite -st keep
# arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/Lincoln_dm_Type.xml -ow overwrite -st keep
# arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/Lincoln_HER_Designation_Type.xml -ow overwrite -st keep
# arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/Lincoln_HER_Period_Type.xml -ow overwrite -st keep
# arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/Lincoln_Monument_Types_v4.xml -ow overwrite -st keep
# arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/Lincoln_Recording_Event_Type.xml -ow overwrite -st keep
# arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/Lincoln_Source_Type.xml -ow overwrite -st keep
# arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/DISCO_collections.xml -ow overwrite -st keep

# Load Resource Models, Branches
arches4py manage.py packages -o import_graphs -s arches/db/graphs/branches
# arches4py manage.py packages -o import_graphs -s $HERPATH/graphs/branches/
# arches4py manage.py packages -o import_graphs -s $HERPATH/graphs/resource_models/

# Load Overlays
# arches4py manage.py packages -o add_mapbox_layer -j $HERPATH/mapbox_styles/Emerald/style.json -n "Emerald" -b
# arches4py manage.py packages -o add_mapbox_layer -j $HERPATH/mapbox_styles/Outdoors/style.json -n "Outdoors" -b
# arches4py manage.py packages -o add_mapbox_layer -j $HERPATH/mapbox_styles/Light/style.json -n "Light Streets" -b
# arches4py manage.py packages -o add_mapbox_layer -j $HERPATH/mapbox_styles/Dark/style.json -n "Dark Streets" -b
# arches4py manage.py packages -o add_mapbox_layer -j $HERPATH/mapbox_styles/Satellite-Streets/style.json -n Satellite_Streets -b
# arches4py manage.py packages -o add_mapbox_layer -j $HERPATH/mapbox_styles/3d_buildings/3d-buildings-mapbox.json -n "3d Buildings"
# arches4py manage.py packages -o add_tileserver_layer -m $ARCHESPATH/arches/tileserver/town_plan_3857.xml -n "Lincoln 1886-1887"

# Load Business Data
# arches4py manage.py packages -o import_business_data -s $HERPATH/business_data/HER\ Activities_master.csv -c $HERPATH/business_data/HER\ Activities.mapping -ow overwrite -bulk
# arches4py manage.py packages -o import_business_data -s $HERPATH/business_data/HER\ Information\ Assets.csv -c $HERPATH/business_data/HER\ Information\ Assets.mapping -ow overwrite -bulk
# arches4py manage.py packages -o import_business_data -s $HERPATH/business_data/Assets.csv -c $HERPATH/business_data/Assets.mapping -ow overwrite -bulk
# arches4py manage.py packages -o import_business_data -s $HERPATH/business_data/HER\ Actors_master.csv -c $HERPATH/business_data/HER\ Actors.mapping -ow overwrite -bulk
# arches4py manage.py packages -o import_business_data -s $HERPATH/data_export/DISCO\ Project_2017-04-14_18-24-49.json -ow overwrite
arches4py manage.py packages -o import_business_data -s $HERPATH/business_data/files/LHD_Assets_latest_20170905.csv -c $HERPATH/business_data/files/LHD_Assets_latest_20170905.mapping -ow overwrite -bulk
arches4py manage.py packages -o import_business_data -s $HERPATH/business_data/files/LHD_Assets_latest_20170905_geoms.csv -c $HERPATH/business_data/files/LHD_Assets_latest_20170905.mapping -ow append -bulk


# # Load Related Resources
# arches4py manage.py packages -o import_business_data_relations -s $HERPATH/data_export/DISCO\ Project_2017-04-14_18-24-49.relations
# arches4py manage.py packages -o import_business_data_relations -s $HERPATH/business_data/HER_master.relations