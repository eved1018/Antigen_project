delete all 
    fetch 4DVV.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 122+124+278+279+280+281+282+365+366+367+368+370+371+425+427+429+431+432+455+456+457+458+459+460+462+469+473+474+476+480
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 214+221+246+250+325+326+327+421+436+437+441+442+53+60+61+63+71+72+73+75+76+77+79
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 275+278+279+280+282+283+458+459+462
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/4JPW/4JPW_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit