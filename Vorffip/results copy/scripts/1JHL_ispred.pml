delete all 
    fetch 1JHL.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 21+23+103+106+112+113+116+117+118+119+121
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 125+34+119+33+113+116+5+15+112+118+117+126+13+114+47+6+45+7+128+16+122+103+123+19
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1JHL/1JHL_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit