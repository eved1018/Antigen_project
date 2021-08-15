delete all 
    fetch 3IFD.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 16+18+19+20+21+23+24+45+46+47+49
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 13+47+9+35+24+46+6+14+11+17+10+5+49+7+8+34+48+18+29+33+23
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4DN4/4DN4_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit