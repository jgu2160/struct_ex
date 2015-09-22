# struct_ex

The Thing class inherits from the OpenStruct class in order to accept a hash as an argument and automatically creates getters and setters based upon the keys. The type of a value will automatically be based upon the type passed in. Finally, I made required attributes a class variable and accompanying method because this is a check that needs to be done on initialization, a point at which a user could possibly supply a hash of desired attributes/values. I opted for an existing Ruby structure because of the ease of implementation and better performance than I could create.
