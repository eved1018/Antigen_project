delete all 
    fetch 4JZJ.D
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 48+49+51+56+57+58+59+60+61+62+82+84+85+86+87+89+90+91
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 276+277+274+200+203+198+234+197+236+233+230+280+281+254+255+279+278
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 289+249+248+267+215+214+221+222+224+251+250+287+290
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4JZJ/4JZJ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit