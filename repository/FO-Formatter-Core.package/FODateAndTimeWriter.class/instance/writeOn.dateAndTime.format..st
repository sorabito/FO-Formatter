printing
writeOn: aStream dateAndTime: aDateAndTime format: formatString
	| parser tokens  |
	parser := FODateAndTimeParser formatString: formatString.
	tokens := parser parse.
	writers := self reduce: tokens .
	self writeOn: aStream dateAndTime:  aDateAndTime.