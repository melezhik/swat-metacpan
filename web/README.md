# SYNOPSIS

[Swat](https://github.com/melezhik/swat) tests for metacpan.org

This is simple test suit could be used in monitoring/deployment.

# Checks perfomed

    - check if landing page is accessible
    - check if modules search is working properly
    - check if latest releases page/feed is accessible and returns not empty results 
    - check if latest release at https://metacpan.org/feed/recent?f= is not older than 4 hours ago

# INSTALL

    perl Makefile.PL
    make
    make test
    make install

OR

    sudo cpan swat::metacpan::web

# USAGE

    swat swat::metacpan::web https://metacpan.org

# Settings

- `latest_threshold` - define critical age in hours for a latest release appeared at https://metacpan.org/feed/recent?f= , if latest release's age more then
_latest\_threshold_ hours test will fail. Default value is _4_.

        # check that releases come to metacpan every 1 hour
        echo latest_threshold=1 >> swat.my

# COPYRIGHT

Copyright 2015 Alexey Melezhik.

This program is free software; you can redistribute it and/or modify it under the same terms as Perl itself.
