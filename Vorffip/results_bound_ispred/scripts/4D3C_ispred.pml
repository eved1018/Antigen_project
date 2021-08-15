delete all 
    fetch 4D3C.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 156+157+159+160+161+166+181+190+194+197+198
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 206+208+204+155+157+156+207+154+159+104+184+183+153+130+163+168+181+205+37+69+72+68+161+78+127
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4D3C/4D3C_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit