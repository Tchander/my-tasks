projects = [
  { id: 1, title: "Семья" },
  { id: 2, title: "Работа" },
  { id: 3, title: "Прочее" }
]

todos = [
  { text: 'Купить молоко', isCompleted: false, project_id: 1 },
  { text: 'Заменить масло в двигателе до 23 апреля', isCompleted: false, project_id: 1 },
  { text: 'Отправить письмо бабушке', isCompleted: true, project_id: 1 },
  { text: 'Заплатить за квартиру', isCompleted: false, project_id: 1 },
  { text: 'Забрать обувь из ремонта', isCompleted: false, project_id: 1 },
  { text: 'Позвонить заказчику', isCompleted: true, project_id: 2 },
  { text: 'Отправить документы', isCompleted: true, project_id: 2 },
  { text: 'Заполнить отчет',  isCompleted: false, project_id: 2 },
  { text: 'Позвонить другу', isCompleted: false, project_id: 3 },
  { text: 'Подготовиться к поездке', isCompleted: false, project_id: 3 }
]

Project.create(projects)
Todo.create(todos)

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end
