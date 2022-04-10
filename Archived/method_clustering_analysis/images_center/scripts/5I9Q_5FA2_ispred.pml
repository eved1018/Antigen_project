delete all 
    fetch 5FA2.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 123+124+276+279+280+281+282+364+365+366+367+370+430+455+458+459+460+461+471+472+473+474
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['429+433+202+121+431+120+436+119+204+122+422+117+198+206+432+434+200+123+423+201+124+435+205+199+118+203']
    indicate bycalpha pred
    create pred_res, indicate
    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/5I9Q/5I9Q_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit