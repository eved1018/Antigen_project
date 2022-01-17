delete all 
    fetch 6PCX.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 81+82+123+124+125+126+128+130+131+147+155+172+173+174+175+262
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 935+936+103+229+942+943+228+941+950+945+947+952+946+80+223+949+222+225+231+939+938
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 29+956+957+955+954+953+960+958+967+1001+913+905+911+30+904
    indicate bycalpha pred_2
    create pred_res_2, indicate
    




    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res


    show sphere, pred_res_2
    set sphere_scale,0.5,pred_res_2
    color red, pred_res_2
    set sphere_transparency,0,pred_res_2
    set cartoon_transparency,1,pred_res_2

    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/5A3I/5A3I_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit