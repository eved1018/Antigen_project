delete all 
    fetch 4OIE.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 232+235+236+237+239+240+253+256+257+258+260+261+262+264+265+289+293+294+314+315+351
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 201+216+232+182+183+198+187+189+185+190+214+210+194+208+206+196+203+205+191+188+272+318+197+199+234+184
    indicate bycalpha pred
    create pred_res, indicate
    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4OII/4OII_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit