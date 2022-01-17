delete all 
    fetch 4UTC.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 274+310+311
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 101+102+103+104+106+107+108+109+212+215+217+263+266+76+78
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 297+298+299+300+301+311+314+316+344+345+346+347+350+351+373+374+375+390+392
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/4UTA/4UTA_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit