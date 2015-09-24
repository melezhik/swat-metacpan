use DateTime;                                   
use Time::Piece;                                
use Data::Dumper;


sub validate_latest_release {

    my $latest_date = shift;

    my $tp = Time::Piece->strptime($latest_date,'%Y-%m-%dT%TZ');  
    
    my $dt = DateTime->new(                     
        year => $tp->year,                      
        month => $tp->mon,                      
        day => $tp->mday,
        minute => $tp->min,
        hour => $tp->hour,
        second => $tp->second                        
    );                                          

    my $threshold = DateTime->now->subtract( hours =>  latest_threshold() ); 
    my $latest_threshold = latest_threshold();

    if (DateTime->compare($dt, $threshold) == 1){
        ok(1,"feed is alive. latest date is: $dt. thershold date is: $threshold. threshold value is: $latest_threshold hours.");
    }else{
        ok(0,"feed is not alive. latest date is: $dt. thershold date is: $threshold. threshold value is: $latest_threshold hours.");
    }


}

sub latest_threshold {
    $ENV{'latest_threshold'} || 4
}

1;

