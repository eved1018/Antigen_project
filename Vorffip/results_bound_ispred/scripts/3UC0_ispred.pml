delete all 
    fetch 3UC0.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 160+161+162+163+168+170+171+172+173+174+176+177+179+180+291+293
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 37+159+142+11+34+174+4+50+161+12+160+24+42+20+10+135+51+40+9+6+7+168+22+5
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3UC0/3UC0_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit