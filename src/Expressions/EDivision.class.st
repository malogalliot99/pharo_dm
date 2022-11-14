Class {
	#name : #EDivision,
	#superclass : #EBinaryExpression,
	#category : #Expressions
}

{ #category : #'instance creation' }
EDivision class >> fiveOverTwo [
	^self left: EConstant constant5 right: (EConstant value:2)
]

{ #category : #'instance creation' }
EDivision class >> left: ep1 right: ep2 [
	^self new left: ep1; right: ep2
]

{ #category : #accessing }
EDivision >> accept: aVisitor [
	^aVisitor visitDivision: self
]

{ #category : #accessing }
EDivision >> evaluateWith: anObject [
	(right evaluateWith: anObject) = 0 ifTrue: [ ^'error']
	ifFalse: [	^(left evaluateWith: anObject) / (right evaluateWith: anObject)]
]

{ #category : #accessing }
EDivision >> operatorString [
	^' / '
]
