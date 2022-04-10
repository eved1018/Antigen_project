delete all 
    fetch 4OII.A


    set cartoon_transparency,0.75


    select ann2, resi 232+235+236+237+239+240+253+256+257+258+260+261+262+264+265+289+293+294+314+315+351
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 232+216+201+234+210+214+206+188+198+208+254+189+187+231+205+274+190+253+233+209+191+192+185+324+182+318
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
    




    fetch 4OIE.A
    set cartoon_transparency,0.75


    select ann, resi 232+235+236+237+239+240+253+256+257+258+260+261+262+264+265+289+293+294+314+315+351
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 201+216+232+182+183+198+187+189+185+190+214+210+194+208+206+196+203+205+191+188+272+318+197+199+234+184
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
    




    align 4OII.A, 4OIE.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4OII_4OIE.png,width=900, height=900,dpi = 350,ray=1
    quit