delete all 
    fetch 4AEI.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 9+10+11+12+13+15+41+42+56+59+60+61+62+63+64
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 35+38+63+15+17+21+8+18+14+62+42+37+19+44+47+64+41+9+39+49
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4AEI/4AEI_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit