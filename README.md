# Booster Themes

Booster Themes are themes for GTK 3, GTK 2 and GNOME Shell

## Booster themes come in 2 variants for now and more will come

##### Nvidia

![screenshot](http://i.imgur.com/mRYufq2.png)

##### Hot Rod

![screenshot](http://i.imgur.com/3ouMgrM.png)

### Manual Installation

To build the theme the follwing packages are required
* `autoconf`
* `automake`
* `pkg-config`
* `git`

For the theme to function properly, install the following
* GNOME Shell, GTK 3.22
* `gnome-themes-standard` package
  * `gtk-engine-murrine`
  * `ttf-ubuntu-font-family`

Install the theme with the following commands

#### 1. Get the source

Clone the git repository with

    git clone https://github.com/boosterdev/booster-themes && cd booster-themes

#### 2. Build and install the theme

    ./autogen.sh --prefix=/usr
    sudo make install

Other options to pass to autogen.sh are

    --disable-nvidia           disable Nvidia Theme
    --disable-hotrod           disable Hot Rod Theme
    --disable-purplerage       disable Purple Rage Theme

## Uninstall

Run

    sudo make uninstall
