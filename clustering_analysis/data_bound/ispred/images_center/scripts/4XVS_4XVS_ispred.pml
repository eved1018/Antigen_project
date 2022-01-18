delete all 
    fetch 4XVS.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 97+275+276+278+279+280+281+282+365+366+367+368+371+430+455+456+457+458+459+460+461+462+470+473+474+475+477
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 459+201+200+367+366+204+365+371+205+397+368+425+431+434+436+280+281+122+282+325+455+119
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 76+63+61+75+60+73+72+221+223+51+53
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4XVS/4XVS_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit