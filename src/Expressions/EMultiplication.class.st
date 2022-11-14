Class {
	#name : #EMultiplication,
	#superclass : #EBinaryExpression,
	#category : #Expressions
}

{ #category : #'instance creation' }
EMultiplication class >> fiveTimesThree [
	^self new left: EConstant constant5; right: EConstant constant3
]

{ #category : #'instance creation' }
EMultiplication class >> left: ep1 right: ep2 [
	^self new left: ep1; right: ep2
]

{ #category : #accessing }
EMultiplication >> evaluateWith: anObject [
	^(left evaluateWith: anObject) * (right evaluateWith: anObject)
]

{ #category : #accessing }
EMultiplication >> operatorString [
	^' * '
]
