delete all 
    fetch 1FSK.A


    set cartoon_transparency,0.75


    select ann2, resi 42+43+44+45+46+47+48+49+50+51+53+70+72+76+87+97
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 70+45+51+43+44+42+48+72+50+47+53+49+46+52+97+76+86+73+71+55+54+77+99+74+68+20+24
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
    




    fetch 1BV1.A
    set cartoon_transparency,0.75


    select ann, resi 42+43+44+45+46+47+48+49+50+51+53+70+72+76+87+97
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 62+45+44+63+46+76+47+49+89+106+127+64+81+136+48+50+53+60+3+20+43+2+87+61+65+79+93
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
    




    align 1FSK.A, 1BV1.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/1FSK_1BV1.png,width=900, height=900,dpi = 350,ray=1
    quit