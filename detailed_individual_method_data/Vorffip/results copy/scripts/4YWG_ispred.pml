delete all 
    fetch 4YWG.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 153+154+175+176+177+179+180+194+229+230+231+232
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 184+179+194+177+154+211+220+182+219+180+183+215+225+189+186+196+193+218+195+152+185+212+216+190
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4YWG/4YWG_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit