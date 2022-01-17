delete all 
    fetch 5DUT.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 68+110+112+113+115+119+137+138+145+167+168+169+252+255+257+258
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 262+263+261+107+259+49+74+60+48+206+205+51+47+53
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 139+138+215+89+214+220+221+68+141+140+120+137+133+118
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/5DUR/5DUR_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit