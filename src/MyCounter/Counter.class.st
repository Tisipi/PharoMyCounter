"
Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

For the Class part:  State a one line summary. For example, ""I represent a paragraph of text"".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	count:		<Object>


    Implementation Points

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
