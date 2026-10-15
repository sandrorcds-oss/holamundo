*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

    MOVE.B  #5,$1100
    ADD.B   #3,$1100
    
    MOVE.B  #7,D1
    ADD.B   #2,D1
    MOVE.B  D1,$1100
    
    LEA MESSAGE,A1
    MOVE.L  A1,A2
    
    MOVE.B  #$68,(A2)+
    MOVE.B  #$6F,(A2)+    
    MOVE.B  #$6C,(A2)+    
    MOVE.B  #$61,(A2)+   
    MOVE.B  #$20,(A2)+ 
    MOVE.B  #$71,(A2)+    
    MOVE.B  #$75,(A2)+    
    MOVE.B  #$65,(A2)+
    MOVE.B  #$20,(A2)+ 
    MOVE.B  #$74,(A2)+    
    MOVE.B  #$61,(A2)+    
    MOVE.B  #$6C,(A2)+    
    MOVE.B #0,(A2)+
    *MOSTRAR TEXTO D0 (A1) EN LA PANTALLA
    MOVE.B  #13,D0
    TRAP    #15
    

    SIMHALT             ; halt simulator

* Put variables and constants here
MESSAGE DC.B    'HOOLA',0

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
