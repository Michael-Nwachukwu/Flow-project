// Import the PetStore contract from the address 0x05 on the Flow blockchain
import PetStore from 0x05

// Define a read-only script to retrieve all pets in the PetStore
pub fun main(): [PetStore.Pet] {
    // Return the array of pets stored in the PetStore contract
    return PetStore.pets
}
