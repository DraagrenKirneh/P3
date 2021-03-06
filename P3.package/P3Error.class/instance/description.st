accessing
description
	"Return a textual description of the exception."

	^ String streamContents: [ :stream | | mt |
		stream << self class name << ' PostgreSQL '.
		(mt := self messageText) isEmptyOrNil
			ifFalse: [ stream << mt ] ]