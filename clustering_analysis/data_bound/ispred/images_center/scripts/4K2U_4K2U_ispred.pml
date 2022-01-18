delete all 
    fetch 4K2U.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 149+152+153+156+160+161+162+164+167+168+169
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 271+215+214+216+217+213+220+221+227+280+281+279
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 265+267+171+238+167+234+237+51+233+231+52+243+242+240+268+241+244
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4K2U/4K2U_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit