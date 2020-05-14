# challengerutils

This package uses `reticulate` to wrap `challengeutils` to create the Synapse R challenge utility functions.


## Installation

This package requires the installation of Python > 3.6 and `challengeutils`. *NOTE*: This package will not work with `synapser`.  Do not load `library(synapser).` To use core Synapse client functions with this package, import the Python `synapseclient` like so: 

```
synapseclient <- import('synapseclient')
syn <- synapseclient$Synapse()
syn$login()
```

In command line, we recommend you using anaconda.  Instructions to install anaconda can be found [here].(https://docs.anaconda.com/anaconda/install/)

```
conda create -n challenge python=3.7
pip install challengeutils
```

In R:

```
devtools::install_github("Sage-Bionetworks/challengerutils")
```


## Usage

The functions will mimic the Python implementation of `challengeutils`.  Please see the [documentation here](https://sage-bionetworks.github.io/challengeutils/).

* Query Evaluation Queue
```
library(challengerutils)
use_condaenv('challenge')
synapseclient <- import('synapseclient')
syn <- synapseclient$Synapse()
syn$login()

leaderboard_results <- evaluation_queue_query(syn, 'select * from evaluation_9614194')
```
