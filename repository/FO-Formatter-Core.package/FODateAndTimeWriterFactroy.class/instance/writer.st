accessing
writer
	| tokenClass writerClass|
	tokenClass := tokens first class.
	writerClass := tokenClass writerClass.
	^ writerClass tokens: tokens.
	
	