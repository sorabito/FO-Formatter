private
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
	^ tokens