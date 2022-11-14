Class {
	#name : #EMultiplicationTest,
	#superclass : #TestCase,
	#category : #Expressions
}

{ #category : #tests }
EMultiplicationTest >> testDeclaration [
	|ep1 ep2 multiplication|
	ep1 := EConstant value: 5.
	ep2 := EConstant value: 3.
	multiplication := EMultiplication new.
	multiplication left: ep1.
	multiplication right: ep2.
	self assert: (multiplication left evaluateWith: Dictionary new) equals:5.
	self assert: (multiplication right evaluateWith: Dictionary new) equals:3.
]

{ #category : #tests }
EMultiplicationTest >> testDeclarationWithClass [
	self assert: ((EMultiplication left:EConstant constant5 right: EConstant constant3) evaluateWith: Dictionary new) equals:15
]

{ #category : #tests }
EMultiplicationTest >> testEvaluate [
	self assert: (EMultiplication fiveTimesThree evaluateWith: Dictionary new) equals: 15
]

{ #category : #tests }
EMultiplicationTest >> testFiveTimesThree [
	self assert: (EMultiplication fiveTimesThree evaluateWith: Dictionary new) equals:15
]

{ #category : #tests }
EMultiplicationTest >> testNegated [
	self assert: (EMultiplication fiveTimesThree negated evaluateWith: Dictionary new) equals: -15
]

{ #category : #tests }
EMultiplicationTest >> testPrinting [
	self assert: EMultiplication fiveTimesThree printString equals: '(5 * 3)'
]

{ #category : #tests }
EMultiplicationTest >> testPrintingNegated [
	self assert: EMultiplication fiveTimesThree negated printString equals: '- (5 * 3)'
]
