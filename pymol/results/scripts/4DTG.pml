delete all 
    fetch 4DTG.K


    set cartoon_transparency,0.75


    select ann2, resi 10+11+12+13+17+19+21+23+24+26+28+31+32+33+34+36+50
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 16+41+40+15+17+39+18+44+19+22+14+42+43+5+48+9+6+52+37+34
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
    




    fetch 1ADZ.A
    set cartoon_transparency,0.75


    select ann, resi 17+18+19+20+24+26+28+30+31+33+35+38+39+40+41+43+57
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 56+55+47+2+27+30+1+24+19+59+12+26+16+29+41+23+13+58+17+50+63
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
    




    align 4DTG.K, 1ADZ.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4DTG_1ADZ.png,width=900, height=900,dpi = 350,ray=1
    quit