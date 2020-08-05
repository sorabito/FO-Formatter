actions
writeOn: aStream
	| daysInMonthString |
	daysInMonthString := dateAndTime dayOfMonth asString.
	tokens size = 1 ifTrue: [ 
		^ aStream << daysInMonthString
	].
	tokens size = 2 ifTrue: [ 
		^ aStream << (daysInMonthString padLeftTo: 2 with: $0)			
	].
	self warnInvalidTokenSize