
FOWriter subclass: #FORfc822TimeZoneWriter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FO-Formatter-Core'!

!FORfc822TimeZoneWriter methodsFor: 'actions'!
writeOn: aStream
	| offset |
	
	tokens size > 1 ifTrue: [^self warnInvalidTokenSize].
	
	offset := dateAndTime timeZone offset.
	aStream nextPut: (offset positive ifTrue: [ $+ ] ifFalse: [ $- ]).
	offset hours abs printOn: aStream base: 10 length: 2 padded: true.
	offset minutes abs printOn: aStream base: 10 length: 2 padded: true.
	offset seconds = 0 
		ifFalse:[ 
			aStream nextPut: $:; print: offset seconds abs truncated ]! !
