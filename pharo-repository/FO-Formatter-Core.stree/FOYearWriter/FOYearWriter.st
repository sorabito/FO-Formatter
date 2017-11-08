
FOWriter subclass: #FOYearWriter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FO-Formatter-Core'!

!FOYearWriter methodsFor: 'actions'!
writeOn: aStream
	| yearString |
	yearString := dateAndTime year asString.
	(#(1 4) includes: tokens size) ifTrue: [ ^ aStream << yearString].
	tokens size = 2
		ifTrue: [ ^ aStream <<  (yearString last: 2) ].
	
	self warnInvalidTokenSize ! !
