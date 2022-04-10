delete all 
    fetch 4KXI.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 18+19+22+23+24+27+102+103+116+117+118+119+120+121+124+125+129
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 27+23+117+119+118+116+121+120+22+24+47+125+70+112+62+81+128+113+66+122+68+111+41+79
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