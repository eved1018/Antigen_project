delete all 
    fetch 2JEL.P


    set cartoon_transparency,0.75


    select ann2, resi 1+2+3+4+34+41+64+66+67+68+70+71+72+75+76
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 51+1+3+48+16+15+2+4+71+47+12+17+70+57+11+52+5+9+54+49+14+18
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
    




    fetch 1HDN.A
    set cartoon_transparency,0.75


    select ann, resi 1+2+3+4+34+41+64+66+67+68+70+71+72+75+76
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 1+16+2+3+51+5+17+48+47+4+71+70+52+20+7+38+75+62+39+49+60
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
    




    align 2JEL.P, 1HDN.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/2JEL_1HDN.png,width=900, height=900,dpi = 350,ray=1
    quit