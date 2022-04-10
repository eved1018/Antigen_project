delete all 
    fetch 4LQF.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 116+118+119+155+156+157+170+172+173+174+175
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 147+114+141+112+146+104+111+149+143+140+106+105+183+102+173+130+184+182+172+116+169
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4LQF/4LQF_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit