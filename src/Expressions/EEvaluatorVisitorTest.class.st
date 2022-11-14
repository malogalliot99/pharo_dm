Class {
	#name : #EEvaluatorVisitorTest,
	#superclass : #TestCase,
	#category : #Expressions
}

{ #category : #tests }
EEvaluatorVisitorTest >> testVisitAdditionReturnsAdditionResult [
	self assert: (EAddition fivePlusThree accept: EEvaluatorVisitor new) equals: 8
]

{ #category : #tests }
EEvaluatorVisitorTest >> testVisitConstantReturnsConstantValue [
	self assert: (EConstant constant5 accept: EEvaluatorVisitor new) equals: 5
]

{ #category : #tests }
EEvaluatorVisitorTest >> testVisitDivisionByZeroThrowsException [
	| expression |
	expression := EDivision left: EConstant constant5 right:(EConstant value:0).
	self assert: (expression accept: EEvaluatorVisitor new) equals: 'error'
]

{ #category : #tests }
EEvaluatorVisitorTest >> testVisitDivisionReturnsDivisionResult [
	self assert: (EDivision fiveOverTwo accept: EEvaluatorVisitor new) equals: 2.5.
]

{ #category : #tests }
EEvaluatorVisitorTest >> testVisitMultiplicationReturnsMultiplicationResult [
	self assert: (EMultiplication fiveTimesThree accept: EEvaluatorVisitor new) equals: 15
]

{ #category : #tests }
EEvaluatorVisitorTest >> testVisitNegationReturnsNegationResult [
	self assert: (ENegation negative5 accept: EEvaluatorVisitor new) equals: -5
]
