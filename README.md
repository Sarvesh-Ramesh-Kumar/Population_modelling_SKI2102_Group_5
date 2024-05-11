# Population_modelling
## Project Description

DOCUMENTATION FILE! :))))

Task 1: Describe in your own words (max 300 words) the model and model parameters: How do the populations of the three species change in the model? What do the parameters represent? Add some documentation to the Matlab file of the model
ssss

### Aim 
The aim of this project is to study the different kinds of behaviours that are depicted by an interacting species system through the formulation of a system of ordinary differential equations (ODEs) for each of its components. The model is a three species model, composed of plants, hares and lynxes. It studies and represents the population changes depending on the interactions between the three species specified by multiple modifiable parameters that govern the system. Such a model has the capability to represent (un)stable equilibriums, periodic cycles, chaotic behaviours, limit cycles, etc depending on the different parameter settings. 

This project aims to model the stable oscillations between the three, stable equilibrium but the lynx perish and chaotic oscillations between the three. The calculated modifications of such parameters is the key to the formulation of three different scenarios that have been described. The code has been written using MATLAB (.mlx file). 

### Variable description
These parameters include; 
-  ***y0*** - initial population sizes of each species
-  ***alpha*** (1 and 2) - representing the predation success rate for both predators on their respective preys, this being a1 for the hare predation success rate on the plant and a2 for the lynx predation rate on the hare. 
-  ***beta (1 and 2)*** - representing the population growth rate due to predation, b1 and b2 being the population growth rate of the hare from predation on plants and the lynx from predation on hare respectively. 
-  ***delta (1 and 2)*** - represents the per capita death rate of the hare (d1) and the lynx (d2)

