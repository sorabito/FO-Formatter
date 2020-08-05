*FO-Formatter-Core
printOn: aStream formatting: formatString
	FODateAndTimeWriter new
		writeOn: aStream dateAndTime: self format: formatString