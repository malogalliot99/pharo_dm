Class {
	#name : #ENegationTest,
	#superclass : #TestCase,
	#category : #Expressions
}

{ #category : #tests }
ENegationTest >> testEvaluate [
	self assert: ((ENegation expression: EConstant constant5) evaluateWith: Dictionary new) equals:-5
]

{ #category : #tests }
ENegationTest >> testNegatedStructureIsCorrect [
	| exp |
	exp := EConstant constant5.
	self assert: exp negated class equals: ENegation.
	self assert: exp negated negated equals: exp.
]

{ #category : #tests }
ENegationTest >> testNegationNegated [
	self assert: (EConstant constant5 negated negated evaluateWith: Dictionary new) equals:5
]

{ #category : #tests }
ENegationTest >> testNegationNegatedPrinting [
	self assert: EConstant constant5 negated negated printString equals:'5'
]

{ #category : #tests }
ENegationTest >> testPrinting [
	self assert: (ENegation expression: EConstant constant5) printString equals:'- 5'
]
