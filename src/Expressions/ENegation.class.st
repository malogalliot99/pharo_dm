Class {
	#name : #ENegation,
	#superclass : #EExpression,
	#instVars : [
		'expression'
	],
	#category : #Expressions
}

{ #category : #'instance creation' }
ENegation class >> expression: anExpression [
	^self new expression: anExpression
]

{ #category : #'instance creation' }
ENegation class >> negative5 [
	^self new expression: EConstant constant5.
]

{ #category : #accessing }
ENegation >> accept: aVisitor [
	^aVisitor visitNegation: self
]

{ #category : #accessing }
ENegation >> evaluateWith: anObject [
	^(expression evaluateWith: anObject) *(-1)
]

{ #category : #accessing }
ENegation >> expression [
	^expression
]

{ #category : #accessing }
ENegation >> expression: anExpression [
	expression := anExpression
]

{ #category : #accessing }
ENegation >> negated [
	^expression
]

{ #category : #accessing }
ENegation >> printString [
	^'- ', expression printString
]
