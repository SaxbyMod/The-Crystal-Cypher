function sc_slotnum_save() {
//————————————————————————————————————————————————————————————————————————————————————————————————————
var savemap=ds_map_create();
//
ds_map_add(savemap,"savefile_slot",savefile_slot);
//
ds_map_secure_save(savemap,slot_file + file_format);
ds_map_destroy(savemap);
//————————————————————————————————————————————————————————————————————————————————————————————————————
}