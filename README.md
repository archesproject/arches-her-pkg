# Arches_HER

## Loading instructions
To rebuild your current database and load this package run the following command using the `manage.py` file in your project:

```
python manage.py packages -o load_package -s https://github.com/archesproject/Arches_HER/archive/master.zip -db true
```

If you do not want to rebuild your database use the following:

```
python manage.py packages -o load_package -s https://github.com/archesproject/Arches_HER/archive/master.zip -db true
```

For more information on loading packages, visit: https://arches4.readthedocs.io/en/latest/create-package/
