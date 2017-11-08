
Object subclass: #FOWriter
	instanceVariableNames: 'tokens dateAndTime'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FO-Formatter-Core'!

!FOWriter methodsFor: 'accessing'!
dateAndTime: anObject
	dateAndTime := anObject! !

!FOWriter methodsFor: 'accessing'!
logger
	(self respondsTo: #ng) ifTrue: [ ^self perform: #ng ].
	
	^ self
	! !

!FOWriter methodsFor: 'accessing'!
tokens: anObject
	tokens := anObject! !

!FOWriter class methodsFor: 'as yet unclassified'!
tokens: tokens
	^ self new
		tokens: tokens;
		yourself! !

!FOWriter methodsFor: 'error reporting'!
warn: errorInfo
	Transcript cr; show: 'WARN: ', errorInfo asString! !

!FOWriter methodsFor: 'error reporting'!
warnInvalidTokenSize
	self logger warn: {#InvalidTokenSize. self className. tokens size}.! !

!FOWriter methodsFor: 'actions'!
writeOn: aStream
	self subclassResponsibility ! !
