
FOWriter subclass: #FOMinuteInHourWriter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FO-Formatter-Core'!

!FOMinuteInHourWriter methodsFor: 'actions'!
writeOn: aStream
	| minute |
	minute := dateAndTime minute asString.
	tokens size = 1
		ifTrue: [ ^ aStream << minute last ].
	tokens size = 2
		ifTrue: [ ^ aStream << (minute padLeftTo: 2 with: $0) ].
	self warnInvalidTokenSize ! !
