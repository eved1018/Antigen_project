delete all 
    fetch 5GGT.A


    set cartoon_transparency,0.75


    select ann2, resi 49+51+52+54+56+66+68+69+115+117+119+120+121
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 54+56+115+69+123+122+133+120+45+52+121+31+27+119+32+118+117+29+113+66+131+49+44+106
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
    




    fetch 5NIU.A
    set cartoon_transparency,0.75


    select ann, resi 49+51+52+54+56+66+68+69+115+117+119+120+121
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 141+134+56+115+137+117+142+54+138+113+140+123+135+139+58+125+136+121+61+111+66+122+143+119
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
    




    align 5GGT.A, 5NIU.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5GGT_5NIU.png,width=900, height=900,dpi = 350,ray=1
    quit