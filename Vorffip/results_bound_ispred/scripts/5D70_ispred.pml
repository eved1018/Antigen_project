delete all 
    fetch 5D70.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 10+11+12+13+15+16+17+20+21+24+83+86+87+119+120
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 121+16+20+119+115+89+12+21+50+28+87+51+13+86+49+10+36+33+24+120+34+79+122+9
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5D70/5D70_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit