TaskRow = (title) ->
	self = Titanium.UI.createTableViewRow()
	active = true
	
	taskView = Titanium.UI.createView
		backgroundColor : '#fefefe'
		width : '100%'
		height : 44
	
	stateImg = Ti.UI.createImageView
		image: '/images/pending.jpg'
		left:1
		width: 50
		height: 44
	
	tachadoImg = Ti.UI.createImageView
		image: '/images/tachado.jpg'
		width: 200
		left: 55
		height: 2
	
	removeImg = Ti.UI.createImageView
		image: '/images/remove.jpg'
		right:1
		width: 27
		id:'removeButton'
		height: 44
	
	taskTitle = Ti.UI.createLabel
		text : title
		color: '#000'
		left: 60
		
	taskView.add taskTitle
	taskView.add removeImg
	taskView.add stateImg 
	self.add taskView
	
	self.height = 'auto'
	
	stateImg.addEventListener 'click', ()->
		if active is true
			stateImg.image= '/images/done.jpg'
			taskTitle.color = '#a8a8a8'
			taskView.add tachadoImg 
			active = false
		else 
			stateImg.image = '/images/pending.jpg'
			taskView.remove tachadoImg
			taskTitle.color = '#000'
			active = true
			
	return self

module.exports = TaskRow