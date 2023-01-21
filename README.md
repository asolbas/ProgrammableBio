# AGENT-BASED SIMULATION OF A COOPERATIVE MICROBIAL CONSORTIA USING DUAL FEEDBACK CONTROL

## Overview

GitHub repository for the final project of the Programmable Biology Course in the MSc in Computational Biology (2022-2023 course). 

This project aims to model a a two-strain microbial consortia using the open-source software *gro* developed by the Klavins lab (<a href="https://doi.org/10.1021/acssynbio.7b00003" title="gro paper">Jang et al., 2012</a>). This tool is an agent-based simulator that can predict cell-to-cell interactions between each member in a microbial consortium. Motivated by the results of previous studies demonstrating stable population compositions, we present a simulation of a two member community of bacteria that can maintain a steady-state population of both members via quorum sensing and a toxin-antitoxin system.

## Dependencies 

- <a href="http://depts.washington.edu/soslab/gro/download.php" title="gro">gro beta.4</a>
- <a href="https://cran.r-project.org/bin/windows/base/" title="gro">R programming language</a>

## Running this project locally

1. Clone this project locally
2. Execute `gro.exe` file
3. Open one of the `.gro` simulation files 
4. Run the simulation

## Simulated data

The data collected in the 4 simulations can be found in the `Data` folder contained in this respository. The `results.R` script can be used to generate plots representing the number of cells of each strain over the simulated time. 
