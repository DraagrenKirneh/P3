accessing
host
	"Return the host name I (want to) connect to.
	The default is localhost."

	^ settings at: #host ifAbsentPut: [ 'localhost' ]