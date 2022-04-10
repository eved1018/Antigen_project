delete all 
    fetch 4DN4.M
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 16+18+19+20+21+23+24+45+46+47+49
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 21+23+49+13+14+50+24+18+47+15+26+9+51+22+20+16+27+46+48+28
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4DN4/4DN4_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit