# pragma version 0.4.0 
# @license MIT

struct Person:
    favorite_number: uint256
    name: String[100]

struct Person_id:
    name: String[100]
    index: address




my_favorite_number: public(uint256)
list_of_numbers: public(uint256[5])
list_of_people: public(Person[5])
index: public(uint256)

name_to_favorite_number: public(HashMap[String[100], uint256])

@deploy
def __init__():
    self.my_favorite_number = 7
    self.index = 0
    

@external
def store(new_number: uint256):
    self.my_favorite_number = new_number

@external
def add() -> uint256:
    return self.my_favorite_number + 1

@external
@view
def retrieve() -> uint256:
    if self.my_favorite_number == 7:
        return self.my_favorite_number
    else :
        return 0


@external
def add_person(favorite_number: uint256, name: String[100]):
    self.list_of_numbers[self.index] = favorite_number
    new_person: Person = Person(favorite_number=favorite_number, name=name)
    self.list_of_people[self.index] = new_person
    self.name_to_favorite_number[name] = favorite_number
    self.index +=1

@external
def ad_id(name:String[100], index: address):
    new_id:Person_id= Person_id(name= name, index= msg.sender) 
