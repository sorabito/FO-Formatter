actions
writeOn: aStream
	tokens do: [ :each | aStream nextPut: each character ]