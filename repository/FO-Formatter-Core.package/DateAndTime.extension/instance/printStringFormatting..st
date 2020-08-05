*FO-Formatter-Core
printStringFormatting: formatString
	^String streamContents: [ :strm | self printOn: strm formatting: formatString]