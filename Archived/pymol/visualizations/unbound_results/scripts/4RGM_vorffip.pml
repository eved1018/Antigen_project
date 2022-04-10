delete all 
    fetch 1SE3.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 18+19+20+22+23+26+29+30+31+58+59+60+88+90+110+177+178
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 91+47+177+67+60+94+90+22+20+46+45+44+68+218+110+93+69+92+97+23+111+207+102+58+212+215+178+210+129
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4RGM/4RGM_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit