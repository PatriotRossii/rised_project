-- "addons\\billys_gmodadminsuite_logging_2.4\\lua\\gmodadminsuite\\modules\\logging\\lang\\spanish.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
return {
	Name = "Spanish",
	Flag = "flags16/es.png",
	Phrases = function() return {

		module_name = "Billy's Logs",

		--####################### UI PHRASES #######################--

		no_data                     = "Sin registros",
		add_to_evidence_box         = "Agregar a la Caja de Pruebas",
		livelogs_show_logs_for      = "Mostrar Logs Por",
		background_color            = "Color de Fondo",
		health_abbrieviated         = "%d HP",
		livelogs                    = "Logs en Vivo",
		exit_deep_storage           = "Salir del los Registros Profundos",
		log_formatting              = "Formato de log",
		strings                     = "Palabras Clave",
		when                        = "Cuando",
		copy_log                    = "Copiar log",
		evidence_box                = "Caja de Pruebas",
		livelogs_position_x         = "Posición X (pixeles)",
		width                       = "Anchura",
		color                       = "Color",
		help                        = "Ayuda",
		apply_filter                = "Aplicar Filtro",
		live_log_antispam           = "< live log descartado por antispam >",
		settings                    = "Ajustes",
		loading_ellipsis            = "Cargando...",
		livelogs_enabled            = "Habilitar Logs en Vivo",
		armor_abbrieviated          = "%d ARM",
		deep_storage                = "Registros Profundos",
		all_logs                    = "Todos los Logs",
		logs                        = "Logs",
		padding                     = "Relleno (pixeles)",
		livelogs_position_y         = "Posición Y (pixeles)",
		livelogs_rows_help          = "¿Cuál es la cantidad máxima de logs que se deben mostrar?",
		livelogs_rows               = "Filas (Cantidad de log)",
		livelogs_color_help         = "¿Deben mostrarse los registros en color?",
		export_to_clipboard         = "Exportar al portapapeles",
		players                     = "Jugadores",
		script_page                 = "Pagina del Script",
		wiki                        = "Wiki",
		module                      = "Módulo",
		modules                     = "Módulos",
		localization                = "Localización",
		view_deep_storage           = "Ver Registros Profundos",
		copied                      = "Copiado!",
		operator                    = "Operador",
		log                         = "Log",
		reset_to_defaults           = "Restablecer los valores predeterminados",
		livelogs_show_logs_for_help = "¿Por cuántos segundos se deben mostrar los registros?\nEstablecer en 0 para que sea para siempre.",
		advanced_search             = "Búsqueda Avanzada",
		quick_search                = "Búsqueda Rápida",
		quick_search_ellipsis       = "Búsqueda Rápida...",
		entities                    = "Entidades",
		tutorial                    = "Tutorial",
		clear_filters               = "Borrar Filtros",
		clear_filter                = "Borrar Filtro",
		manual_steamid_ellipsis     = "SteamID Manual...",
		no_results_found            = "No se han encontrado resultados",
		add_player                  = "+ Agregar Jugador",
		add_module                  = "+ Agregar Módulo",
		add_entity                  = "+ Agregar Entidad",
		add_string                  = "+ Agregar Palabra Clave",
		modules_search_tooltip      = "¿Qué módulo(s) quieres incluir? (dejar en blanco para cualquier módulo)",
		players_search_tooltip      = "¿Qué jugador(es) estás buscando? (dejar en blanco para cualquier jugador)",
		entities_search_tooltip     = "¿Qué entidad(es) estás buscando? (armas, entidades, vehículos, props, clases, etc...)",
		strings_search_tooltip      = "¿Hay algún texto específico que estás buscando?",
		class_name_ellipsis         = "Nombre de la clase...",
		add_string_popup_title      = "Agregar Palabra Clave",
		add_string_popup_text       = "Ingresa el texto que estás tratando de encontrar.",
		text_ellipsis               = "Texto...",
		click_to_focus              = "Haz click para enfocar",
		right_click_to_focus        = "Haz click derecho para enfocar",
		highlight_color             = "Color de resaltado",
		weapon_color                = "Color de arma",
		money_color                 = "Color de dinero",
		vehicle_color               = "Color vehiculo",
		entity_color                = "Color de entidad",
		health_color                = "Color de HP",
		armor_color                 = "Color de armadura",
		usergroup_color             = "Color de rango",
		unavailable_color           = "No disponible/Color Desconocido",
		learn_more                  = "Aprender más",
		player_combats              = "Combates de Jugadores",
		took_damage                 = "[recibió %d de daño]",
		open_pvp_event_report       = "Reporte de evento de PVP",
		remove                      = "Borrar",
		greedy                      = "Extenso",
		greedy_tip                  = "Si tu búsqueda es extensa, intentará hacer coincidir tantos registros como sea posible. Si no lo es, intentará hacer coincidir la menor cantidad posible de registros.",
		log_colouring               = "Colores de Logs",
		done_exclamation            = "Hecho!",
		module_settings             = "Ajustes de Módulo",
		storage_settings            = "Ajustes de Almacenamiento",
		third_party_addons          = "Addons de terceros",
		pvp_settings                = "Ajustes de registro PvP",
		live_logs_settings          = "Ajustes de Logs en Vivo",
		logging_settings            = "Ajustes de logs",
		settings                    = "Ajustes",
		enabled_modules             = "Habilitar Módulos",
		permissions                 = "Permisos",
		gamemode_modules            = "Módulos de Gamemodes",
		saved_exclamation           = "Guardado!",
		save_settings               = "Guardar Ajustes",
		weapon_class                = "Clase de Arma",
		enter_weapon_class          = "Introduce el nombre de la clase del arma.\nNo lo se? Abre tu menú de spawn, haz clic derecho en un arma y haz click \"Copiar al portapapeles\"",
		save                        = "Guardar",
		add_new                     = "+ Agregar nuevo",
		enabled                     = "Habilitado",
		website                     = "Sitio Web",
		name                        = "Nombre",
		usergroups                  = "Rangos",
		everyone                    = "Todos",
		all_modules                 = "Todos los módulos",
		all_teams                   = "Todos los Jobs",
		add_usergroup               = "Agregar Rango",
		cl_sv_tooltip               = [[cl representa el tiempo necesario para que tu ordenador solicite registros, los reciba, los procese y los muestre
		
		sv representa el tiempo necesario para que el servidor recupere los registros de la memoria/la base de datos, los procese y luego se los envíe.

		Los servidores que usan MySQL verán un valor sv más alto debido a la latencia entre el servidor MySQL y Garr's Mod]],
		deep_storage_help           = [[Registros Profundos es una función de bLogs que mejora el rendimiento al almacenar registros de sesiones anteriores del servidor por separado de las sesiones actuales.

		Después de hacer clic en "Ver Registros Profundos", solo verás los registros de las sesiones anteriores del servidor.
		Puede ver los registros de la sesión actual haciendo click nuevamente en el botón de abajo o volviendo a abrir el menú.

		NOTA:Los registros de daños no se incluyen en el almacenamiento profundo y se eliminan en cada reinicio para ahorrar espacio en el disco]],

		damage = "Daño",

		class_type_other = "Otro",
		class_type_player = "Jugador",
		class_type_team = "Team",
		class_type_weapon = "Arma",
		class_type_vehicle = "Vehiculo",
		class_type_damage = "Tipo de Daño",
		class_type_usergroup = "Rango",
		class_type_prop = "Prop",
		class_type_ragdoll = "Ragdoll",
		class_type_country = "País",
		class_type_ammo = "Munición",
		class_type_role = "Rol",
		class_type_entity = "Entidad",
		class_selector = "Selector de Clase",
		custom_class = "Clase Personalizada",
		class_type = "Tipo de Clase",
		value = "Valor",
		search = "Búscar",
		check_all = "Marcar Todo",
		uncheck_all = "Desmaecae Todo",
		general = "General",
		class_search_title = "Búsqueda de Clase",
		class_search_text = "Ingresa el nombre o parte de un nombre de la clase que estás buscando (no se distinguen mayúsculas y minúsculas)",
		view_logs = "Ver Logs",
		open_menu = "Open Menu",
		licensed_to = "Licenciado para %s",

		pvp_event_report = "Reporte de Evento PvP",
		victim = "Victima",
		instigator = "Instigador",
		victim_tag_tip = "Esta es la persona contra la que el instigador comenzó el combate.",
		instigator_tag_tip = "Esta es la persona que comenzó el combate.",
		victim_abbr = "V",
		instigator_abbr = "I",
		time = "Tiempo",
		linked_events = "Eventos Relacionados",

		deleted_team = "(TEAM BORRADO)",

		unknown = "Desconocido",
		cancel = "Cancelar",

		deep_storage_advanced_search_warning = "ADVERTENCIA: La búsqueda avanzada en realidad busca en el Registros Profundos internamente por razones de rendimiento, lo que significa que la Búsqueda avanzada no encontrará los registros creados recientemente durante un corto período de tiempo.",

		--####################### SETTINGS #######################--

		Player_RecordTeam = "Mostrar team del jugador en los logs",
		Player_RecordUsergroup = "Mostrar el rango del jugador en los logs",
		Player_RecordHealth = "Mostra vida del jugador en los logs",
		Player_RecordArmor = "Mostrar armadura del jugador en los logs",
		Player_RecordWeapon = "Mostrar arma del jugador en los logs",
		Player_RecordWeapon_DoNotRecord = "Filtro de arma del jugador",
		Player_RecordWeapon_DoNotRecord_help = "Si deseas mostrar las armas de los jugadores en los registros, usa esta opción para filtrar las armas que no quieres ver (como la physgun, la toolgun, etc.)",

		OverrideMoneyFormat = "Anular formato de dinero predeterminado",
		OverrideMoneyFormat_help = "Cuando esto está desactivado, se utilizará el formato de dinero del modo de juego.\nCuando esto está activado, puedes usar la opción a continuación para poner tu propio formato de dinero.",
		MoneyFormat = "Formato de Dinero",
		MoneyFormat_help = "Introduce cómo quieres que aparezca el dinero e inserta \"%s\" (sin las comillas)donde quieres que aparezca la cantidad de dinero.",

		DeepStorageEnabled = "Registros Profundos Habilitados",
		DeepStorageEnabled_help = "Deshabilitar el Registros Profundos puede mejorar significativamente el rendimiento en servidores que no usan MySQL.",

		DeepStorageCommitPeriod = "Registros Profundos período de compromiso",
		DeepStorageCommitPeriod_help = "¿Con qué frecuencia (en segundos) se deben confirmar los registros profundos en la base de datos?",

		DeepStorageTooOld = "Edad máxima de los registros profundos",
		DeepStorageTooOld_help = "¿Cuántos días puede estar un registro profundo antes de que se elimine? (ahorra espacio en el disco)\nEstablézcalo en 0 para no eliminar nunca los registros profundos.",

		LiveLogsEnabled = "Logs en Vivo Habilitado",
		LiveLogsEnabled_help = "Los registros en vivo pueden ser un impacto de rendimiento para servidores grandes; Puedes desactivar la función completamente aquí.",
		LiveLogsIn10Seconds = "Max registros en vivo en 10 segundos",
		LiveLogsIn10Seconds_help = "¿Cuántos registros en vivo se pueden enviar antes de que se bloqueen los registros adicionales para el antispam?",
		NotifyLiveLogsAntispam = "Notificar antispam",
		NotifyLiveLogsAntispam_help = "¿Se debe notificar a los usuarios que se ha descartado un registro activo por el antispam?",

		TimeBetweenPvPEvents = "Tiempo entre eventos PvP",
		TimeBetweenPvPEvents_help = "Cuando los jugadores comienzan el combate, se crea un \"Evento PVP\", cuando no se ha producido ningún combate adicional en una cierta cantidad de segundos, el evento PvP se trata como finalizado y comprometido con los registros. ¿Cuántos segundos deben esperar los bLogs antes de hacer esto?",
		NonPvPWeapons = "Filtro de armas PvP",
		NonPvPWeapons_help = "¿Qué armas no deben ser tratadas como armas PvP?",

		server_restart_required = "NOTA: Los cambios en estos ajustes se aplicarán después de reiniciar el servidor.",

		gamemode_modules_tip = [[bLogs soporta una gran cantidad de modos de juego.
        Sin embargo, a veces bLogs puede tener problemas para detectar si está ejecutando un determinado modo de juego.
        En esta pantalla, puedes forzar a bLogs a detectar que estás ejecutando un determinado modo de juego.

		Desmarcado = Comportamiento por defecto
		Marcado = Forzado
		Tachado = No Forzado

		Ten en cuenta que algunos modos de juego RETIVAN del Sandbox, esto significa que usan el menú de spawn del Sandbox, la toolgun, etc.
		Para los modos de juego como DarkRP que se derivan de Sandbox, se recomienda dejar Sandbox en su detección predeterminada.]],

		third_party_addons_tip = [[bLogs admite una gran cantidad de addons de terceros.
		Sin embargo, a veces, los bLogs pueden tener problemas para detectar si tienes un complemento de terceros instalado.
        En esta pantalla, puede forzar a bLogs a pensar que tiene ciertos addons de terceros instalados.

		Desmarcado = Comportamiento por defecto
		Marcado = Forzado
		Tachado = No Forzado]],

		edit_discord_webhooks = "Editar Discord Webhooks",
		webhook_name = "Nombre del webhook",
		webhook_name_tip = "Ingrese el nombre del webhook.\nEsto es solo un identificador para el webhook, ingresará la URL en la siguiente pantalla.",
		webhook = "Webhook",
		webhook_url = "Webhook URL",
		webhook_url_tip = "Copia la URL de tu webhook de Discord y pégala aquí.",
		copy_webhook = "Copiar Webhook",

		can_access_module = "Puede acceder al módulo",
		can_access_all_modules = "Puede acceder a TODOS los módulos",
		all_usergroups = "Todos los rangos",
		all_jobs_in_category = "Todos los jobs en categoría",
		all_teams_in_category = "Todos los teams en categoria",
		teams = "Teams",
		permissions_tip = "Desmarcado = Hereda de \"%s\"\nMarcado = Permitido usar módulo\nTachado = Prohibido usar módulo",
		all_modules_tip = "Los permisos se heredan de esta sección a menos que se invaliden.",

		wipes_and_resets = "Wipes & Reseteos", -- wipes as in data wipes
		disable_buttons = "Deshabilitar botones",
		enable_buttons = "Habilitar botones",
		wipe_deepstorage = "Borrar Registros Profundos",
		wipe_session = "Borrar Logs de la sesión",
		wipe_all_logs = "Borrar todos los Logs",
		reset_config = "Resetear Ajustes.",

		vehicle_driver = "Conductor:",
		data = "Data",
		weapons = "Armas",
		props = "Props",
		ragdolls = "Ragdolls",
		money = "Dinero",
		countries = "Países",
		ammo = "Munición",
		roles = "Roles",
		vehicles = "Vehiculos",

		flag_ongoing = "Evento en curso",
		flag_finished = "Evento Terminado",
		flag_superadmin = "Implica Superadmin",
		flag_admin = "Implica Staff",
		flag_friendly_fire = "Fuego amigo",
		flag_law_enforcement = "Implica cumplimiento de la ley",
		flag_instigator_death = "El instigador murió",
		flag_victim_death = "La víctima murió",
		flag_vehicle = "Implica vehículo(s)",
		flag_world = "Involucra el mapa",
		flag_props = "Involucra props",
		flag_team_switched = "Ocurrió cambio de team",
		flag_disconnect = "Jugador desconectado durante el combate",
		flag_linked = "Vinculado a otros eventos PvP",

		event_start = "Inicio de evento",
		event_end = "Final del evento",

		dead_tag = "[MUERTO]",

		DmgTooltip_Victim = "% del daño total del evento PVP fue la víctima responsable",
		DmgTooltip_Instigator = "% del daño total del evento PVP fue el instigador responsable",
		DmgTooltip_Other = "% del daño total del evento PVP fue por otra causa",

		--####################### LOG PHRASES #######################--
		Logs = {
			round_start     = "INICIO DE RONDA",
			round_preparing = "PREPARANDO RONDA",
			round_end       = "RONDA TERMINADA",

			connected                                      = "{1} conectado",
			connected_from_country                         = "{1} conectado desede {2}",
			finished_connecting                            = "{1} se terminó de conectar",
			respawned                                      = "{1} respawneo",
			disconnected                                   = "{1} desconectado ({2})",
			picked_up_weapon                               = "{1} cogió un arma {2}",
			picked_up_item                                 = "{1} cogió un item {2}",
			prop_killed_self                               = "{1} se suicidó con su prop {2}",
			prop_killed_other                              = "{1} fue asesinado por prop creado por {2} ({3})",
			prop_killed_world                              = "{1} fue asesinado por un prop del mundo {2}",
			prop_damaged_self                              = "{1} recibió un {2} de daño con su prop {3}",
			prop_damaged_other                             = "{1} fue dañado por prop creado por {2} quitandole {3} de daño ({4})",
			prop_damaged_world                             = "{1} fue dañado con un prop del mundo {2} recibió un {3} de daño",
			toolgun_used_their_ent                         = "{1} usó la tool {2} en su {3}",
			toolgun_used_other_ent                         = "{1} usó la tool {2} en {3} creado por {4}",
			toolgun_used_world_ent                         = "{1} usó la tool {2} en {3}",
			spawned_effect                                 = "{1} spawneó un efecto {2}",
			spawned_npc                                    = "{1} spawneó un NPC {2}",
			spawned_prop                                   = "{1} spawneó un prop {2}",
			spawned_ragdoll                                = "{1} spawneó un ragdoll {2}",
			spawned_sent                                   = "{1} spawneó una entidad {2}",
			spawned_swep                                   = "{1} spawneó un arma {2}",
			spawned_vehicle                                = "{1} spawneó vehiculo {2}",
			steam_name_changed                             = "{1} cambió su nombre de Steam de {2} a {3}",
			weapon_switched                                = "{1} cambió del arma {2} a {3}",
 
			murder_loot                                    = "{1} recogió loot",
 
			cinema_video_queued                            = "[{1}] {2} en cola [{3}] \"{4}\" {5}",
 
			ttt_win_traitor                                = "Ganan Traidores!",
			ttt_win_innocent                               = "Ganan Inocentes!",
			ttt_win_timelimit                              = "Ganan Inocentes - límite de tiempo alcanzado!",
			ttt_bought                                     = "{1} compró {2}",
			ttt_karma                                      = "{1} fue KICKEADO por bajo karma",
			ttt_foundbody                                  = "{1} encontró el cuerpo de {2}",
			ttt_founddna                                   = "{1} encontró el ADN de {2} en su {3}",
			ttt_founddna_corpse                            = "{1} encontró el ADN de {2} en su cadáver",
 
			darkrp_agenda_updated                          = "{1} actualizó la agenda de {2} a: {3}",
			darkrp_agenda_removed                          = "{1} borro {2}",
			darkrp_arrest                                  = "{1} arrestó {2}",
			darkrp_unarrest                                = "{1} salió {2}",
			darkrp_batteringram_owned_success              = "{1} abrió con el battering ram el {2} de {3}",
			darkrp_batteringram_owned_door_success         = "{1} abrió con el battering ram la puerta de {2}",
			darkrp_batteringram_success                    = "{1} abrió con el battering ram algo desconocido, {2}",
			darkrp_batteringram_door_success               = "{1} abrió con el battering ram una puerta desconocida",
			darkrp_batteringram_owned_failed               = "{1} falló con el battering ram en {2} de {3}",
			darkrp_batteringram_owned_door_failed          = "{1} falló con el battering ram en la puerta de {2}",
			darkrp_batteringram_failed                     = "{1} falló con el battering ram algo desconocido, {2}",
			darkrp_batteringram_door_failed                = "{1} falló con el battering ram una puerta desconocida",
			darkrp_cheque_dropped                          = "{1} solltó un cheque de {2} para {3}",
			darkrp_cheque_picked_up                        = "{1} cobró un cheque de {2} de {3}",
			darkrp_cheque_tore_up                          = "{1} rompió un cheque de {2} hecho para {3}",
			darkrp_demoted                                 = "{1} demoteado {2} por {3}",
			darkrp_demoted_afk                             = "{1} fue demoteado por estar AFK",
			darkrp_door_sold                               = "{1} vendió una puerta",
			darkrp_door_bought                             = "{1} compró una puerta",
			darkrp_money_dropped                           = "{1} soltó {2}",
			darkrp_money_picked_up                         = "{1} cogió {2}",
			darkrp_money_picked_up_owned                   = "{1} cogió {2} soltado por {3}",
			darkrp_hit_accepted                            = "{1} acepto un hit para {2} requerido por {3}",
			darkrp_hit_completed                           = "{1} completó un hit hacia {2} que fue requerido por {3}",
			darkrp_hit_failed                              = "{1} falló el hit para {2} porque {3}",
			darkrp_hit_requested                           = "{1} requirió un hit para {2} mediante {3} por {4}",
			darkrp_job_changed                             = "{1} se cambió de {2} a {3}",
			darkrp_law_added                               = "{1} ley añadida: {2}",
			darkrp_law_removed                             = "{1} ley borrada: {2}",
			darkrp_purchase                                = "{1} compró {2} por {3}",
			darkrp_purchase_ammo                           = "{1} compró munición de {2} por {3}",
			darkrp_purchase_shipment                       = "{1} compró un cargamento de x{2} {3} por {4}",
			darkrp_purchase_food                           = "{1} compró comida: {2} por {3}",
			darkrp_weapons_checked                         = "{1} chequeó las armas de {2}",
			darkrp_weapons_confiscated                     = "{1} confiscó las armas de {2}",
			darkrp_weapons_returned                        = "{1} devolvió las armas confiscadas de {2}",
			darkrp_filed_warant                            = "{1} presentó un warrant para {2} por: {3}",
			darkrp_warrant_cancelled                       = "{1} canceló el warrant de {2}",
			darkrp_set_wanted                              = "{1} pusó a {2} un wanted por {3}",
			darkrp_cancelled_wanted                        = "{1} canceló el wanted de {2}",
			darkrp_auto_cancelled_wanted                   = "{1} perdió el wanted que tenia",
			darkrp_starved                                 = "{1} murió de hambre",
			darkrp_pocket_added                            = "{1} guardó {2} en su pocket",
			darkrp_pocket_dropped                          = "{1} soltó {2} de su pocket",
			darkrp_rpname_change                           = "{1} se cambió el Nombre de RP de {2} a {3}",
			darkrp_started_lockpick_owned_entity           = "{1} empezó a usar la lockpick en {2} de {3}",
			darkrp_started_lockpick_unowned_entity         = "{1} empezó a usar la lockpick en un {2} desconocido",
			darkrp_started_lockpick_owned_door             = "{1} empezó a usar la lockpick en una puerta de {2}",
			darkrp_started_lockpick_unowned_door           = "{1} empezó a usar la lockpick en una puerta desconocida",
			darkrp_started_lockpick_own_entity             = "{1} empezó a usar la lockpick en su {2}",
			darkrp_started_lockpick_own_door               = "{1} empezó a usar la lockpick en una de sus puertas",
			darkrp_successfully_lockpicked_owned_entity    = "{1} lockpickeo con éxito un {2} de {3}",
			darkrp_successfully_lockpicked_unowned_entity  = "{1} lockpickeo con éxito un {2} desconocido",
			darkrp_successfully_lockpicked_owned_door      = "{1} lockpickeo con éxito una puerta de {2}",
			darkrp_successfully_lockpicked_unowned_door    = "{1} lockpickeo con éxito una puerta desconocida",
			darkrp_successfully_lockpicked_own_entity      = "{1} lockpickeo con éxito su {2}",
			darkrp_successfully_lockpicked_own_door        = "{1} lockpickeo con éxito una de sus puertas",
			darkrp_failed_lockpick_owned_entity            = "{1} no consiguió lockpickear el {2} de {3}",
			darkrp_failed_lockpick_unowned_entity          = "{1} no consiguió lockpickear el {2} desconocido",
			darkrp_failed_lockpick_owned_door              = "{1} no consiguió lockpickear la puerta de {2}",
			darkrp_failed_lockpick_unowned_door            = "{1} no consiguió lockpickear una puerta desconocida",
			darkrp_failed_lockpick_own_entity              = "{1} no consiguió lockpickear su {2}",
			darkrp_failed_lockpick_own_door                = "{1} no consiguió lockpickear una de sus pertas",
			darkrp_changed_job                             = "{1} se cambio de job de {2} a {3}",
			darkrp_added_law                               = "{1} añadió la ley: {2}",
			darkrp_removed_law                             = "{1} borró la ley: {2}",
			darkrp_hit_accepted                            = "{1} aceptó un hit para {2} requerido por {3}",
			darkrp_hit_completed                           = "{1} completoó un hit para {2} requerido por {3}",
			darkrp_hit_failed                              = "{1} falló en un hit para {2} requerido por {3}",
			darkrp_hit_requested                           = "{1} solicitó un hit para {2} mediante {3} por {4}",
			darkrp_sold_door                               = "{1} vendió una puerta",
			darkrp_bought_door                             = "{1} compró una puerta",
			darkrp_dropped_money                           = "{1} soltó {2}",
			darkrp_picked_up_money                         = "{1} cogió {2}",
			darkrp_picked_up_money_dropped_by              = "{1} cogió {2} que soltó {3}",
			darkrp_demoted                                 = "{1} fue demoteado de {2} por {3}",
			darkrp_afk_demoted                             = "{1} fue demoteado por estar AFK",
			darkrp_lottery_started                         = "{1} inició una loteria con el precio de: {2}",
			darkrp_lottery_ended                           = "{1} ganó {2} de la loteria!",
 
			pvp_instigator_killed_noweapon                 = "{1} {2} terminó el combate y ASESINÓ A {3} {4} después de {5}", -- after X seconds/minutes/hours
			pvp_instigator_killed_weapon                   = "{1} {2} terminó el combate usando {3} y ASESINÓ A {4} {5} después de {6}",
			pvp_instigator_killed_weapons                  = "{1} {2} terminó el combate usando multiples armas y ASESINÓ A {3} {4} después de {5}",
			pvp_victim_killed_noweapon                     = "{1} {2} terminó el combate y FUE ASESINADÓ POR {3} {4} después de {5}",
			pvp_victim_killed_weapon                       = "{1} {2} terminó el combate usando {3} y FUE ASESINADO POR {4} {5} después de {6}",
			pvp_victim_killed_weapons                      = "{1} {2} terminó el combate usando multiples armas y FUE ASESINADO POR {3} {4} después de {5}",
			pvp_combat_noweapon                            = "{1} {2} terminó el combate con {3} {4} después de {5}",
			pvp_combat_weapon                              = "{1} {2} terminó el combate usando {3} con {4} {5} después {6}",
			pvp_combat_weapons                             = "{1} {2} terminó el combate usando multiples armas con {3} {4} después {5}",
			pvp_log_noweapon                               = "{1} dañó a {2} quitandole {3} de daño",
			pvp_log_weapon                                 = "{1} dañó a {2} quitandole {3} de daño usando {4}",
			pvp_killed                                     = "{1} mató a {2}",
			pvp_vehicle_owned_killed                       = "{1} fue dañado & y asesinado por {2} sin conductor, propiedad de {3}",
			pvp_vehicle_owned_damaged                      = "{1} fue dañado quitandole {2} de daño por {3} sin conductor, propiedad de {4}",
			pvp_vehicle_killed                             = "{1} fue dañado & y asesinado por {2} sin conductor, propiedad de nadie",
			pvp_vehicle_damaged                            = "{1} fue dañado quitandole {2} de daño por {3} sin conductor, propiedad de nadie",
			pvp_killed_self                                = "{1} se suicidó",
			pvp_damaged_self                               = "{1} se dañó a si mismo quitandose {2} de daño",
 
			changed_team                                   = "{1} se cambió de team de {2} a {3}",
			command_used                                   = "{1}: {2}",
			warned_reason                                  = "{1} fue warneado por {2} por {3}",
			warned_noreason                                = "{1} fue warnedo por {2}",
			warned_kicked                                  = "{1} fue KICKEADO por alcanzar el límite de warns activos",
			warned_banned                                  = "{1} fue BANEADO por alcanzar el límite de warns activos",
			handcuffed                                     = "{1} esposó {2}",
			handcuffs_broken_by                            = "{1} rompió las esposas que le puso {2}",
			handcuffs_broken                               = "{1} rompió sus propias esposas",
			npc_health_bought                              = "{1} compro vida en un NPC por {2}",
			npc_armor_bought                               = "{1} compro armadura en un NPC por {2}",
			pac_outfit                                     = "{1} cambiado su traje de PAC {2}",
			party_chat                                     = "{1} ({2}): {3}",
			party_created                                  = "{1} creó una party {2}",
			party_join                                     = "{1} se unió a la parti {2}",
			party_join_request                             = "{1} requirió unirse a la party {2}",
			party_invite                                   = "{1} invitó a {2} a la party {3}",
			party_leave                                    = "{1} se salió de la party {2}",
			party_kick                                     = "{1} kickeo a {2} de la party {3}",
			party_disbanded                                = "{1} party borrada {2}",
			party_abandoned                                = "{1} se fue del server y se fue de la party {2}",
			spraymesh                                      = "{1} usó su spray {2}",
			starwarsvehicle_damage_owned_weapon            = "{1} dañó un vehiculo de Star Wars {2} de {3} quitandole {4} de daño con {5}",
			starwarsvehicle_damage_owned                   = "{1} dañó un vehiculo de Star Wars {2} de {3} quitandole {4} de daño",
			starwarsvehicle_damage_weapon                  = "{1} dañó un vehiculo de Star Wars {2} quitandole {3} de daño con {4}",
			starwarsvehicle_damage                         = "{1} dañó un vehiculo de Star Wars {2} quitandole {3} de daño",
			wac_damage_owned_weapon                        = "{1} dañó un vehiculo de WAC aircraft {2} de {3} quitandole {4} de daño con {5}",
			wac_damage_owned                               = "{1} dañó un vehiculo de WAC aircraft {2} de {3} quitandole {4} de daño",
			wac_damage_weapon                              = "{1} dañó un vehiculo de WAC aircraft {2} quitandole {3} de daño con {4}",
			wac_damage                                     = "{1} dañó un vehiculo de WAC aircraft {2} quitandole {3} de daño",
			wyozi_cinema_queued                            = "{1} requirió un video {2} ➞ {3} en el cine {4}",
			wyozi_dj_queued                                = "{1} en cola {2} ➞ {3} en el canal {4}",
			wyozi_dj_channel_rename                        = "{1} renombró el canal a {2}",
 
			bwhitelist_whitelist_enabled_by                = "{1} habilitó la whitelist para {2}",
			bwhitelist_whitelist_enabled                   = "La whitelist para {1} fue habilitada",
			bwhitelist_whitelist_disabled_by               = "{1} deshabilitó la whitelist de {2}",
			bwhitelist_whitelist_disabled                  = "La whitelist de {1} fue deshabilitada",
 
			bwhitelist_blacklist_enabled_by                = "{1} habilitó la blacklist para {2}",
			bwhitelist_blacklist_enabled                   = "La bakclist para {1} fue habilitada",
			bwhitelist_blacklist_disabled_by               = "{1} deshabilitó la blacklist para {2}",
			bwhitelist_blacklist_disabled                  = "La blacklist para {1} fue deshabilitada",
 
			bwhitelist_added_to_whitelist_by               = "{1} fue añadido a la whitelist de {2} por {3}",
			bwhitelist_added_to_whitelist                  = "{1} fue añadido a la whitelist de {2}",
			bwhitelist_removed_from_whitelist_by           = "{1} fue borrado de la whitelist de {2} por {3}",
			bwhitelist_removed_from_whitelist              = "{1} fue borrado de la whitelist de {2}",
			bwhitelist_added_to_blacklist_by               = "{1} fue añadido a la blacklist de {2} por {3}",
			bwhitelist_added_to_blacklist                  = "{1} fue añadido a la blacklist de {2}",
			bwhitelist_removed_from_blacklist_by           = "{1} fue borrado de la blacklist de {2} por {3}",
			bwhitelist_removed_from_blacklist              = "{1} fue borrado de la blacklist de {2}",
 
			bwhitelist_added_to_whitelist_by_usergroup     = "El rango {1} fue añadido a la whitelist de {2} por {3}",
			bwhitelist_added_to_whitelist_usergroup        = "El rango {1} fue añadido a la whitelist de {2}",
			bwhitelist_removed_from_whitelist_by_usergroup = "El rango {1} fue borrado a la whitelist de {2} por {3}",
			bwhitelist_removed_from_whitelist_usergroup    = "El rango {1} fue borrado a la whitelist de {2}",
			bwhitelist_added_to_blacklist_by_usergroup     = "El rango {1} fue añadido a la blacklist de {2} por {3}",
			bwhitelist_added_to_blacklist_usergroup        = "El rango {1} fue añadido a la blacklist de {2}",
			bwhitelist_removed_from_blacklist_by_usergroup = "El rango {1} fue borrado a la blacklist de {2} por {3}",
			bwhitelist_removed_from_blacklist_usergroup    = "El rango {1} fue borrado a la blacklist de {2}",
 
			bwhitelist_added_to_whitelist_by_luafunc       = "La función de lua {1} fue añadida a la whitelist de {2} por {3}",
			bwhitelist_added_to_whitelist_luafunc          = "La función de lua {1} fue añadida a la whitelist de {2}",
			bwhitelist_removed_from_whitelist_by_luafunc   = "La función de lua {1} fue borrada a la whitelist de {2} por {3}",
			bwhitelist_removed_from_whitelist_luafunc      = "La función de lua {1} fue borrada a la whitelist de {2}",
			bwhitelist_added_to_blacklist_by_luafunc       = "La función de lua {1} fue añadida a la blacklist de {2} por {3}",
			bwhitelist_added_to_blacklist_luafunc          = "La función de lua {1} fue añadida a la blacklist de {2}",
			bwhitelist_removed_from_blacklist_by_luafunc   = "La función de lua {1} fue borrada a la blacklist de {2} por {3}",
			bwhitelist_removed_from_blacklist_luafunc      = "La función de lua {1} fue borrada a la blacklist de {2}",

			pvp_combat_begin = "{1} combate instigado contra {2}",
			pvp_combat_end   = "El combate instigado por {1} en contra de {2} terminó",

			pvp_player_damage_weapon = "{1} dañó a {2} con {3}",
			pvp_player_damage = "{1} dañó a {2}",
			pvp_misc_dmg = "{1} fue dañado por {2}",
			pvp_fall_damage = "{1} recibió daño por caida",
			pvp_world_crush_damage = "{1} fue aplastado contra el mundo",
			pvp_world_damage = "{1} fue dañado por el mundo",
			pvp_prop_self_damage = "{1} se dañó a si mismo con el prop {2}",
			pvp_prop_damage = "{1} fue dañado con el prop {2} creado por {3}",
			pvp_world_prop_damage = "{1} fue dañado con el un prop del mundo, {2}",
			pvp_dmg_self = "{1} se daño a si mismo",
			pvp_vehicle_damage = "{1} fue dañado por el vehículo {2} conducido por {3}",
			pvp_driverless_vehicle_damage = "{1} fue dañado por el vehículo {2} sin conductor",

			pvp_player_silent_death = "{1} fue asesinado en silencio",
			pvp_death_propkill_self = "{1} se hizo propkill a si mismo con {2}",
			pvp_death_propkill_world = "{1} el mundo le hizo propkill con {2}",
			pvp_death_propkill = "{1} fue asesinado con un prop de {2} usando {3}",
			pvp_death_player = "{1} fue asesinado por {2}",
			pvp_death_player_weapon = "{1} fue asesinado por {2} con {3}",
			pvp_death_world = "{1} fue asesinado por el mundo",
			pvp_death = "{1} fue asesinado",
			
			pvp_misc_dmg_prop = "{1} recibió {2} por el prop de un mundo {3}",
			pvp_misc_dmg_attacker = "{1} recibió {2} de {3}",
			pvp_misc_dmg_other = "{1} recibió {2}",
		},

		pvp_dmgtype_generic = "%u de daño",
		pvp_dmgtype_burn = "%u de daño por fuego",
		pvp_dmgtype_crush = "%u de daño por aplastamiento",
		pvp_dmgtype_fall = "%u de daño por caida",
		pvp_dmgtype_bullet = "%u de daño por bala",
		pvp_dmgtype_slash = "%u de daño por corte",
		pvp_dmgtype_vehicle = "%u de daño por vehiculo",
		pvp_dmgtype_blast = "%u de daño por explosión",
		pvp_dmgtype_club = "%u de daño por club",
		pvp_dmgtype_shock = "%u de daño por electrocutamiento",
		pvp_dmgtype_sonic = "%u de daño por sonic",
		pvp_dmgtype_energybeam = "%u de daño por laser",
		pvp_dmgtype_drown = "%u de daño por ahogamiento",
		pvp_dmgtype_nervegas = "%u de daño por neurotoxina",
		pvp_dmgtype_poison = "%u de daño por  veneno",
		pvp_dmgtype_radiation = "%u de daño por radiación",
		pvp_dmgtype_acid = "%u de daño por químico",
		pvp_dmgtype_gravgun = "%u de daño por gravity gun",
		pvp_dmgtype_plasma = "%u de daño por plasma",
		pvp_dmgtype_airboat = "%u de daño por arma de airboat",
		pvp_dmgtype_buckshot = "%u de daño por bala de escopeta",
		pvp_dmgtype_sniper = "%u de daño por bala de Sniper",

} end }