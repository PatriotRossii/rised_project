-- "addons\\igs_modification\\lua\\igs\\settings\\sh_addlevels.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
--[[-------------------------------------------------------------------------
	Цены в .Add указываются в рублях
---------------------------------------------------------------------------]]

-- Уровни сработают только, если не произойдет ошибки при пополнении счета
-- Правда я не представляю что нужно сделать, чтобы произошла ошибка (Не пришел сигнал PAY с автодоната)
IGS.LVL.Add(1, "Новичок")
	:SetBonus(function(pl)
		local bonus = pl:IGSFunds() * .1
		pl:AddIGSFunds(bonus,"Бонус за первое пополнение")
		IGS.Notify(pl,"Вы получили " .. PL_IGS(bonus) .. "\nв качестве бонуса за первое пополнение счета")
	end)
	:SetDescription("При первом пополнении счета получите 10% в подарок автоматически и бесплатно") -- выше в catchDSHints еще


IGS.LVL.Add(100, "Стартанувший")
IGS.LVL.Add(500, "В теме")

IGS.LVL.Add(1000, "Бывалый")
	:SetDescription("Позволяет получить уникальный статус \"Мегалодон\" на форуме")

IGS.LVL.Add(1500, "Вроде не бомж")
	:SetDescription("Скоро новый бонус")


IGS.LVL.Add(2000, "Точно не бомж")
	:SetDescription("Еще капельку и бонус. Следующий лвл")


IGS.LVL.Add(2500, "При деньгах")
	:SetDescription("Бонус 20% на пополнение счета")
	:SetBonus(function(pl)
		local bonus = pl:IGSFunds() * .2 -- на самом деле бонус начислит на всю имеющуюся сумму, а не сумму пополнения. Так что ахтунг
		pl:AddIGSFunds(bonus,"Бонус за 2500 руб транзакций")
		IGS.Notify(pl,"Вы получили " .. PL_IGS(bonus) .. "\nв качестве бонуса за новый бизнес ЛВЛ")
	end)


IGS.LVL.Add(3000, "Щедрый")
	:SetDescription("Премиум поддержка от правительства")

IGS.LVL.Add(4000, "Очень щедрый")
	:SetDescription("На след. лвл новый бонус")

IGS.LVL.Add(5000, "Пиздец щедрый")
	:SetDescription("Статус Убердон на форуме")

IGS.LVL.Add(6000, "Мажор")
	:SetDescription("Предложение о сотрудничестве")


IGS.LVL.Add(7000, "Супермажик")
IGS.LVL.Add(8000, "Гипермажик")
IGS.LVL.Add(9000, "Убермажор")
IGS.LVL.Add(10000, "Миллионер")
	:SetDescription("Премиум поддержка от основателя в любое время суток")

IGS.LVL.Add(12000, "МультиМиллионер")
IGS.LVL.Add(15000, "Миллиардер")
IGS.LVL.Add(20000, "МультиМиллиардер")
IGS.LVL.Add(25000, "Кыш с дороги")
IGS.LVL.Add(30000, "Сядь в лужу, я пройду")
IGS.LVL.Add(35000, "Я тебя куплю")
IGS.LVL.Add(40000, "Я куплю тебя и твою семью")
IGS.LVL.Add(50000, "Бог один и это Я")
