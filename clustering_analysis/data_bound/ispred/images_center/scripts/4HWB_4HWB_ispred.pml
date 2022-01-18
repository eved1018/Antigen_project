delete all 
    fetch 4HWB.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 202+203+226+229+230+232+233+235+248+250+251+252+253+289+290+291+292+293+294+295+296
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 302+301+304+305+201+216+202+213+204+220+209+224+308+309
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 288+300+271+234+232+233+286+278+287+293+284
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4HWB/4HWB_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit