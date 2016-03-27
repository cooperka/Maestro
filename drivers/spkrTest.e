start    cpfa    speaker_sample sound    index
    call    speaker_driver speaker_ra
    add    index    index    one
    blt    start    index    length
    cp    index    zero
    be    start    one    one


zero    .data    0
one    .data    1    
index    .data     0
length    .data    19
sound    .data    0
    .data    346
    .data    652
    .data    881
    .data    1005
    .data    1011
    .data    897
    .data    677
    .data    376
    .data    32
    .data    -316
    .data    -627
    .data    -864
    .data    -999
    .data    -1015
    .data    -912
    .data    -700
    .data    -406
    .data    -64



#include spkdriver.e