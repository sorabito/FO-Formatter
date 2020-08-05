private
reduce: tokensCollection
	| copyTokens reduceStack lastTokenClass writerFactory writer lastToken |
	writers := OrderedCollection new.
	copyTokens := tokensCollection copy.
	copyTokens addLast: FOEndToken.
	reduceStack := OrderedCollection new.
	[ copyTokens size = 0 ]
		whileFalse: [ 
			lastToken := copyTokens removeFirst.
			lastTokenClass := lastToken class.
			reduceStack size = 0
				ifFalse: [ 
					lastTokenClass == reduceStack last class
						ifFalse: [ 
							writerFactory := FODateAndTimeWriterFactroy with: reduceStack asArray.
							writer := writerFactory writer.
							writers add: writer.
							reduceStack removeAll ]	" or lastTokenClass == FOCharacterParser" ].
			reduceStack addLast: lastToken ].	"copyWriters should cotain only one FOEndToken at last"
	^ writers