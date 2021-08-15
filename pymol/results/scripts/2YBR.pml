delete all 
    fetch 2YBR.C


    set cartoon_transparency,0.75


    select ann2, resi 7+14+15+17+18+19+22+24+27+42+43+44+45
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 42+43+47+40+58+44+4+65+17+64+19+13+53+59+2+18+61+15+62+63
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
    




    fetch 1CN2.A
    set cartoon_transparency,0.75


    select ann, resi 7+14+15+17+18+19+22+24+27+42+43+44+45
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 47+13+32+40+42+44+43+54+50+17+23+35+30+28+18+1+52+27+53+66
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
    




    align 2YBR.C, 1CN2.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/2YBR_1CN2.png,width=900, height=900,dpi = 350,ray=1
    quit