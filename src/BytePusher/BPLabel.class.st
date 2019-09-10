Class {
	#name : #BPLabel,
	#superclass : #Object,
	#instVars : [
		'label',
		'address'
	],
	#category : #'BytePusher-Assembly'
}

{ #category : #'instance creation' }
BPLabel class >> label: label address: address [
	^ self new
		label: label;
		address: address;
		yourself
]

{ #category : #accessing }
BPLabel >> address [
	^ address
]

{ #category : #accessing }
BPLabel >> address: anObject [
	address := anObject
]

{ #category : #converting }
BPLabel >> asBPAddress [
	^ self address
]

{ #category : #accessing }
BPLabel >> label [
	^ label
]

{ #category : #accessing }
BPLabel >> label: anObject [
	label := anObject
]