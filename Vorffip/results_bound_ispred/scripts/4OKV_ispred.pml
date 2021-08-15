delete all 
    fetch 4OKV.F
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 226+228+229+230+231+232+233+234+235+236+239+242
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 260+259+248+220+252+212+256+251+242+245+207+216+215+219+233+232+229+235+249+222+225
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4OKV/4OKV_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit