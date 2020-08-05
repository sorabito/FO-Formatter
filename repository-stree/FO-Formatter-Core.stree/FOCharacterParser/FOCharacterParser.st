
Object subclass: #FOCharacterParser
	instanceVariableNames: 'character charatcerToTokenClassMap'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FO-Formatter-Core'!

!FOCharacterParser methodsFor: 'accessing'!
character: inCharacter
	character := inCharacter! !

!FOCharacterParser class methodsFor: 'as yet unclassified'!
character: character
	^ self new
		character: character;
		yourself ! !

!FOCharacterParser methodsFor: 'accessing'!
charatcerToTokenClassMap
	^ charatcerToTokenClassMap ifNil: [ charatcerToTokenClassMap := self createCharatcerToTokenClassMap]! !

!FOCharacterParser methodsFor: 'factory'!
createCharatcerToTokenClassMap
	^ ((FOToken allSubclasses select: [ :each | each character notNil ]) collect: [ :each | each character -> each ])
		asDictionary! !

!FOCharacterParser methodsFor: 'private'!
parse
	| tokenClass |
	tokenClass := self charatcerToTokenClassMap at: character ifAbsent: [  
		^ FOCharacterToken new character: character
	].
	^tokenClass new! !
