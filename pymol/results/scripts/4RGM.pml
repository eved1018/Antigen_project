delete all 
    fetch 4RGM.S


    set cartoon_transparency,0.75


    select ann2, resi 18+19+20+22+23+26+29+30+31+58+59+60+88+90+110+177+178
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 91+45+90+23+22+94+46+177+92+44+47+67+60+210+20+212+215+69+93+26+96+71+111+43+110+218+178+209
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
    




    fetch 1SE3.A
    set cartoon_transparency,0.75


    select ann, resi 18+19+20+22+23+26+29+30+31+58+59+60+88+90+110+177+178
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 91+47+177+67+60+94+90+22+20+46+45+44+68+218+110+93+69+92+97+23+111+207+102+58+212+215+178+210+129
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
    




    align 4RGM.S, 1SE3.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4RGM_1SE3.png,width=900, height=900,dpi = 350,ray=1
    quit