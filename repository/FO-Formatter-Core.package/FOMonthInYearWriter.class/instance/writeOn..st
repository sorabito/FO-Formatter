actions
writeOn: aStream
	| monthString |
	monthString := dateAndTime month asString.
	tokens size > 2 ifTrue: [^self warnInvalidTokenSize].
	tokens size = 1 ifTrue: [ ^ aStream << monthString ].
	tokens size = 2 ifTrue: [ ^ aStream << (monthString padLeftTo: 2 with: $0)].
	self warnInvalidTokenSize 