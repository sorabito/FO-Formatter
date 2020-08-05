baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec 
			package: 'FO-Formatter-Core'.
		"spec 
			package: 'FO-Formatter-Tests'."
		spec 
			group: 'default' with: #('Core');
			"group: 'Tests' with: #('FO-Formatter-Tests');"
			group: 'Core' with: #('FO-Formatter-Core')].
