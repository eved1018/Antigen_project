delete all 
    fetch 2AO7.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 557+591+628+638+639+640+641+642+644+646
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 638+607+628+631+633+593+636+582+635+634+646+645+641+642+643
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 539+498+499+502+517+501+500+542+485+497+496
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/5L0Q/5L0Q_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit