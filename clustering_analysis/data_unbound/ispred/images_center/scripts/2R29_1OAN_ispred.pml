delete all 
    fetch 1OAN.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 305+306+307+308+309+310+311+312+325+327+362+364+387+388+389+390
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 101+103+102+106+107+104+110+76+74+71+73+94+109+108
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 263+301+300+17+13+311+265+298+10+313+11+266+210+211+7+391+347+392+297+332
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/2R29/2R29_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit