delete all 
    fetch 1Z40.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 186+187+188+189+190+194+196+197+199+200+201+202+203+204+205+208+222+223+224+225+235
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 139+160+161+162+171+177+178+185+187+200+228+230+231+261+262+263+274+353+378+379+381+382
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 108+109+110+112+113+325+327+328+329
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/2Q8A/2Q8A_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit