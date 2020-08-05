actions
writeOn: aStream
	tokens size = 1
		ifTrue: [ ^ aStream << dateAndTime timeZoneAbbreviation ].
	tokens size = 4
		ifTrue: [ ^ aStream << dateAndTime timeZoneName ].
	self warnInvalidTokenSize