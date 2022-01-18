delete all 
    fetch 1MHP.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 157+158+160+192+218+219+220+221+222+223+224+259+261+263+264
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 249+310+177+207+180+182+145+146+336
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 261+311+298+163+160+158+167+157+222+192+225+322+297+320+296+286+287
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/1MHP/1MHP_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit