delete all 
    fetch 1AHW.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 149+152+154+156+165+166+167+168+169+170+171+190+192+194+196+198+200+201+204
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 197+94+93+119+209+210+91+203+169+92+166+117+95+156+82+45+165+195+199+61+198+211+51+40+20+207+30+96
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1AHW/1AHW_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit