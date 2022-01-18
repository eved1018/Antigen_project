delete all 
    fetch 3JWD.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 119+122+200+202+204+369+419+421+422+423+432+434+435+436+437
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 459+200+203+367+366+204+73+432+431+280+122+279+457
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 499+38+39+500+43+80+81+221+40+79+86+87+78+34+35+37+36+494+33+496
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3JWD/3JWD_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit