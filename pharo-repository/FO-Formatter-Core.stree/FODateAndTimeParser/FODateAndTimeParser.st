
Object subclass: #FODateAndTimeParser
	instanceVariableNames: 'formatString'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FO-Formatter-Core'!

!FODateAndTimeParser methodsFor: 'accessing'!
formatString: anObject
	formatString := anObject! !

!FODateAndTimeParser class methodsFor: 'as yet unclassified'!
formatString: formatString
	^ self new
		formatString: formatString;
		yourself! !

!FODateAndTimeParser methodsFor: 'private'!
parse
	| tokens character chracterParser token formatStream|
	tokens := OrderedCollection new.
	formatStream := formatString readStream.
	[ formatStream atEnd ]
		whileFalse: [ 
			character := formatStream next.
			chracterParser := FOCharacterParser character: character.
			token := chracterParser parse.
			tokens add: token ].
	^ tokens! !
