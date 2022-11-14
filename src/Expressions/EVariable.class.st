Class {
	#name : #EVariable,
	#superclass : #EExpression,
	#instVars : [
		'id'
	],
	#category : #Expressions
}

{ #category : #accessing }
EVariable >> evaluateWith: aBindingDictionnary [
	^aBindingDictionnary at: id
]

{ #category : #accessing }
EVariable >> id [
	^id
]

{ #category : #accessing }
EVariable >> id: aSymbol [
	id := aSymbol
]

{ #category : #accessing }
EVariable >> printOn: aStream [
	aStream nextPutAll: id asString.
	 ^aStream
]
