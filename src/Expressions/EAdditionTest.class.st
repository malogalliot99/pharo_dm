Class {
	#name : #EAdditionTest,
	#superclass : #TestCase,
	#category : #Expressions
}

{ #category : #tests }
EAdditionTest >> testDeclaration [
	|ep1 ep2 addition|
	ep1 := EConstant value: 5.
	ep2 := EConstant value: 3.
	addition := EAddition new.
	addition left: ep1.
	addition right: ep2.
	self assert: (addition left evaluateWith: Dictionary new) equals:5.
	self assert: (addition right evaluateWith: Dictionary new) equals:3.
]

{ #category : #tests }
EAdditionTest >> testDeclarationWithClass [
	self assert: ((EAddition left:EConstant constant5 right: EConstant constant3) evaluateWith: Dictionary new) equals:8
]

{ #category : #tests }
EAdditionTest >> testEvaluate [
	self assert: ((EAddition fivePlusThree) evaluateWith: Dictionary new) equals: 8
]

{ #category : #tests }
EAdditionTest >> testFivePlusThree [
	self assert: (EAddition fivePlusThree evaluateWith: Dictionary new) equals:8
]

{ #category : #tests }
EAdditionTest >> testNegated [
	self assert: (EAddition fivePlusThree negated evaluateWith: Dictionary new) equals:-8.
]

{ #category : #tests }
EAdditionTest >> testPrinting [
	self assert: EAddition fivePlusThree printString equals:'(5 + 3)'
]

{ #category : #tests }
EAdditionTest >> testPrintingNegated [
	self assert: EAddition fivePlusThree negated printString equals: '- (5 + 3)'
]
