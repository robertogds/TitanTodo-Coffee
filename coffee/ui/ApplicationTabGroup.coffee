ApplicationTabGroup = (Window) ->
	# create module instance
	self = Ti.UI.createTabGroup()
	
	# create app tabs
	mainWin = new Window('All')
	mainTab = Ti.UI.createTab
		title: 'All'
		icon: '/images/KS_nav_ui.png'
		window: mainWin
	
	mainWin.containingTab = mainTab
	
	self.addTab(mainTab)
	
	return self

module.exports = ApplicationTabGroup