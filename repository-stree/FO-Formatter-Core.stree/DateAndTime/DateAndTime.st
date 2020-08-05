
!DateAndTime methodsFor: '*FO-Formatter-Core'!
printOn: aStream formatting: formatString
	FODateAndTimeWriter new
		writeOn: aStream dateAndTime: self format: formatString! !

!DateAndTime methodsFor: '*FO-Formatter-Core'!
printStringFormatting: formatString
	^String streamContents: [ :strm | self printOn: strm formatting: formatString]! !
