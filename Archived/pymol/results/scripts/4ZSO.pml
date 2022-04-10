delete all 
    fetch 4ZSO.E


    set cartoon_transparency,0.75


    select ann2, resi 41+67+72+74+75+76+87+89+90+91+92+110+111+113+115+116+203
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 47+98+31+51+184+99+74+72+201+71+102+198+32+24+203+115+52+101+49+186+29+188+36+146+236+37+45+97+162
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
    




    fetch 3PV7.A
    set cartoon_transparency,0.75


    select ann, resi 41+67+72+74+75+76+87+89+90+91+92+110+111+113+115+116+203
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 98+72+99+186+108+47+101+32+97+236+102+31+52+184+201+51+104+198+203+49+200+37+84+54+69+94+29+56+53
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
    




    align 4ZSO.E, 3PV7.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4ZSO_3PV7.png,width=900, height=900,dpi = 350,ray=1
    quit