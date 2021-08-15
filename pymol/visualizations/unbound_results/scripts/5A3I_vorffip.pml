delete all 
    fetch 6PCX.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 81+82+123+124+125+126+128+130+131+147+155+172+173+174+175+262
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 954+942+946+80+961+960+968+958+950+943+947+81+949+953+936+314+957+939+30+940+222+63+941+944+972+61+78+964+148+29+123+106+963+990+82+993
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5A3I/5A3I_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit