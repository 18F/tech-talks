# Data Munging With Python and pandas

Notebook for an 18F tech talk about solving common data munging challenges with Pandas.

## Overview

Nothing fancy here...this talk is a brief tour of the Pandas library and its role in basic (smallish) data exploration and munging tasks.

Goals:
* provide a quick overview for potential new Pandas users
* give a basic refresher (with links to resources for more advanced tasks) to people who already use Pandas

## Setup

To run the code samples in the Jupyer notebook interactively:

1. Install the [miniconda Python package manager](http://conda.pydata.org/miniconda.html)

2. From a terminal, clone this project repository to your local machine:
        git clone git@github.com:18F/tech-talks.git

3. If you don't have a GitHub account and want to get a read-only version of the code, use this command instead:
        git clone git://github.com/18F/tech-talks.git

4. Change to the project directory:

        cd test-talks/pandas-munging

5. Install Python and dependencies into a conda virtual environment called `pandas-munging`.

        conda env create

6. Activate the conda environment:

        source activate pandas-munging

7. Start up the Jupyter notebook server:

        jupyter notebook

8. The notebook startup process should have opened a Jupyter web page at `localhost:8888` (if not, point your browser there).

9. On the *Files* tab of the Jupyter home page, click *pandas_data_munging.ipynb*.

10. The Jupyter notebook with the slides and code from the presentation should open.
