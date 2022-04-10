delete all 
    fetch 2BDN.A


    set cartoon_transparency,0.75


    select ann2, resi 28+30+31+32+34+37+38+39+40+41+55+56+61+64+65+68+69
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 47+35+24+9+6+34+19+10+8+7+46+13+30+17+18+5+14+11+29+4+23
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
    




    fetch 3IFD.A
    set cartoon_transparency,0.75


    select ann, resi 28+30+31+32+34+37+38+39+40+41+55+56+61+64+65+68+69
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 13+47+9+35+24+46+6+14+11+17+10+5+49+7+8+34+48+18+29+33+23
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
    




    align 2BDN.A, 3IFD.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/2BDN_3IFD.png,width=900, height=900,dpi = 350,ray=1
    quit