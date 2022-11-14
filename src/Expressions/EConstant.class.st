Class {
	#name : #EConstant,
	#superclass : #EExpression,
	#instVars : [
		'value'
	],
	#category : #Expressions
}

{ #category : #'as yet unclassified' }
EConstant class >> constant3 [
	^self new value:3
]

{ #category : #'as yet unclassified' }
EConstant class >> constant5 [
	^self new value:5
]

{ #category : #'as yet unclassified' }
EConstant class >> value: aValue [
	^self new value:aValue
]

{ #category : #'public access' }
EConstant >> accept: aVisitor [
	^aVisitor visitConstant: self
]

{ #category : #'public access' }
EConstant >> evaluateWith: anObject [
	^value
]

{ #category : #'public access' }
EConstant >> printOn: aStream [
	aStream nextPutAll: self printString.
	^aStream
]

{ #category : #'public access' }
EConstant >> printString [
	^(self evaluateWith: Dictionary new) asString
]

{ #category : #'public access' }
EConstant >> value: aValue [
	value := aValue
]
