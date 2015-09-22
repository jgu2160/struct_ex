# struct_ex

The Thing class inherits from the OpenStruct class in order to accept a hash as an argument and automatically created getters and setters based upon the keys. The type of a variable will automatically be based upon the type passed in. Finally, I made required attributes a class variable and accompanying method because this is a check that needs to be done on initialization, a point at which a user could possibly supply a hash of desired attributes/values.
