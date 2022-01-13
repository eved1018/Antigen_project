delete all 
    fetch 5JHM.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 76+77+101+102+104+106+107+108
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 101+107+108+109+267+268+270+271+272+76
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 13+304+305+315+316+317+320+322+323+355+356+357+358+375+381+383+384+398+399+401+403+406+5+7
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/5JHL/5JHL_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit