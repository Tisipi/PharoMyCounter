"
Simmpler counter used in Pharo MooC.
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'counter'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter class >> startingAt: anInteger [
	^ self new count: anInteger 

]

{ #category : #accessing }
Counter >> count [
	^ counter
]

{ #category : #accessing }
Counter >> count: anInteger [
	counter := anInteger 
]

{ #category : #accessing }
Counter >> decrement [
	counter := counter - 1.
		^ self
]

{ #category : #accessing }
Counter >> increment [
	counter := counter + 1.
	^ self
]

{ #category : #accessing }
Counter >> initialize [ 
	super initialize.
	counter := 0. 
]

{ #category : #accessing }
Counter >> printOn: aStream [ 
	super printOn: aStream.
	aStream nextPutAll: ' with Value ' , counter printString.
	aStream cr.
]
