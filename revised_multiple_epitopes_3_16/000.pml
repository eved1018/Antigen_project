delete all 
    fetch 5OMZ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 13+46+48+49+50+53+54+56+57+58+59+60+61+64+90+92
    indicate bycalpha ann
    create annotated, indicate


    select ann2, resi 7+21+22+23+24+25+26+27+28+33+35+68+70+72+73+78+79+80+81+83
    indicate bycalpha ann2
    create annotated2, indicate


    select ann3, resi 13+46+48+49+50+53+54+56+57+58+59+60+61+64+97
    indicate bycalpha ann3
    create annotated3, indicate

    select ann4, resi 15+16+17+18+19+20+37+39+40+41+42+43+74+76+77+99+100+101+102+103
    indicate bycalpha ann4
    create annotated4, indicate

    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated

    show sphere, annotated2
    color green, annotated2
    set sphere_transparency, 0.5,annotated2


    show sphere, annotated3
    color black, annotated3
    set sphere_transparency, 0.5,annotated3

    show sphere, annotated4
    color blue, annotated4
    set sphere_transparency, 0.5,annotated4



    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Downloads/5OMZ.png,width=900, height=900,dpi = 350,ray=1
    quit