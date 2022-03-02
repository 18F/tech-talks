# Installing Jupyter and the Talk Components

## Local Setup

If you're running Linux or OSX and already have Python 3x running, you can clone this repo and install everything using its requirements.txt file. Assuming you're in a Python virtual environment, the process is relatively straightforward.

Another option is to skip these instructions and install a distribution that includes everything you need ([Enthought Canopy](https://www.enthought.com/products/canopy/) and [Continuum's Anaconda](https://store.continuum.io/cshop/anaconda/) -- documented below -- are two good options). If you're running Windows, definitely skip these local setup instructions and install Anaconda.

1. Clone the repository from GitHub:

        $ git clone git@github.com:18F/tech-talks.git
    **note:** if you don't have a GitHub account and want to get a read-only version of the code, use this command instead:

        $ git clone github.com:18F/tech-talks.git

1. Change to the directory that contains the Jupyter Notebook talk:

        $ cd tech-talks/jupyter-notebook

1. Install the required Python libraries:

        $ pip install -r requirements.txt

1. To start up a Jupyter notebook:

        $ jupyter notebook

This command will fire up a local Jupyter notebook server in your console and open a web browser to the URL of web application (by default, `http://127.0.0.1:8888`)

## Use Anaconda Distribution

Continuum's [Anaconda Python distribution](https://store.continuum.io/cshop/anaconda/) is a great way to get a hassle-free install of Jupyter and many, many Python libraries used in scientific computing - no matter what platform you're on.

It comes with a _lot_ of packages and might be overkill. But once you start playing around with the Python data stack, it's handy to focus on making things without worrying about installing libraries and sorting out Python package dependencies.

1. Download the [Anaconda installer](http://continuum.io/downloads#py34). Make sure you click _I Want Python 3.4_ to get the Python 3x packages.

1. Open the installer and follow the prompts. Accepting the default options is usually fine. By default, Anaconda installs into a single directory and doesn't affect other Python installations running on your system.

1. Anaconda usually installs into a folder called _anaconda_, located in your home directory. Find that folder, open it, and open the executable file named _Launcher_.

1. When the Launcher opens, click the _Launch_ button next to ipython-notebook (this is the old name for Jupyter notebook and will presumably be updated soon). This will start a local Jupyter notebook server and open a web browser.  
**Note:** If there's an _Upate_ button next to ipython-notebook, click that first (before you launch).

![Anaconda Launcher](assets/img/anaconda-launcher.png)
