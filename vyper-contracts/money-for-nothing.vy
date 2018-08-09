# r/millionairemakers/ example and pseudo-code
# a pseudo-lottery originally trying to solve r/millionairemakers problem of how to distibute funds
# in a decentralized manner.
# one difficulty was doing this without needing to have a random number generator. the solution
# chosen was to use pre-defined block numbers for seeds.
# written initially in vyper and then translated to solidity.


# intiating state variables
is_open: public(bool)
beneficiary: public(address)
players: {sender: address, value: wei_value}
stop_block: uint256
draw_block: uint256
ending_block: uint256

#     <------------ game_duration -----------><- 1 block -><---- offset ------>
#     |---------------------------------------|-----------|--------------------|
# Deploy block                           stop_block  draw_block          ending_block

@public
def __init__(_game_duration: uint256, _offset: uint256):
    self.game_duration =  # 240 ~= 1h
    self.stop_block = block.number + _game_duration 
    self.draw_block = self.stop_block + 1
    self.ending_block = self.draw_block + _offset        


# close contract to determine winner
def close_participations:
    # if self.open and timestamp > participation_limit:
        # self.open = False
    pass


@public
@payable
def participate():
    """
    pay to participate in the draw.

    """
    assert block.timestamp < self.deadline     
    assert msg.value == participation_cost # TODO: remove deprecated participation_cost

    self.pool[] = {sender: msg.sender}

# participate in the fund
@payable
def participate:
    pool[].append(msg.sender)
    pass

# get seed from block number
def get_seed:
    pass

# get pool index number of lucky winner
def get_winner:
    pass

# draw winner from list of pool
def draw:
    # random pick from pool using seed from
    # winner = random ^
    # beneficiary = winner
    pass


# send eth to winner
def finalize:

    assert block.
    # send(self.winner)
    selfdestruct(self.beneficiary)
    pass