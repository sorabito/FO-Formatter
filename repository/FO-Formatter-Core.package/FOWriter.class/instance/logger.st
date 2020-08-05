accessing
logger
	(self respondsTo: #ng) ifTrue: [ ^self perform: #ng ].
	
	^ self
	