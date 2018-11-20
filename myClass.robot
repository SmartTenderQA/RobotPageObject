*** Settings ***
Library             myClass.py
Resource  GooglePageObject.robot


*** Test Cases ***
Person Operations
	#создаем єкземпляр класса
	${person}    create person    Сергей    Один

	#переменные єкземпляра
	Log  ${person.firstname}
	#return  Maggi

	Log  ${person.lastname}
	#return  Nestle

	#взов методов єкземпляра
	Log  ${person.emp_name()}
	#return  Maggi Nestle

	${name}  Call method	${person}	emp_name
	#return  Maggi Nestle
	New Keyword
	Log



*** Keywords ***
New Keyword
	[Documentation]  Tadam
	reload page