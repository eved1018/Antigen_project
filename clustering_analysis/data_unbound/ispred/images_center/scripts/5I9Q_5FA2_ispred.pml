delete all 
    fetch 5FA2.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 123+124+276+279+280+281+282+364+365+366+367+370+430+455+458+459+460+461+471+472+473+474
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 201+200+202+75+60+203+204+73+199+205+432+221+68+425+79+421+437+423+436+120+123+325+440
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 458+459+275+367+366+365+368+280+279
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/5I9Q/5I9Q_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit