
FOWriter subclass: #FODayNameInWeekWriter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FO-Formatter-Core'!

!FODayNameInWeekWriter methodsFor: 'actions'!
writeOn: aStream
	tokens size = 3
		ifTrue: [ ^ aStream << dateAndTime dayOfWeekAbbreviation ].
	(#(1 2 4) includes: tokens size)
		ifTrue: [ ^ aStream << dateAndTime dayOfWeekName ].
	self warnInvalidTokenSize ! !
