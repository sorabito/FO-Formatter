printing
writeOn: aStream dateAndTime: aDateAndTime
	writers
		do: [ :each | "FOWriter subclass"
			each dateAndTime: aDateAndTime.
			each writeOn: aStream ]