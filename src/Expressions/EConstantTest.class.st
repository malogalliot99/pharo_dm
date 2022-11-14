Class {
	#name : #EConstantTest,
	#superclass : #TestCase,
	#category : #Expressions
}

{ #category : #tests }
EConstantTest >> testConstant3 [
	self assert: (EConstant constant3 evaluateWith: Dictionary new) equals:3
]

{ #category : #tests }
EConstantTest >> testConstant5 [
	self assert: (EConstant constant5 evaluateWith: Dictionary new) equals:5
]

{ #category : #tests }
EConstantTest >> testDeclarationWithClass [
	self assert: ((EConstant value:5) evaluateWith: Dictionary new) equals:5
]

{ #category : #tests }
EConstantTest >> testEvaluate [
	self assert: ((EConstant new value:5) evaluateWith: Dictionary new) equals:5
]

{ #category : #tests }
EConstantTest >> testNegated [
	self assert: (EConstant constant5 negated evaluateWith: Dictionary new) equals:-5
]

{ #category : #tests }
EConstantTest >> testPrinting [
	self assert: (EConstant new value: 5) printString equals:'5'
]
