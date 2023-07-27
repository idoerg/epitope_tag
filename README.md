# EpicTope

Simplified code for identifying ideal epitope tag insertion sites for proteins. NEED A MORE COMPREHENSIVE DESCRIPTION. SEE https://gitlab.pasteur.fr/gletort/dextrusion
REMOVE  COLLOQUIALS LIKE "CONFIG", "INSTALL" (AS A NOUN), AND JARGON LIKE "BLASTABLE"
## Table of Contents

- [Dependencies](#dependencies)
- [Installation](#installation)
- [Usage](#usage)

## Dependencies

To calculate the multiple sequence alignment and secondary characteristics, `epictope` relies on local installs of BLAST, muscle, and dssp. These packages can be installed using conda, an open-source package management system and environment management system that runs on Windows, macOS, and Linux. Conda installers can be found at the Anaconda [website](https://www.anaconda.com/). Once installed, youmay run the follow commands to install the requisite packages. These commands will create a conda environment named "epictope", and install the requisite packages into that environment. 

```

CREATE A RECIPE FOR THIS. OR A RUNNABLE SCRIPT. NEED SEPARATE INSTRUCTIONS FOR MAC AND WINDOWS.
conda create -n epictope
conda activate epictope
conda install -c bioconda blast
conda install -c bioconda muscle
conda install -c salilab dssp
conda install -c conda-forge r-base
conda install -c conda-forge r-stringi
conda install -c conda-forge r-openssl
```
## Installation

Once dependencies have been installed, you will need to install the `epictope` R package from this github repoSITORY. We can use the `remotes` package to do this. Run the following lines in your R installATION. I DON'T THINK YOUR READERSHIP WILL UNDERSTAND THIS PART.

```
HOW IS A BIOLOGIST ON WINDOWS (OR MAC) SUPPOSED TO KNOW WHAT TO DO WITH THIS.
if (!requireNamespace("remotes", quietly = TRUE)) {
    install.packages("remotes")
}
remotes::install_github("henrichung/epitope_tag")
```

If you do not want to open R itself and are working entirely from the terminal, you can use

```
Rscript -e "if (!requireNamespace('remotes', quietly = TRUE)) install.packages('remotes'); remotes::install_github('henrichung/epitope_tag')"
```
## Usage

#### Workflows
Example workflows with the `epictope` package are available in the **vignettes** folder. Workflows are available as both R Markdown Documents and Jupyter notebooks. These workflows go through the `epictope` workflow step by step in an interactive session or an IDE.

#### Wrappers
Alternatively, the wrapper scripts `install.R` and `single_score.R` are provided in the **scripts** folder of this repo to enable one-touch instant operation.
To run, download the `install.R` and `single_score.R` scripts and place them into your current project directory in a *code* folder. Your project directory should look as follows;

You can fetch these files using wget

```
IS THERE WGET IN WINDOWS? 
wget https://raw.githubusercontent.com/henrichung/epitope_tag/main/scripts/install.R
wget https://raw.githubusercontent.com/henrichung/epitope_tag/main/scripts/single_score.R
```

From the terminal, the scripts can be run as follows. WHAT IS A "TERMINAL" ASKED THE BIOLOGIST ON WINDOWS?
```
Rscript install.R # this downloads and creates the blasteable  WHAT IS "BALSTEDABLE"?  databases for the MSA
Rscript single_score "P57102" # replace 'P57102' with the UniprotID for your protein of interest.
```



Additionally, an example `config.R` file is provided to change any of the user-customizeable values during feature scoring. The values listed in the example configURATION are the default values used by `epictope`. THAT IS  CONFUSING.
