# PetStore on Flow Blockchain

The `PetStore` is a simple smart contract deployed on the Flow blockchain that allows users to adopt pets and store information about them. This repository contains the contract code, a transaction script for adopting pets, and a script to retrieve all adopted pets.

## Table of Contents

- [Introduction](#introduction)
- [Contract Overview](#contract-overview)
- [Transaction Script](#transaction-script)
- [Query Script](#query-script)
- [Setup](#setup)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Introduction

The `PetStore` contract allows users to adopt pets by specifying their name, favorite toy, and age. Adopted pets are stored in an array, which can be queried to retrieve all the adopted pets. The contract is deployed on the Flow blockchain.

## Contract Overview

### `PetStore` Contract

The `PetStore` contract defines the following:

- **`Pet` Struct**: Represents a pet with the following properties:
  - `pet`: The name or type of the pet.
  - `toy`: The pet's favorite toy.
  - `age`: The age of the pet.

- **`pets` Array**: Stores all adopted pets as an array of `Pet` structs.

- **`Adopt` Function**: Allows users to adopt a pet by providing its name, favorite toy, and age. The new pet is added to the `pets` array.

### Example:

```cadence
pub contract PetStore {

  pub struct Pet {
    pub let pet: String
    pub let toy: String
    pub let age: Int

    init(pet: String, toy: String, age: Int) {
      self.pet = pet
      self.toy = toy
      self.age = age
    }
  }

  pub var pets: [Pet]

  pub fun Adopt(pet: String, toy: String, age: Int) {
    let newPet = Pet(pet: pet, toy: toy, age: age)
    self.pets.append(newPet)
  }

  init() {
    self.pets = []
  }
}
