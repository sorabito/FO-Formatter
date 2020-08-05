
Object subclass: #FODateAndTimeWriter
	instanceVariableNames: 'writers'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FO-Formatter-Core'!

!FODateAndTimeWriter methodsFor: 'private'!
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
	^ writers! !

!FODateAndTimeWriter methodsFor: 'printing'!
writeOn: aStream dateAndTime: aDateAndTime
	writers
		do: [ :each | "FOWriter subclass"
			each dateAndTime: aDateAndTime.
			each writeOn: aStream ]! !

!FODateAndTimeWriter methodsFor: 'printing'!
writeOn: aStream dateAndTime: aDateAndTime format: formatString
	| parser tokens  |
	parser := FODateAndTimeParser formatString: formatString.
	tokens := parser parse.
	writers := self reduce: tokens .
	self writeOn: aStream dateAndTime:  aDateAndTime.! !
