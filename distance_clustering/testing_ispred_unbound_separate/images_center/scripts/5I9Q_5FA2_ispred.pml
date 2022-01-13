delete all 
    fetch 5FA2.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 123+124+276+279+280+281+282+364+365+366+367+370+430+455+458+459+460+461+471+472+473+474
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 120+123+199+200+201+202+203+204+205+275+279+280+325+365+366+367+368+421+423+425+432+436+437+440+458+459
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 221+60+68+73+75+79
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/5I9Q/5I9Q_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit