part of todo_dart_react;

@Factory()
UiFactory<TodoListItemProps> TodoListItem;

@Props()
class TodoListItemProps extends UiProps {
  Todo todo;
  DeleteTodoCallback deleteTodo;
}

@Component()
class TodoListItemComponent extends UiComponent<TodoListItemProps> {
  @override
  render() {
    return ListGroupItem()(
      (Dom.input()
        ..className = 'mr-3'
        ..type = 'checkbox')(),
      Dom.span()(
        props.todo.content,
      ),
      (Button()
        ..addTestId('deleteTodo')
        ..className = 'float-right'
        ..skin = ButtonSkin.DANGER
        ..onClick = ((event) => props.deleteTodo(props.todo)))(
        'Delete',
      ),
    );
  }
}
