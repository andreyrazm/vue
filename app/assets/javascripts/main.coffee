$ ->
  Todos = Vue.extend(name:'todos')
  window.vm = new Todos(
    el: '#app',
    data: {
      todos: [
        {title: 'make coffee', status: true}
        {title: 'drink coffee', status: false}
        {title: 'buy shit', status: true}
        {title: 'eat shit', status: false}
        {title: 'kill somebody', status: true}
        {title: 'go to jail', status: false}
      ]
      newTodo: ''
      editTodo: null
    }
    methods: {
      reverseTitle: (index) ->
        todo = this.todos[index]
        todo.title = todo.title.split('').reverse().join('')

      addTodo: ->
        title = this.newTodo.trim()
        if title
          this.todos.push( title: title, status:false )
          this.newTodo = ''

      removeTodo: (todo) ->
        this.todos.$remove(todo)


    }
    ready: ->
      console.log('win')
  )

