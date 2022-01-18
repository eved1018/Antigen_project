delete all 
    fetch 4OKV.F
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 226+228+229+230+231+232+233+234+235+236+239+242
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 229+235+222+232+233+225+242+245
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 249+248+260+259+215+216+207+212+220+219+256+251+252
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4OKV/4OKV_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit