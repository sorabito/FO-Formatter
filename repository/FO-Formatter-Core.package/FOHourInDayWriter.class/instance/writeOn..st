actions
writeOn: aStream
	| hour |
	hour := dateAndTime hour24 asString.
	tokens size = 1
		ifTrue: [ ^ aStream << hour last ].
	tokens size = 2
		ifTrue: [ ^ aStream << (hour padLeftTo: 2 with: $0) ].
	^self warnInvalidTokenSize 