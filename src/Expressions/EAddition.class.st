Class {
	#name : #EAddition,
	#superclass : #EBinaryExpression,
	#category : #Expressions
}

{ #category : #'instance creation' }
EAddition class >> fivePlusThree [
	^self new left:(EConstant value:5); right:(EConstant value:3)
]

{ #category : #'instance creation' }
EAddition class >> left: ep1 right: ep2 [
	^self new left: ep1; right: ep2
]

{ #category : #accessing }
EAddition >> evaluateWith: anObject [
	^(left evaluateWith: anObject) + (right evaluateWith: anObject)
]

{ #category : #accessing }
EAddition >> operatorString [
	^' + '
]
