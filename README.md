# AGENT-BASED SIMULATION OF A COOPERATIVE MICROBIAL CONSORTIA USING DUAL FEEDBACK CONTROL

## Overview

GitHub repository for the final project of the Programmable Biology Course in the MSc in Computational Biology (2022-2023 course). 

This project aims to model a a two-strain microbial consortia using the open-source software *gro* developed by the Klavins lab (<a href="https://doi.org/10.1021/acssynbio.7b00003" title="gro paper">Jang et al., 2012</a>). This tool is an agent-based simulator that can predict cell-to-cell interactions between each member in a microbial consortium. Motivated by the results of previous studies demonstrating stable population compositions, we present a simulation of a two member community of bacteria that can maintain a steady-state population of both members via quorum sensing and a toxin-antitoxin system.

## Dependencies 

- <a href="http://depts.washington.edu/soslab/gro/download.php" title="gro">gro beta.4</a>
- <a href="https://cran.r-project.org/" title="gro">R programming language</a>

## Running this project locally

1. Clone this project locally
2. Execute `gro.exe` file
3. Open one of the `.gro` simulation files 
4. Run the simulation

## Simulation files

There are 4 simulation files, one for each simulation performed for the project. The function used are the same, but some parameters such as the ccdB synthesis ratio or the initial number of cells vary from file to file to achieve different population behaviors: 

- **Stability**: `cooperation_data_stable.gro` and `cooperation_data.gro` files. 
- **Different density ratio between the two members of the community**: `cooperation_data_differentRatio.gro` file.
- **Extinction of one strain**: `cooperation_data_extinction.gro`

## Simulated data

The data collected in the 4 simulations can be found in the `Data` folder contained in this respository. The `results.R` script can be used to generate plots representing the number of cells of each strain over the simulated time. 

<a rel="license" href="http://creativecommons.org/licenses/by/3.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/3.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/3.0/">Creative Commons Attribution 3.0 Unported License</a>.
