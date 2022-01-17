delete all 
    fetch 4WAT.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 193+202+205+209+212+213+328+331+335+338+339+341+342+344
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 160+197+199+204+209+335+373+419+422+423+426+430+437+444+447+461+474
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 247+248+392+393+396+399+491+492+495+498+499+502+504+506+507
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/4U0R/4U0R_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit