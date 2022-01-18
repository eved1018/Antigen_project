delete all 
    fetch 1G9M.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 119+120+122+200+202+203+419+421+422+423+434+437
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 262+458+474+201+202+438+439+388+372+366+204+365+371+198+368+425+419+434+437+422+120+297+440+441+125
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 216+220+221+223+222+219+252
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/1G9M/1G9M_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit