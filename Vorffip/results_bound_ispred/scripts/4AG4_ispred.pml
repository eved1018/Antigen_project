delete all 
    fetch 4AG4.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 277+279+281+282+284+307+314+320+335+337+339+340+341+342+365+367+369
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 340+281+222+221+219+220+223+250+247+249+337+248+318+225+284+322+335+218+267+242+365+234+213+342+150+339+235+313+30+246+152+236
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4AG4/4AG4_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit