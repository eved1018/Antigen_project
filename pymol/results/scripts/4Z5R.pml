delete all 
    fetch 4Z5R.D


    set cartoon_transparency,0.75


    select ann2, resi 19+22+24+25+26+27+30+33+34+35+37+40+41+125+141+144+145+148+149+152+153
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 27+26+30+25+12+22+89+149+16+33+31+64+98+28+148+101+100+103+102+68+153+13+85+145+19
    indicate bycalpha pred
    create pred_res, indicate


    show sphere, annotated2
    color pink, annotated2
    set sphere_transparency, 0.5,annotated2


    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    




    fetch 1ITF.A
    set cartoon_transparency,0.75


    select ann, resi 19+22+24+25+26+27+30+33+34+35+37+40+41+125+141+144+145+148+149+152+153
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 162+149+27+20+165+26+41+64+22+33+132+124+114+89+128+153+152+65+148+82+31+103+127+85+156+100
    indicate bycalpha pres
    create pres_res, indicate


    show sphere, annotated
    color red, annotated
    set sphere_transparency, 0.5,annotated


    show sphere, pres_res
    set sphere_scale,0.5,pres_res
    color blue, pres_res
    set sphere_transparency,0,pres_res
    set cartoon_transparency,1,pres_res
    




    align 4Z5R.D, 1ITF.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4Z5R_1ITF.png,width=900, height=900,dpi = 350,ray=1
    quit