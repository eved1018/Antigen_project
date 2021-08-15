delete all 
    fetch 4YQX.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 36+37+40+41+43+44+45+46+49+52+53+93+130+134
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 46+118+52+86+92+50+82+53+47+89+145+44+146+45+119+141+49+116+106+33+115+40+90+43
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4YQX/4YQX_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit