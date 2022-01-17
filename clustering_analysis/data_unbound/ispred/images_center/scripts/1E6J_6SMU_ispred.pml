delete all 
    fetch 6SMU.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 187+204+205+206+207+208+209+210+212+213+216+217
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 201+200+216+203+217+213+207+206+212+204+210+199+205+220+208
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 100+16+17+112+113+107+111+110+42+45+92+121+109+108+122
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/1E6J/1E6J_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit