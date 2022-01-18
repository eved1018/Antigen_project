delete all 
    fetch 3GRW.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 155+158+159+161+162+163+164+166+167+168+169+170+171+173+175+177+205+207+210+214+216+241+248+278+279+280+281+282+314+315+316+317+318
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 302+303+317+249+301+315+298+267+201+343+346+344+322+282+251+250+252
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 163+175+207+206+210+173+208+180+209+182+155+150
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3GRW/3GRW_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit