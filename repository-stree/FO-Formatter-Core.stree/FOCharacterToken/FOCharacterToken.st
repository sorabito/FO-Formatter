
FOToken subclass: #FOCharacterToken
	instanceVariableNames: 'character'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FO-Formatter-Core'!

!FOCharacterToken methodsFor: 'accessing'!
character
	^ character! !

!FOCharacterToken methodsFor: 'accessing'!
character: anObject
	character := anObject! !

!FOCharacterToken class methodsFor: 'accessing'!
writerClass
	^FOCharacterWriter! !
