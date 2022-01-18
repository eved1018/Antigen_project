delete all 
    fetch 5K59.B
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 71+73+74+206+207+208+210+211+262+264+267
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 128+116+139+138+299+143+127+126+118+125+131
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 276+302+277+263+274+264+304+305+265+267+266+216+207+204+210+220+268+269+278+252
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/5K59/5K59_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit