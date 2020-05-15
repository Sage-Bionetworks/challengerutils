# challengerutils

This package uses `reticulate` to wrap `challengeutils` to create the Synapse R challenge utility functions.


## Installation

This package requires the installation of Python > 3.6 and `challengeutils`. *NOTE*: This package will not work with `synapser`.  Do not load `library(synapser)` into an R environment that has loaded `library(challengerutils)`

In command line, we recommend you using anaconda.  Instructions to install anaconda can be found [here](https://docs.anaconda.com/anaconda/install/).

```
conda create -n challenge python=3.7
pip install challengeutils
```

In R:

```
remotes::install_github("Sage-Bionetworks/challengerutils")
```


## Usage

The functions will mimic the Python implementation of `challengeutils`.  Please see the [documentation here](https://sage-bionetworks.github.io/challengeutils/).  

* Load `challengerutils` package

```
library(challengerutils)
reticulate::use_condaenv('challenge')
# Must run syn_login() to use any of the function below
challengerutils::syn_login()
```

* Query Evaluation Queue
```
leaderboard_results <- challengerutils::evaluation_queue_query('select * from evaluation_9614194')
```

* Change submisison status

```
status <- challengerutils::change_submission_status("9698553", status="RECEIVED")
```

## synapseclient

As noted above, `library(reticulate)`-based packages like `challengerutils` are not compatible with `synapser`. To use core Synapse client functions in the same R environment as the `challengerutils` package, import the Python `synapseclient` using `reticulate`:

```
synapseclient <- reticulate::import('synapseclient')
syn <- synapseclient$Synapse()
syn$login()
``
