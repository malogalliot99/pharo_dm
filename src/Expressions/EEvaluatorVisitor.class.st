Class {
	#name : #EEvaluatorVisitor,
	#superclass : #Object,
	#category : #Expressions
}

{ #category : #visiting }
EEvaluatorVisitor >> visitAddition: anAddition [
	^anAddition evaluateWith: Dictionary new
]

{ #category : #visiting }
EEvaluatorVisitor >> visitConstant: aConstant [
	^aConstant evaluateWith: Dictionary new
]

{ #category : #visiting }
EEvaluatorVisitor >> visitDivision: aDivision [
	^aDivision evaluateWith: Dictionary new
]

{ #category : #visiting }
EEvaluatorVisitor >> visitMultiplication: aMultiplication [
	^aMultiplication evaluateWith: Dictionary new
]

{ #category : #visiting }
EEvaluatorVisitor >> visitNegation: aNegation [
	^aNegation evaluateWith: Dictionary new
]
