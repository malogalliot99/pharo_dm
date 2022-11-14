Class {
	#name : #EDivisionTest,
	#superclass : #TestCase,
	#category : #Expressions
}

{ #category : #tests }
EDivisionTest >> testDeclaration [
	|ep1 ep2 division|
	ep1 := EConstant value: 5.
	ep2 := EConstant value: 3.
	division := EMultiplication new.
	division left: ep1.
	division right: ep2.
	self assert: (division left evaluateWith: Dictionary new) equals:5.
	self assert: (division right evaluateWith: Dictionary new) equals:3.
]

{ #category : #tests }
EDivisionTest >> testDeclarationWithClass [
	self assert: ((EDivision left:EConstant constant5 right: (EConstant value:2)) evaluateWith: Dictionary new) equals:2.5
]

{ #category : #tests }
EDivisionTest >> testEvaluate [
	self assert: (EDivision fiveOverTwo evaluateWith: Dictionary new) equals: 2.5
]

{ #category : #tests }
EDivisionTest >> testFiveOverTwo [
	self assert: (EDivision fiveOverTwo evaluateWith: Dictionary new) equals:2.5
]

{ #category : #tests }
EDivisionTest >> testNegated [
	self assert: (EDivision fiveOverTwo negated evaluateWith: Dictionary new) equals: -2.5
]

{ #category : #tests }
EDivisionTest >> testPrinting [
	self assert: EDivision fiveOverTwo printString equals: '(5 / 2)'
]

{ #category : #tests }
EDivisionTest >> testPrintingNegated [
	self assert: EDivision fiveOverTwo negated printString equals: '- (5 / 2)'
]
