/obj/mecha/combat
	force = 25
	punch_heat_cost = 4 // stronger mechs generate more heat from punching
	internals_req_access = list(ACCESS_MECH_SCIENCE, ACCESS_MECH_SECURITY)
	internal_damage_threshold = 50
	armor = list(MELEE = 30, BULLET = 30, LASER = 15, ENERGY = 0, BOMB = 20, BIO = 0, RAD = 0, FIRE = 100, ACID = 100)
	mouse_pointer = 'icons/mecha/mecha_mouse.dmi'
	destruction_sleep_duration = 40
	exit_delay = 40
	guns_allowed = TRUE
	melee_allowed = TRUE

/obj/mecha/combat/restore_equipment()
	mouse_pointer = 'icons/mecha/mecha_mouse.dmi'
	return ..()

/obj/mecha/combat/proc/max_ammo() //Max the ammo stored for Nuke Ops mechs, or anyone else that calls this
	for(var/obj/item/I in equipment)
		if(istype(I, /obj/item/mecha_parts/mecha_equipment/weapon/ballistic/))
			var/obj/item/mecha_parts/mecha_equipment/weapon/ballistic/gun = I
			gun.projectiles_cache = gun.projectiles_cache_max
