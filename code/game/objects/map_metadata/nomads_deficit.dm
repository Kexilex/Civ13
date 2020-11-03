
/obj/map_metadata/nomads_deficit
	ID = MAP_NOMADS_DEFICIT
	title = "Nomads (Deficit)"
	lobby_icon_state = "civ13"
	no_winner ="The round is proceeding normally."
	caribbean_blocking_area_types = list(/area/caribbean/no_mans_land/invisible_wall/)
	respawn_delay = 6000 // 10 minutes!
	has_hunger = TRUE

	faction_organization = list(
		CIVILIAN,)

	roundend_condition_sides = list(
		list(CIVILIAN) = /area/caribbean/british
		)
	age = "5000 B.C."
	civilizations = TRUE
	var/tribes_nr = 1
	faction_distribution_coeffs = list(CIVILIAN = 1)
	battle_name = "the civilizations"
	mission_start_message = "<big>After ages as hunter-gatherers, people are starting to form groups and settling down. Will they be able to work together?</big><br><b>Wiki Guide: https://civ13.github.io/civ13-wiki/Civilizations_and_Nomads</b>"
	ambience = list('sound/ambience/jungle1.ogg')
	faction1 = CIVILIAN
	availablefactions = list("Nomad")
	songs = list(
		"Words Through the Sky:1" = 'sound/music/words_through_the_sky.ogg',)
	research_active = TRUE
	nomads = TRUE
	gamemode = "Classic (Stone Age Start)"
/obj/map_metadata/nomads_deficit/New()
	..()
	spawn(18000)
		seasons()

/obj/map_metadata/nomads_deficit/faction2_can_cross_blocks()
	return (processes.ticker.playtime_elapsed >= 0 || admin_ended_all_grace_periods)

/obj/map_metadata/nomads_deficit/faction1_can_cross_blocks()
	return (processes.ticker.playtime_elapsed >= 0 || admin_ended_all_grace_periods)

/obj/map_metadata/nomads_deficit/cross_message(faction)
	return ""

/obj/map_metadata/nomads_deficit/job_enabled_specialcheck(var/datum/job/J)
	if (J.is_nomad == TRUE)
		. = TRUE
	else
		. = FALSE
