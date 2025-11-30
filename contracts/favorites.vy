# pragma version 0.4.0 
# @license MIT

my_favorit_number: public(uint256)

@deploy
def __init__():
    self.my_favorit_number = 7

@external
def store(new_number: uint256):
    self.my_favorit_number = new_number


@external
@view
def retrieve() -> uint256:
    return self.my_favorit_number