
FOWriter subclass: #FOAmOrPmMarkerWriter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FO-Formatter-Core'!

!FOAmOrPmMarkerWriter methodsFor: 'actions'!
writeOn: aStream 
  aStream nextPutAll: dateAndTime meridianAbbreviation.! !
