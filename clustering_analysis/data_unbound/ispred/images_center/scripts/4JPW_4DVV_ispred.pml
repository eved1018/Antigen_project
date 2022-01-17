delete all 
    fetch 4DVV.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 122+124+278+279+280+281+282+365+366+367+368+370+371+425+427+429+431+432+455+456+457+458+459+460+462+469+473+474+476+480
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 76+63+77+214+61+75+60+71+73+72+221+79+421+437+436+53+325+442+250+246+326+441+327
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 458+459+275+462+280+283+282+279+278
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/4JPW/4JPW_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit