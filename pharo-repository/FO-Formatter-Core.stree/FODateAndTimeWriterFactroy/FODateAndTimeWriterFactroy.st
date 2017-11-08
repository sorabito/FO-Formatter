
Object subclass: #FODateAndTimeWriterFactroy
	instanceVariableNames: 'tokens'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FO-Formatter-Core'!

!FODateAndTimeWriterFactroy methodsFor: 'accessing'!
with: tokensFromReducer
	tokens := tokensFromReducer! !

!FODateAndTimeWriterFactroy class methodsFor: 'as yet unclassified'!
with: tokens
	^ self new
		with: tokens;
		yourself! !

!FODateAndTimeWriterFactroy methodsFor: 'accessing'!
writer
	| tokenClass writerClass|
	tokenClass := tokens first class.
	writerClass := tokenClass writerClass.
	^ writerClass tokens: tokens.
	
	! !
