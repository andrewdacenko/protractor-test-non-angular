IndexPage = require './IndexPage'

describe 'Index page', ->
  page = null

  beforeEach ->
    page = new IndexPage
    page.get('')

  it 'should open main page', ->
    expect(page.title()).toEqual "Flux • TodoMVC"

  it 'should have no todos', ->
    expect(page.todosCount()).toEqual 0

  it 'should add new todos', ->
    page.addTodo()
    page.addTodo()
    page.addTodo()

    expect(page.todosCount()).toEqual 3
  
  it 'shoul remove todo', ->
    page.addTodo()
    
    page.removeTodo(1)

    expect(page.todosCount()).toEqual 0
    