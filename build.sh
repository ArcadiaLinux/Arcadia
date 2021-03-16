WORK_DIR='/run/media/nishal/095a8bce-d904-4431-b12b-ebf1c9380d25/home/nishal/archiso_wd'
OUTPUT_DIR='/run/media/nishal/095a8bce-d904-4431-b12b-ebf1c9380d25/home/nishal/arcadia-builds'
PROFILE_DIR='/home/nishal/Documents/arcadia'

cp "$PROFILE_DIR/pacman.conf" "$PROFILE_DIR/airootfs/etc"

sudo rm -rf $WORK_DIR*

sudo mkarchiso -v -w $WORK_DIR -o $OUTPUT_DIR $PROFILE_DIR
