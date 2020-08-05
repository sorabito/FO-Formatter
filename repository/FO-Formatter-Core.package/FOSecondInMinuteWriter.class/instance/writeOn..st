actions
writeOn: aStream
	| second |
	second := dateAndTime second asString.
	tokens size = 1 ifTrue: [ 
		^ aStream << second last.
	].
	tokens size = 2 ifTrue: [ 
		^ aStream << (second padLeftTo: 2 with: $0).
	].
	self warnInvalidTokenSize 