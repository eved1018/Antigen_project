delete all 
    fetch 1ZRL.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 149+152+153+156+160+161+162+167+168+169
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['523+441+531+454+436+448+442+529+437+526+440+453+443+450+439+438+432+447+449+452+524+521+434+528+451+525+444+455+527+522+435+530']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4K2U/4K2U_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit