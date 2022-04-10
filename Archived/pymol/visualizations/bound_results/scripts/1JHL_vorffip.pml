delete all 
    fetch 1JHL.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 21+23+103+106+112+113+116+117+118+119+121
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 5+113+122+116+125+123+118+119+70+128+81+114+27+34+33+117+47+23+62+68+103+53+45+79
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1JHL/1JHL_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit