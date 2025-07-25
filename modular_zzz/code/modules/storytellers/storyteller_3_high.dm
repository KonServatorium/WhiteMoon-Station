/datum/storyteller/high
	name = "Hard Dynamic"
	desc = "На станции может быть не один и не два антагониста, они могут быть как Крупными-Шумными, так и Малыми-Скрытными. \
	И тем, и другим разрешается добиваться своей цели более шумным образом, точно также, как и СБ может переходить к прямому механу, \
	если на станции слишком много полноценных угроз. От подобного раунда всегда следует ожидать как можно больше разрушений, убийств, анархии. \
	Контролировать такое будет сложно, в связи с чем вам будет представлено конкретное испытание по Выживанию на Космической Станции. TG Server Expirience."
	track_data = /datum/storyteller_data/tracks/high_chaos

/datum/storyteller_data/tracks/high_chaos
	threshold_mundane = 900
	threshold_moderate = 1200
	threshold_major = 2400
	threshold_crewset = 1200
	threshold_ghostset = 1600
