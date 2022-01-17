delete all 
    fetch 2KC0.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 82+84+85+87+89+91+115+117+118+119+121+122+123
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 15+14+215+229+200+216+202+160+174+149+70+71+204+73+205+142+143+232+187+186+147+230+243+27
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 59+43+41+86+87+85+119
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/5T5F/5T5F_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit