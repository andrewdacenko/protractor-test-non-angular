CommonPage = require './CommonPage'

class IndexPage extends CommonPage
  counter: 0
  constructor: () ->
    @newTodo = element By.id "new-todo"
    @todoList = element By.id "todo-list"
  addTodo: () -> 
    @newTodo.sendKeys "New TODO ##{++@counter}", protractor.Key.ENTER
  
  removeTodo: (index) -> 
    deleteBtn = element(By.xpath "//*[@id=\"todo-list\"]/li[#{index}]//button[@class=\"destroy\"]")
    @hover element(By.xpath "//*[@id=\"todo-list\"]/li[#{index}]")
    deleteBtn.click()
  
  get: () -> browser.get('')
  
  title: () -> browser.getTitle()
  
  todosCount: () -> element.all(By.xpath "//*[@id=\"todo-list\"]/li").count()

module.exports = IndexPage