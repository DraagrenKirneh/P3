benchmarking
runBenchmark1
	| result timeToRun |
	result := nil.
	self setUp.
	timeToRun := [ result := client query: 'SELECT * FROM benchmark1' ] timeToRun.
	self assert: result third size equals: self benchmark1Size.
	self tearDown.
	^ timeToRun 