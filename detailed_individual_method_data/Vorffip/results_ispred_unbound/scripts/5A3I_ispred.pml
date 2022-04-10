delete all 
    fetch 6PCX.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 81+82+123+124+125+126+128+130+131+147+155+172+173+174+175+262
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 950+911+939+222+960+30+942+956+943+946+29+967+954+941+952+945+938+936+957+223+913+935+225+953+1001+231+228+905+949+80+904+229+947+103+955+958
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5A3I/5A3I_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit