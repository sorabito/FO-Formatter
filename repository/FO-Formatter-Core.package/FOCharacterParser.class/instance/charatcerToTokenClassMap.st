accessing
charatcerToTokenClassMap
	^ charatcerToTokenClassMap ifNil: [ charatcerToTokenClassMap := self createCharatcerToTokenClassMap]