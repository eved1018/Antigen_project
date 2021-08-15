delete all 
    fetch 3MXW.A


    set cartoon_transparency,0.75


    select ann2, resi 44+45+87+123+125+126+131+132+133+134+135+136+147+153+155+174+176+177+178+179+180
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 50+44+56+45+115+175+47+51+80+174+176+61+57+114+55+49+178+82+52+111+46+156+39+153+74
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
    




    fetch 3M1N.A
    set cartoon_transparency,0.75


    select ann, resi 44+45+87+123+125+126+131+132+133+134+135+136+147+153+155+174+176+177+178+179+180
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 30+28+32+27+29+31+33+50+26+34+51+37+35+49+115+39+25+167+36+52+56+80+55+47+40+44
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
    




    align 3MXW.A, 3M1N.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/3MXW_3M1N.png,width=900, height=900,dpi = 350,ray=1
    quit