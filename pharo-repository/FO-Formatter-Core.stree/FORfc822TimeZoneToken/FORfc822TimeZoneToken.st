
FOToken subclass: #FORfc822TimeZoneToken
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FO-Formatter-Core'!

!FORfc822TimeZoneToken class methodsFor: 'constants'!
character
	^$Z! !

!FORfc822TimeZoneToken class methodsFor: 'accessing'!
writerClass
	^FORfc822TimeZoneWriter! !
