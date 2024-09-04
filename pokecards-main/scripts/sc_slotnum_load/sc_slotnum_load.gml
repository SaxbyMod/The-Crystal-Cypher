function sc_slotnum_load() {
//————————————————————————————————————————————————————————————————————————————————————————————————————
savefile_slot=1;
//————————————————————————————————————————————————————————————————————————————————————————————————————
if file_exists(slot_file + file_format) {
	var savemap=ds_map_secure_load(slot_file + file_format);
	//
	if !is_undefined(ds_map_find_value(savemap,"savefile_slot")) { savefile_slot=ds_map_find_value(savemap,"savefile_slot"); }
	//
	ds_map_destroy(savemap);
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
}