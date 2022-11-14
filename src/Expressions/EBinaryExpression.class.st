Class {
	#name : #EBinaryExpression,
	#superclass : #EExpression,
	#instVars : [
		'left',
		'right'
	],
	#category : #Expressions
}

{ #category : #accessing }
EBinaryExpression >> left [
	^left
]

{ #category : #accessing }
EBinaryExpression >> left: anExpression [
	left := anExpression
]

{ #category : #accessing }
EBinaryExpression >> operatorString [
	^self subclassResponsibility
]

{ #category : #accessing }
EBinaryExpression >> printOn: aStream [
	aStream nextPutAll: self printString.
	^aStream
]

{ #category : #accessing }
EBinaryExpression >> printString [
	^'(', left printString, self operatorString, right printString, ')'
]

{ #category : #accessing }
EBinaryExpression >> right [
	^right
]

{ #category : #accessing }
EBinaryExpression >> right: anExpression [
	right := anExpression
]
