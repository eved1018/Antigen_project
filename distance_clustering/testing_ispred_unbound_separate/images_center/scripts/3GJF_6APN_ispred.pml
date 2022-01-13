delete all 
    fetch 6APN.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 201+205+208+209+212+215+216+293+294+298+301+306+309+310
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 107+109+110+111+112+113+114+116+160+229+231+232+233+258+265+268+329+331+339+372+43+60
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 143+248+250+251+253+301+304+305+316+317+319+320
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/3GJF/3GJF_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit