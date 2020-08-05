private
parse
	| tokenClass |
	tokenClass := self charatcerToTokenClassMap at: character ifAbsent: [  
		^ FOCharacterToken new character: character
	].
	^tokenClass new