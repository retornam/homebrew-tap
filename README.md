retornam's Homebrew Tap
=========================

This is a [Homebrew][brew] tap for formula for software curated by retornam


Setup
-----

Using these formulae requires Homebrew. Please install Homebrew first

Once Homebrew is installed, simply run:

    brew tap retornam/tap
    brew install <FORMULA>



Usage
-----

To install software from this Tap run

    brew install retornam/tap/<FORMULA>


Formulae
--------


| Repository | Formula                        | Description                                                                            |
| ---------- | ------------------------------ | -------------------------------------------------------------------------------------- |
| gcrane      | [formula](Formula/gcrane.rb)     | Superset of [crane][crane] commands with additional commands specific to gcr.io       |
| go-mod-upgrade   | [formula](Formula/go-mod-upgrade.rb) | Tool to upgrade [go mods][gomodupgrade]|





Contributing
-------------

Please file bugs and feature requests as GitHub issues.
Ths repo follows Homebrew's [standard coding style][style].

References
----------

`brew help`, `man brew` or the Homebrew [documentation][].

[brew]: https://brew.sh
[crane]: https://github.com/google/go-containerregistry
[documentation]: https://docs.brew.sh
[gomodupgrade]: https://github.com/oligot/go-mod-upgrade/releases
[style]: https://docs.brew.sh/Formula-Cookbook
