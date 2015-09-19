package swat::metacpan::web; 
our $VERSION = '0.1.0'; 
1;

__END__


=head1 SYNOPSIS

L<Swat|https://github.com/melezhik/swat> tests for metacpan.org

This is simple test suit could be used in monitoring/deployment. A limited set of routes is tested.

=head1 INSTALL

    perl Makefile.PL
    make
    make test
    make install

OR

    sudo cpan swat::metacpan::web

=head1 USAGE


    swat swat::metacpan::web https://metacpan.org



