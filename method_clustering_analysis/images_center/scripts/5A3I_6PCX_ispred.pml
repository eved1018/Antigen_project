delete all 
    fetch 6PCX.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 81+82+123+124+125+126+128+130+131+147+155+172+173+174+175+262
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['946+954+947+945+938+951+936+949+939+942+953+315+950+943+955+306+948+937+941+940+956+959+952+958+957+944']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/5A3I/5A3I_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit