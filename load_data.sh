#!/bin/bash

eval HERPATH=$PWD
read -e -p "Enter the path to arches: " ARCHESPATH
eval ARCHESPATH=$ARCHESPATH
cd $ARCHESPATH

# Rebuild db
python manage.py packages -o setup_db

# Load Arches HER thesauri and collections
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"AMIE Named Locations.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"AMIE Personal Salutations.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"DCMI Vocabulary Type.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"FISH Archaeological Objects.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"FISH Archaeological Sciences.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"FISH Event Type.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"FISH Evidence.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"FISH Maritime Craft Type.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"FISH Material Types.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"GLHER LBst Qualifier.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"GLHER LBst Side.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"GLHER List Address Flag.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"HER Designation Type.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"Historic England Periods.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"Lincoln Additional Schemes.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"Lincoln DM Types.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"Lincoln HER Periods.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"Lincoln Recording Event Type.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"Lincoln Source Type.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Actor Type.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Administrative Area Types.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Administrative Areas.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Area Type.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Conditions.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Contact Type.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Description Type.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Dimension Type.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Entry Type.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS External Sources.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Landuse Classification.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Languages.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Management Activity Type.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Material Names.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Material Types.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Measurement Type.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Measurement Units.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Methods.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Name Type.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Owner.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS PRN Type.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Parentage.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Protection Grade.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Protection Type.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Repositories.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Resource Description.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Right Type.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Role Type.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Scripts.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Subjects.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Techniques.xml" -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $HERPATH/reference_data/concepts/"MIDAS Voyage Type.xml" -ow overwrite -st keep

python manage.py packages -o import_reference_data -s $HERPATH/reference_data/collections/"Arches HER Collections.xml" -ow overwrite -st keep

# Load Resource Models, Branches
python manage.py packages -o import_graphs -s $HERPATH/graphs/branches/
python manage.py packages -o import_graphs -s $HERPATH/graphs/resource_models/

# Load Overlays
# python manage.py packages -o add_mapbox_layer -j $HERPATH/mapbox_styles/Emerald/style.json -n "Emerald" -b
# python manage.py packages -o add_mapbox_layer -j $HERPATH/mapbox_styles/Outdoors/style.json -n "Outdoors" -b
# python manage.py packages -o add_mapbox_layer -j $HERPATH/mapbox_styles/Light/style.json -n "Light Streets" -b
# python manage.py packages -o add_mapbox_layer -j $HERPATH/mapbox_styles/Dark/style.json -n "Dark Streets" -b
# python manage.py packages -o add_mapbox_layer -j $HERPATH/mapbox_styles/Satellite-Streets/style.json -n Satellite_Streets -b
# python manage.py packages -o add_mapbox_layer -j $HERPATH/mapbox_styles/3d_buildings/3d-buildings-mapbox.json -n "3d Buildings"
# python manage.py packages -o add_tileserver_layer -m $ARCHESPATH/arches/tileserver/town_plan_3857.xml -n "Lincoln 1886-1887"

# Load Business Data
# python manage.py packages -o import_business_data -s $HERPATH/business_data/files/LHD_Heritage_Asset_Artefacts.csv -ow overwrite --bulk
# python manage.py packages -o import_business_data -s $HERPATH/business_data/files/LHD_Investigative_Activities.csv -ow overwrite --bulk
# python manage.py packages -o import_business_data -s $HERPATH/business_data/files/LHD_Heritage_Asset_Monument.csv -ow overwrite --bulk
# python manage.py packages -o import_business_data -s $HERPATH/business_data/files/LHD_Bibliographic_Sources.csv -ow overwrite --bulk


# # Load Related Resources
# python manage.py packages -o import_business_data_relations -s $HERPATH/data_export/DISCO\ Project_2017-04-14_18-24-49.relations
# python manage.py packages -o import_business_data_relations -s $HERPATH/business_data/HER_master.relations
