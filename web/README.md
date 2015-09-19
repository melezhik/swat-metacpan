# SYNOPSIS

[Swat](https://github.com/melezhik/swat) tests for metacpan.org

This is simple test suit could be used in monitoring/deployment. A limited set of routes is tested.

# INSTALL

    perl Makefile.PL
    make
    make test
    make install

OR

    sudo cpan swat::metacpan::web

# USAGE

    swat swat::metacpan::web https://metacpan.org
