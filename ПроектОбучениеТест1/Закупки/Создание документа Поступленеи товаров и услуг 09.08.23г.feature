﻿#language: ru

@tree

Функционал: создание документа Поступление товаров и услуг

Как менджер по закупкам я хочу
создать документ Поступление товаров и услуг 
чтобы отразить в учете поступление товаров на склад   
// тест выгрузки комментария
Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: создание документа Поступление товаров и услуг

* Открыть журнал документов поступление товаров и услуг
	И В командном интерфейсе я выбираю 'Закупки' 'Документы закупки (все)'
	Тогда открылось окно 'Документы закупки (все)'
* Создать новый документ и заполнить шапку документа
	И в таблице "СписокДокументыЗакупки" я нажимаю на кнопку с именем 'Создать___ЗакупкаУПоставщика___ПриобретениеТоваровУслуг'
	Тогда открылось окно 'Приобретение товаров и услуг (создание)'
	И из выпадающего списка с именем "Партнер" я выбираю точное значение 'Тест  орг 2'
* Добавить товары
	И я перехожу к закладке с именем "ГруппаТовары"
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я активизирую поле с именем "ТоварыНоменклатура"
	И в таблице "Товары" из выпадающего списка с именем "ТоварыНоменклатура" я выбираю точное значение 'Номекн1'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличествоУпаковок"
	И в таблице "Товары" в поле с именем 'ТоварыКоличествоУпаковок' я ввожу текст '10,000'
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '500,00'
	И в таблице "Товары" я завершаю редактирование строки
* Провести документ
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Приобретение товаров и услуг (создание) *' в течение 20 секунд
* Проверка создания документа

	
	

