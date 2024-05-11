# Population_modelling
Authors : add names here !
## Project Description

### Aim 
The aim of this project is to study the different kinds of behaviours that are depicted by an interacting species system through the formulation of a system of ordinary differential equations (ODEs) for each of its components. The model is a three species model, composed of plants, hares and lynxes. It studies and represents the population changes depending on the interactions between the three species specified by multiple modifiable parameters that govern the system. Such a model has the capability to represent (un)stable equilibriums, periodic cycles, chaotic behaviours, limit cycles, etc depending on the different parameter settings. 
This project aims to model the stable oscillations between the three, stable equilibrium but the lynx perish and chaotic oscillations between the three. The calculated modifications of such parameters is the key to the formulation of three different scenarios that have been described. The code has been written using MATLAB (.mlx file). 

### Variable description
These parameters include; 
* ***y0*** - initial population sizes of each species;  [plant, hare, lynx] format
* ***a*** - representing the predation success rate for both predators on their respective preys
  - *a1* for the hare predation success rate on the plant
  - *a2* for the lynx predation success rate on the hare 
* ***b*** - representing the population growth rate for both predators due to predation
  - *b1* for the hare population growth rate from plant predation
  - *b2* for the lynx population growth rate from hare predation
* ***d*** - represents the per capita death rate of the predators
  - *d1* for hare death rate
  - *d2* for lynx death rate

 ### References 
* https://modelinginbiology.github.io/Grass-Sheep-Wolves-interactive-simulations
* https://sysbio.mx/wp-content/uploads/2021/02/2017_Book_ModelingLife.pdf


