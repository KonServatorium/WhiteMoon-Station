// /datum/team/revolution
// 	var/last_command_report = 0
// 	var/accounts_to_rob

// /datum/team/revolution/process_victory()
// 	if(last_command_report == 0 && world.time >= 10 MINUTES)
// 		priority_announce("Ваша низкая производительность вынуждает нас принять непростое решение о сокращении финансового обеспечения станции. В связи с этим вдвое уменьшены заработные платы всего персонала, за исключением сотрудников службы безопасности и командного состава.")
// 		accounts_to_rob = flatten_list(SSeconomy.bank_accounts_by_id)
// 		last_command_report = 1

// 		for(var/i in accounts_to_rob)
// 			var/datum/bank_account/B = i
// 			var/datum/bank_account/account = bogdanoff?.get_bank_account()
// 			if (account)
// 				if(account.has_money(100))
// 					account.adjust_money(-100, "Сокращение финансового обеспечения: Nanotrasen.")
// 					B.bank_card_talk("Ваше финансовое обеспечение было сокращено на сто кредитов силами бухгалтеров Nanotrasen! Работайте лучше!")

// 		var/list/excluded_rank = list("AI", "Cyborg") + job.departments_bitflags & DEPARTMENT_BITFLAG_COMMAND + DEPARTMENT_BITFLAG_COMMAND + DEPARTMENT_BITFLAG_CENTRAL_COMMAND
// 		for(var/datum/job/J in SSjob.occupations)
// 			if(J.title in excluded_rank)
// 				continue
// 			J.payday_modifier = 0.5	//halve the salary of all professions except leading
// 		var/list/crew = my_subordinate_staff("Admin")
// 		for(var/person in crew)
// 			if(person["rank"] in excluded_rank)
// 				continue

// 			var/datum/money_account/account = get_account(person["account"])
// 			get_bank_account
// 			if(!account)
// 				continue

// 			account.change_salary(null, "CentCom", "CentCom", "Admin", force_rate = -50)	//halve the salary of all staff except heads

// 	else if(last_command_report == 1 && world.time >= 30 MINUTES)
// 		priority_announce("Согласно статистике, бесконтрольный досуг и сопутствующая ему деятельность пагубно влияют на производительность наших станций. Вам необходимо закрыть голопалубу, театр, бар и любые другие увеселительные заведения. Питание персонала следует организовать посредством торговых автоматов и столовой.")
// 		last_command_report = 2
// 	else if(last_command_report == 2 && world.time >= 45 MINUTES)
// 		priority_announce("У нас есть основания полагать, что вы не проявляете должной преданности НаноТрейзен. Мы настаиваем на том, чтобы все представители командного состава ввели себе имплант Защиты Разума, если это ещё не было сделано. Отказ от прохождения процедуры имплантации расценивается как неподчинение приказам Центрального Командования и карается арестом до конца смены.")
// 		last_command_report = 3
// 	else if(last_command_report == 3 && world.time >= 60 MINUTES)
// 		priority_announce("Проверенные источники сообщают, что принятые ранее меры оказались недостаточными. Представители командного состава обязаны проследить за тем, чтобы их подчиненные работали максимально усердно и не слонялись без дела. Персоналу запрещено покидать свое рабочее место без согласования с начальством. При нарушении этого запрета кем-либо необходимо накладывать дисциплинарное взыскание, а при рецидиве - заключать под стражу до момента прибытия шаттла отбытия, который доставит нарушителей туда, где им гарантированно найдут применение.")
// 		last_command_report = 4
// 	. = ..()
