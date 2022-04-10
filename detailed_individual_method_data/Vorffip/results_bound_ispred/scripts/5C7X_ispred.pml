delete all 
    fetch 5C7X.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 11+12+13+15+16+17+19+20+21+23+24+83+86+87+89+112+114+115+116+117+119+120+123
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 16+121+115+49+119+50+13+123+86+124+36+118+21+20+12+30+51+24+87+34+89+28+23+33
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5C7X/5C7X_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit