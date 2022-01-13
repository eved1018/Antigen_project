delete all 
    fetch 2AO7.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 557+591+628+638+639+640+641+642+644+646
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 582+593+607+628+631+633+634+635+636+638+641+642+643+645+646
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 485+496+497+498+499+500+501+502+517+539+542
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/5L0Q/5L0Q_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit