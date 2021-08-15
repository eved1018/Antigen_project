delete all 
    fetch 1BVK.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 18+19+22+23+24+27+102+103+116+117+118+119+120+121+124+125+129
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 62+118+116+27+125+121+119+112+113+81+19+103+117+106+63+75+70+18+47+5+68+128+22+24
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1BVK/1BVK_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit