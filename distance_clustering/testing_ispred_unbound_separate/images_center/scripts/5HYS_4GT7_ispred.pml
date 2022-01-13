delete all 
    fetch 4GT7.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 373+374+375+376+377+378+379+380+412+414+417+419+430
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 394+419+463+467+483+486+487+488+491+492+493+496+499+501+506+508+525+533+534+539
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 453+455+457+459+489+510+512+542+544
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/5HYS/5HYS_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit