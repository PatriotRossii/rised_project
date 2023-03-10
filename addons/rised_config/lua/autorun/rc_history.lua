-- "addons\\rised_config\\lua\\autorun\\rc_history.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
if RISED == null then
	RISED = {}
	if RISED.Config == null then
		RISED.Config = {}
	end
end

----------========== Истории персонажей ==========----------

RISED.Config.History = {}

RISED.Config.History.Types = {

	-- Положительные записи
	"Повышение ОЛ",
	"Понижение ОЛ",
	"Вступление в ГО",
	"Вступление в Партию",
	"Донос",

	-- Отрицательные записи
	"Розыск",
	"Начисление ОН",
	"Списание ОН",
	"Тюрьма",
	"Сталкеризация",
	"Изменение статуса", -- может быть и положительной
	"Нарушение", -- секты, забастовки 
	

	-- Нейтральные записи
	"Перевод в город",
	"Медицинские данные",

	-- Неигровые записи
	"Криминальная запись",
	"Семья",
	"Смена работы",
	"Медицинские данные",
}

RISED.Config.History.MedicalRecordsLight = {
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Медицинские данные",
		["Текст"] = "Перелом правой плечевой кости со смещением.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Медицинские данные",
		["Текст"] = "Острая респираторная вирусная инфекция.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Медицинские данные",
		["Текст"] = "Обнаружено заболевание: Неизвестное воспалительное заболевание кожи.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Медицинские данные",
		["Текст"] = "Обнаружено заболевание: Хронический цистит.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Медицинские данные",
		["Текст"] = "Обнаружено заболевание: Псориаз легкой степени.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Медицинские данные",
		["Текст"] = "Обнаружено заболевание: Красный плоский лишай.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Медицинские данные",
		["Текст"] = "Обнаружено заболевание: Гепатит E.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Медицинские данные",
		["Текст"] = "Обнаружено заболевание: Пиелонефрит правой почки.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Медицинские данные",
		["Текст"] = "Обнаружено заболевание: Мочекаменная болезнь.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Медицинские данные",
		["Текст"] = "Обнаружено заболевание: Мочекаменная болезнь.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Медицинские данные",
		["Текст"] = "Обнаружено заболевание: Гастроэзофагеальная рефлюксная болезнь.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Медицинские данные",
		["Текст"] = "Обнаружено заболевание: Гастрит поверхностный.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Медицинские данные",
		["Текст"] = "Обнаружено заболевание: Биполярное расстройство.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Медицинские данные",
		["Текст"] = "Обнаружено заболевание: Подагра в стадии ремиссии.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Медицинские данные",
		["Текст"] = "Обнаружено заболевание: Сколиоз 1 степени.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Медицинские данные",
		["Текст"] = "Обнаружено заболевание: Плоскостопие 2 степени.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Медицинские данные",
		["Текст"] = "Обнаружено заболевание: Кардиомиопатия.",
		["Цвет"] = Color(175,175,175,255),
	},
}

RISED.Config.History.CriminalRecordsLight = {
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Криминальная запись",
		["Текст"] = "Прослежена связь с контрабандистами.",
		["Цвет"] = Color(175,0,0,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Криминальная запись",
		["Текст"] = "Доказана связь с подельником вора.",
		["Цвет"] = Color(175,0,0,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Криминальная запись",
		["Текст"] = "Информация о связи с преступником.",
		["Цвет"] = Color(175,0,0,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Криминальная запись",
		["Текст"] = "Неподтвержденная информация о связи с преступной организацией Варконис.",
		["Цвет"] = Color(175,0,0,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Криминальная запись",
		["Текст"] = "Неподтвержденная информация о связи с группой воров.",
		["Цвет"] = Color(175,0,0,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Криминальная запись",
		["Текст"] = "Неподтвержденная информация о связи с группой людей, организовавших забастовку.",
		["Цвет"] = Color(175,0,0,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Криминальная запись",
		["Текст"] = "Неподтвержденная информация о связи с контрабандистами.",
		["Цвет"] = Color(175,0,0,255),
	},
}

RISED.Config.History.CriminalRecordsMedium_Compare = {
	{
		[1] = {
			["Дата"] = "Данные скрыты",
			["Тип записи"] = "Статус розыска",
			["Текст"] = "Был объявлен в розыск по причине: Хранение контрабанды 1 уровня.",
			["Цвет"] = Color(175,0,0,255),
		},
		[2] = {
			["Дата"] = "Данные скрыты",
			["Тип записи"] = "Статус розыска",
			["Текст"] = "Розыск снят по причине: Неизвестная причина.",
			["Цвет"] = Color(175,175,175,255),
		},
	},
	{
		[1] = {
			["Дата"] = "Данные скрыты",
			["Тип записи"] = "Статус розыска",
			["Текст"] = "Был объявлен в розыск по причине: Хранение контрабанды 2 уровня.",
			["Цвет"] = Color(175,0,0,255),
		},
		[2] = {
			["Дата"] = "Данные скрыты",
			["Тип записи"] = "Статус розыска",
			["Текст"] = "Розыск снят по причине: Неизвестная причина.",
			["Цвет"] = Color(175,175,175,255),
		},
	},
	{
		[1] = {
			["Дата"] = "Данные скрыты",
			["Тип записи"] = "Статус розыска",
			["Текст"] = "Был объявлен в розыск по причине: Воровство.",
			["Цвет"] = Color(175,0,0,255),
		},
		[2] = {
			["Дата"] = "Данные скрыты",
			["Тип записи"] = "Статус розыска",
			["Текст"] = "Розыск снят по причине: Невиновен.",
			["Цвет"] = Color(175,175,175,255),
		},
	},
	{
		[1] = {
			["Дата"] = "Данные скрыты",
			["Тип записи"] = "Статус розыска",
			["Текст"] = "Был объявлен в розыск по причине: Убийство сотрудника ГО.",
			["Цвет"] = Color(175,0,0,255),
		},
		[2] = {
			["Дата"] = "Данные скрыты",
			["Тип записи"] = "Статус розыска",
			["Текст"] = "Розыск снят по причине: Найден настоящий нарушитель.",
			["Цвет"] = Color(175,175,175,255),
		},
	},
	{
		[1] = {
			["Дата"] = "Данные скрыты",
			["Тип записи"] = "Статус розыска",
			["Текст"] = "Был объявлен в розыск по причине: Связь с повстанческой деятельностью.",
			["Цвет"] = Color(175,0,0,255),
		},
		[2] = {
			["Дата"] = "Данные скрыты",
			["Тип записи"] = "Статус розыска",
			["Текст"] = "Розыск снят по причине: Неизвестная причина.",
			["Цвет"] = Color(175,175,175,255),
		},
	},
	{
		[1] = {
			["Дата"] = "Данные скрыты",
			["Тип записи"] = "Статус розыска",
			["Текст"] = "Был объявлен в розыск по причине: Отравление рационов питания.",
			["Цвет"] = Color(175,0,0,255),
		},
		[2] = {
			["Дата"] = "Данные скрыты",
			["Тип записи"] = "Статус розыска",
			["Текст"] = "Розыск снят по причине: Неизвестная причина.",
			["Цвет"] = Color(175,175,175,255),
		},
	},
	{
		[1] = {
			["Дата"] = "Данные скрыты",
			["Тип записи"] = "Статус розыска",
			["Текст"] = "Был объявлен в розыск по причине: Оскорбление сотрудника ГО.",
			["Цвет"] = Color(175,0,0,255),
		},
		[2] = {
			["Дата"] = "Данные скрыты",
			["Тип записи"] = "Статус розыска",
			["Текст"] = "Розыск снят по причине: Ошибка.",
			["Цвет"] = Color(175,175,175,255),
		},
	},
	{
		[1] = {
			["Дата"] = "Данные скрыты",
			["Тип записи"] = "Статус розыска",
			["Текст"] = "Был объявлен в розыск по причине: Ошибка.",
			["Цвет"] = Color(175,0,0,255),
		},
		[2] = {
			["Дата"] = "Данные скрыты",
			["Тип записи"] = "Статус розыска",
			["Текст"] = "Розыск снят по причине: Ошибка.",
			["Цвет"] = Color(175,175,175,255),
		},
	},
	{
		[1] = {
			["Дата"] = "Данные скрыты",
			["Тип записи"] = "Статус розыска",
			["Текст"] = "Был объявлен в розыск по причине: Участие в потасовке в баре.",
			["Цвет"] = Color(175,0,0,255),
		},
		[2] = {
			["Дата"] = "Данные скрыты",
			["Тип записи"] = "Статус розыска",
			["Текст"] = "Розыск снят по причине: Невиновен.",
			["Цвет"] = Color(175,175,175,255),
		},
	},
}

RISED.Config.History.JobRecordsLight = {
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Смена работы",
		["Текст"] = "Подтверждение о смене работы с повара на уборщика.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Смена работы",
		["Текст"] = "Подтверждение о смене работы с уборщика на сантехника.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Смена работы",
		["Текст"] = "Подтверждение о смене работы с электрика на сборщика запчастей.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Увольнение",
		["Текст"] = "Увольнение с работы доставщиком.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Увольнение",
		["Текст"] = "Увольнение с работы уборщиком.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Увольнение",
		["Текст"] = "Увольнение с работы дворником.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Увольнение",
		["Текст"] = "Увольнение с работы сантехником.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Увольнение",
		["Текст"] = "Увольнение с работы ветеринаром.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Увольнение",
		["Текст"] = "Увольнение с работы охранником.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Смена работы",
		["Текст"] = "Подтверждение о смене работы с оператора завода на электрика.",
		["Цвет"] = Color(175,175,175,255),
	},
}

RISED.Config.History.FamilyRecordsLight = {
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Семья",
		["Текст"] = "Найдены данные свидетельствующие, что гражданин являлся приемным ребенком.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Семья",
		["Текст"] = "Найдены данные свидетельствующие, что гражданин являлся единственным ребенком в семье.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Семья",
		["Текст"] = "Найдены данные свидетельствующие, что у гражданина мать и отец проживают в С14.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Семья",
		["Текст"] = "Найдены данные свидетельствующие, что у гражданина мать проживает в С17.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Семья",
		["Текст"] = "Найдены данные свидетельствующие, что у гражданина мать и отец проживают в С8.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Семья",
		["Текст"] = "Найдены данные свидетельствующие, что у гражданина есть сестра, проживающая в С18.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Семья",
		["Текст"] = "Найдены данные свидетельствующие, что у гражданина есть брат, местоположение неизвестно.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Семья",
		["Текст"] = "Найдены данные свидетельствующие, что у гражданина есть брат, связанный с повстанческой деятельностью.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Семья",
		["Текст"] = "Найдены данные свидетельствующие, что у гражданина есть родственники, связанные с преступной деятельностью.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Семья",
		["Текст"] = "Найдены данные свидетельствующие, что гражданин состоит в браке.",
		["Цвет"] = Color(175,175,175,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Семья",
		["Текст"] = "Найдены данные свидетельствующие, что гражданин состоял в браке.",
		["Цвет"] = Color(175,175,175,255),
	},
}

RISED.Config.History.LoyalRecordsLight = {
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Лояльность",
		["Текст"] = "Участвовал во всех пропагандах Альянса.",
		["Цвет"] = Color(125,175,125,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Лояльность",
		["Текст"] = "Активно содействовал Верховной Партии Альянса.",
		["Цвет"] = Color(125,175,125,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Лояльность",
		["Текст"] = "Активно содействовал сотрудникам ГО.",
		["Цвет"] = Color(125,175,125,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Лояльность",
		["Текст"] = "Донос на соседа был успешно подтвержден.",
		["Цвет"] = Color(125,175,125,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Лояльность",
		["Текст"] = "Стабильно работал на заводе, качественно выполняя работу.",
		["Цвет"] = Color(125,175,125,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Лояльность",
		["Текст"] = "Партия отметила его преданность Альянсу.",
		["Цвет"] = Color(125,175,125,255),
	},
	{
		["Дата"] = "Данные скрыты",
		["Тип записи"] = "Лояльность",
		["Текст"] = "Сдал контрабанду 1 уровня.",
		["Цвет"] = Color(125,175,125,255),
	},
}