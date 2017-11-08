
FOWriter subclass: #FOHourInAmOrPmWriter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FO-Formatter-Core'!

!FOHourInAmOrPmWriter methodsFor: 'actions'!
writeOn: aStream
	| hour |
	hour := dateAndTime hour12 asString.
	tokens size = 1 ifTrue: [ 
		^ aStream << hour last.
	].
	tokens size = 2 ifTrue: [ 
		 ^ aStream << (hour padLeftTo: 2 with: $0).
	].
	^self warnInvalidTokenSize ! !
