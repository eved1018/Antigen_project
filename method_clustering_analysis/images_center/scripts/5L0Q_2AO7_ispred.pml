delete all 
    fetch 2AO7.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 557+591+628+638+639+640+641+642+644+646
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['633+641+637+501+643+639+640+500+644+642+628+635+636+631+496+646+499+485+497+498+484+634+632+645']
    indicate bycalpha pred
    create pred_res, indicate
    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/5L0Q/5L0Q_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit