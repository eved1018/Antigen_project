delete all 
    fetch 3I50.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 74+75+76+77+78+79+104+106+107+109+110
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 277+264+265+201+215+229+228+216+217+220+221+182+183+144+219+225+230+37+36
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 101+103+102+106+107+104+76+77+237+78+109+108
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3I50/3I50_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit