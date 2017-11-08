
Object subclass: #FOToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FO-Formatter-Core'!

!FOToken class methodsFor: 'constants'!
character
	"return a character for token"
	^nil! !

!FOToken class methodsFor: 'accessing'!
writerClass
	self subclassResponsibility ! !
