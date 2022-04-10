delete all 
    fetch 2CMR.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 32+33+36+143+146+150+153+199+202+203+204+206+207+209+210+213+214
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 153+93+34+83+55+23+97+199+182+210+8+4+16+79+5+215+185+171+77+92+192+122+181+12+127+209+26
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2CMR/2CMR_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit