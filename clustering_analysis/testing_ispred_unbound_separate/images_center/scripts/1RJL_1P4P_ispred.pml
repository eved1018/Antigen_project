delete all 
    fetch 1P4P.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 232+233+250+251+252+253+254+272+273+274+275+276+277
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 209+229+231+232+254+272+273+274+276+277+278+279+280+281+282
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 157+158+160+162+163+164+165+213+241+243+259
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/1RJL/1RJL_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit