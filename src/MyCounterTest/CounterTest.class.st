Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #MyCounterTest
}

{ #category : #tests }
CounterTest >> testCounterDecrement [
| c |
c := Counter new.
c count: 7.
c decrement; decrement.
self assert: c count equals: 5
]

{ #category : #tests }
CounterTest >> testCounterIncrement [
| c |
c := Counter new.
c count: 7.
c increment; increment.
self assert: c count equals: 9
]

{ #category : #tests }
CounterTest >> testCounterInitialize [
| c |
c := Counter new.
self assert: c count equals: 0
]

{ #category : #tests }
CounterTest >> testCounterIsSetAndRead [
| c |
c := Counter new.
c count: 7.
self assert: c count equals: 7
]

{ #category : #tests }
CounterTest >> testCounterStartsAt5 [
| c |
c := Counter startingAt: 5.
self assert: c count equals: 5
]
