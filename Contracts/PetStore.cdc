// Define the PetStore contract
pub contract PetStore {

  // Define a struct to represent a Pet
  pub struct Pet {
    // The type of the pet (e.g., "Dog", "Cat")
    pub let pet: String
    // The pet's favorite toy (e.g., "Ball", "Frisbee")
    pub let toy: String
    // The age of the pet in years
    pub let age: Int

    // Constructor to initialize a new Pet struct
    init(pet: String, toy: String, age: Int) {
      self.pet = pet  // Assign the pet name/type
      self.toy = toy  // Assign the pet's toy
      self.age = age  // Assign the pet's age
    }
  }

  // Declare a public variable to store an array of Pet structs
  pub var pets: [Pet]

  // Function to allow users to adopt a pet
  pub fun Adopt(pet: String, toy: String, age: Int) {
    // Create a new Pet struct with the provided details
    let newPet = Pet(pet: pet, toy: toy, age: age)
    // Append the new Pet to the pets array
    self.pets.append(newPet)
  }

  // Constructor to initialize the PetStore contract
  init() {
    // Start with an empty array of pets
    self.pets = []
  }
}
