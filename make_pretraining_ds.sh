NC4K=NC4K.zip
COD10K=COD10K-v3.zip
CAMO=CAMO-COCO-V.1.0.zip

check_file_exists() {
    if test -f "$1"
    then
        echo "$1 exists"
    else
        echo "$1 doesn't exist"
        exit 1
    fi
}

check_file_exists "$NC4K"
check_file_exists "$COD10K"
check_file_exists "$CAMO"

mkdir -p datasets/NC4K

echo "Extracting data"

unzip "-q" "$NC4K" "-d" "datasets/NC4K/"
unzip "-q" "$COD10K" "-d" "datasets/"
unzip "-q" "$CAMO" "-d" "datasets/"

echo "Extracting done"