"""Functions used in preparing Guido's gorgeous lasagna.

Learn about Guido, the creator of the Python language:
https://en.wikipedia.org/wiki/Guido_van_Rossum

This is a module docstring, used to describe the functionality
of a module and its functions and/or classes.
"""

EXPECTED_BAKE_TIME  = 40
PREPARATION_TIME = 2

def bake_time_remaining(elapsed_baked_time):
    """Calculate the bake time remaining.

    :param elapsed_bake_time: int - baking time already elapsed.
    :return: int - remaining bake time (in minutes) derived from 'EXPECTED_BAKE_TIME'.

    Function that takes the actual minutes the lasagna has been in the oven as
    an argument and returns how many minutes the lasagna still needs to bake
    based on the `EXPECTED_BAKE_TIME`.
    """

    return EXPECTED_BAKE_TIME - elapsed_baked_time

def preparation_time_in_minutes(number_of_layers):
    """Calculate the preparation time.

    :param number_of_layers: int - number of layers the lasagna have.
    :return: int - preparation time in minutes needed for the lasagna

    Function that takes the number of layers our lasagna have and then returns
    how many minutes it will take to prepare the lasagna.
    """
    
    return number_of_layers * PREPARATION_TIME

def elapsed_time_in_minutes(number_of_layers, elapsed_bake_time):
    """Calculate the time needed for finishing the lasagna.

    :param number_of_layers: int - number of layers the lasagna have.
    :param elapsed_bake_time: int - number of minutes the lasagna will bake
    :return: int - preparation time in minutes needed for the lasagna

    Function that takes the number of layers our lasagna have and also the bake time
    and then returns how many minutes it will take to prepare and bake the lasagna.
    """
    
    return preparation_time_in_minutes(number_of_layers) + elapsed_bake_time