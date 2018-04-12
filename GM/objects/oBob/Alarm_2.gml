/// @description Sortie de l'usine
bob_from_factory = path_start(pBob_factory, 3, 0, false);
while (image_xscale<2) {
	image_xscale += 0.0001;
	image_yscale += 0.0001;
	draw_self();
	show_debug_message("gtregfr");
}