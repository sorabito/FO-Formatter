
FOWriter subclass: #FOCharacterWriter
	instanceVariableNames: 'character'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FO-Formatter-Core'!

!FOCharacterWriter methodsFor: 'actions'!
writeOn: aStream
	tokens do: [ :each | aStream nextPut: each character ]! !
