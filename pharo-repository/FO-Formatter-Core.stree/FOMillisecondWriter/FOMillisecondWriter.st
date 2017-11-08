
FOWriter subclass: #FOMillisecondWriter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FO-Formatter-Core'!

!FOMillisecondWriter methodsFor: 'actions'!
writeOn: aStream
	| millisec |
	
	tokens size > 1 ifTrue: [ ^self warnInvalidTokenSize ].
	
	millisec := (dateAndTime nanoSecond // 1e3) asString.
	aStream << millisec.! !
