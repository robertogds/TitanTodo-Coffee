ApplicationWindow = (title) ->
	self = Ti.UI.createWindow
		title : 'TitanTodo'
		backgroundColor : 'white'
		tabBarHidden: true
	
	newTaskText = Ti.UI.createTextField
		borderStyle : Ti.UI.INPUT_BORDERSTYLE_ROUNDED
		color : '#336699'
		hintText : 'What needs to be done?'
		returnKeyType : Titanium.UI.RETURNKEY_DONE
		top : 20
		width : '90%'
		height : 44
	
	self.add(newTaskText);
	
	taskRow = require('ui/TaskRow')
	
	table = Ti.UI.createTableView
		data : []
		top : 80
	
	table.addEventListener 'click',  (e) ->
		if e.source.id is 'removeButton'
			table.deleteRow(e.index)

	self.add(table)

	newTaskText.addEventListener 'return', () ->
		table.appendRow new taskRow(newTaskText.value)
		newTaskText.setValue('')

	self

module.exports = ApplicationWindow