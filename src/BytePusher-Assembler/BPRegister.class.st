Class {
	#name : #BPRegister,
	#superclass : #BPLayoutObject,
	#instVars : [
		'address'
	],
	#category : #'BytePusher-Assembler-Memory'
}

{ #category : #'instance creation' }
BPRegister class >> name: name address: address [
	^ self new
		name: name;
		address: address;
		yourself
]

{ #category : #visiting }
BPRegister >> acceptVisitor: aBPAssemblerVisitor [
	<generated>
	^ aBPAssemblerVisitor visitBPRegister: self
]

{ #category : #accessing }
BPRegister >> address [
	^ address
]

{ #category : #accessing }
BPRegister >> address: anObject [
	address := anObject asBPAddress
]

{ #category : #converting }
BPRegister >> asBPAddress [
	^ self address
]

{ #category : #accessing }
BPRegister >> endAddress [
	"Registers old 1 Byte of data."
	^ self address
]

{ #category : #testing }
BPRegister >> isRegister [
	^ true
]

{ #category : #accessing }
BPRegister >> startAddress [
	^ self address
]

{ #category : #accessing }
BPRegister >> typeName [
	^ 'Register'
]