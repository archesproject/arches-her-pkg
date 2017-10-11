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
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"FISH Archaeological Objects Thesaurus.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"FISH Archaeological Sciences.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"FISH Event Types.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"FISH Evidence.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"FISH Maritime Craft Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"FISH Material Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"GLHER_LBSt_Qualifier.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"GLHER_LBSt_Side.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"GLHER_List_Address_Flag.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"HER Designation Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"Historic England Periods.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"Lincoln Additional Schemes.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"Lincoln DM Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"Lincoln HER Periods.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"Lincoln Recording Event Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"Lincoln Source Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Actor Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Administrative Area Types.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Administrative Areas.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Area Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Components.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Conditions.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Contact Types.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Description Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Dimension Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Entry Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS External Source.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Land Use Classification.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Languages.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Management Activity Types.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Maritime Craft Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Material Names.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Material Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Measurement Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Measurement Units.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Methods.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Name Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Named Locations.xml" -ow overwrite -st keep
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
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Techniques.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Voyage Type.xml" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"seneschal_eh_components.rdf" -ow overwrite -st keep
arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"seneschal_eh_evidence.rdf" -ow overwrite -st keep

arches4py manage.py packages -o import_reference_data -s $HERPATH/reference_data/collections/"Arches HER Collections.xml" -ow overwrite -st keep

# Load Resource Models, Branches
# arches4py manage.py packages -o import_graphs -s arches/db/graphs/branches
arches4py manage.py packages -o import_graphs -s $HERPATH/graphs/branches/
arches4py manage.py packages -o import_graphs -s $HERPATH/graphs/resource_models/

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
# arches4py manage.py packages -o import_business_data -s $HERPATH/business_data/files/LHD_Assets_latest_20170905.csv -c $HERPATH/business_data/files/LHD_Assets_latest_20170905.mapping -ow overwrite -bulk
# arches4py manage.py packages -o import_business_data -s $HERPATH/business_data/files/LHD_Assets_latest_20170905_geoms.csv -c $HERPATH/business_data/files/LHD_Assets_latest_20170905.mapping -ow append -bulk


# # Load Related Resources
# arches4py manage.py packages -o import_business_data_relations -s $HERPATH/data_export/DISCO\ Project_2017-04-14_18-24-49.relations
# arches4py manage.py packages -o import_business_data_relations -s $HERPATH/business_data/HER_master.relations
