delete all 
    fetch 5JHL.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 76+77+101+102+104+106+107+108
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 101+102+270+107+104+110+76+77+214+74+217+220+81+83+222+219+84+109+108
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 304+305+306+362+401+403+382+194+381+193+352+351+323+322+320
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/5JHL/5JHL_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit