# Li_workinggroup_demo
Demo collaboration in github

## Penguins Data Analysis

This repository contains an R script that analyzes the Palmer Penguins dataset.

### Features

- Displays the Palmer Penguins data table with all observations
- Shows summary statistics for the dataset
- Creates a time series visualization showing penguin counts by species over time (2007-2009)
- Saves the plot as a high-resolution PNG file

### Requirements

- R (version 4.0 or higher)
- R packages:
  - `palmerpenguins`
  - `ggplot2`
  - `dplyr`

### Installation

Install the required R packages:

```r
install.packages(c("palmerpenguins", "ggplot2", "dplyr"))
```

Or on Ubuntu/Debian:

```bash
sudo apt-get install r-cran-palmerpenguins r-cran-ggplot2 r-cran-dplyr
```

### Usage

Run the analysis script:

```bash
Rscript penguins_analysis.R
```

This will:
1. Print the penguins dataset to the console
2. Display summary statistics
3. Create and display a time series plot
4. Save the plot as `penguins_timeseries.png`

### Output

The script generates a time series plot showing the number of penguins observed for each species (Adelie, Chinstrap, and Gentoo) across the years 2007-2009.

