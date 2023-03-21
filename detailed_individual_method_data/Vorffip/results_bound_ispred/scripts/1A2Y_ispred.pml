delete all 
    fetch 1A2Y.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 19+22+23+24+27+102+103+116+117+118+119+120+121+124+125
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 109+35+119+122+34+121+117+118+113+114+33+116+125+62+128+112+73+24+22+70+7+21+106+5
    indicate bycalpha pred
    create pred_res, indicate
    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color black, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1A2Y/1A2Y_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit