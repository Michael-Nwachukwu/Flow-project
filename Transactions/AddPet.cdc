// Import the PetStore contract from the address 0x05 on the Flow blockchain
import PetStore from 0x05 // This contract is deployed at address 0x05 on play.flow.com

// Define a transaction that allows a user to adopt a pet
transaction(pet: String, toy: String, age: Int) {

    // The prepare phase is where you can access and modify the signer's account.
    // The `signer` parameter represents the account that is signing the transaction.
    prepare(signer: AuthAccount) {
        // No specific actions are needed in this phase for this transaction
    }

    // The execute phase is where the main logic of the transaction is performed.
    execute {
        // Call the Adopt function from the PetStore contract
        // This adds a new pet with the specified details to the PetStore
        PetStore.Adopt(pet: pet, toy: toy, age: age)
    }
}
