Class {
	#name : #BPNextInstructionReference,
	#superclass : #BPReferenceToResolve,
	#instVars : [
		'offset',
		'byteIndex'
	],
	#category : #'BytePusher-Assembler-Model'
}

{ #category : #'instance creation' }
BPNextInstructionReference class >> offset: offset [
	^ self new
		offset: offset;
		yourself
]

{ #category : #'instance creation' }
BPNextInstructionReference class >> offset: offset byteIndex: byteIndex [
	^ self new
		offset: offset;
		byteIndex: byteIndex;
		yourself
]

{ #category : #visiting }
BPNextInstructionReference >> acceptVisitor: aBPAssemblerVisitor [
	<generated>
	^ aBPAssemblerVisitor visitBPNextInstructionReference: self
]

{ #category : #converting }
BPNextInstructionReference >> asDataAccess [
	^ BPAddressDataAccess new
		address: self;
		yourself
]

{ #category : #converting }
BPNextInstructionReference >> asDataReference [
	^ BPAddressDataReference new
		address: self;
		yourself
]

{ #category : #accessing }
BPNextInstructionReference >> byteIndex [
	^ byteIndex
]

{ #category : #accessing }
BPNextInstructionReference >> byteIndex: anObject [
	byteIndex := anObject
]

{ #category : #initialization }
BPNextInstructionReference >> initialize [
	super initialize.
	self
		offset: 0;
		byteIndex: 0
]

{ #category : #accessing }
BPNextInstructionReference >> offset [
	^ offset
]

{ #category : #accessing }
BPNextInstructionReference >> offset: anObject [
	offset := anObject
]
