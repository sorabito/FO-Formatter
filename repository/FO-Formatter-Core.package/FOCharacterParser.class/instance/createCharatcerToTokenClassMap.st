factory
createCharatcerToTokenClassMap
	^ ((FOToken allSubclasses select: [ :each | each character notNil ]) collect: [ :each | each character -> each ])
		asDictionary