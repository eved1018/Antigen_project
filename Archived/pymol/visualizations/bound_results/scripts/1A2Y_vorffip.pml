delete all 
    fetch 1A2Y.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 19+22+23+24+27+102+103+116+117+118+119+120+121+124+125
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 121+5+125+118+103+123+112+119+122+62+63+116+27+128+81+75+117+22+47+79+114+106+124+41
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1A2Y/1A2Y_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit