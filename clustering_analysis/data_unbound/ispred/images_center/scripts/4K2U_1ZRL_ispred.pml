delete all 
    fetch 1ZRL.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 149+152+153+156+160+161+162+167+168+169
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 302+301+448+439+554+435+436+451+444+530+524+526+452+527+520+454+440+441+521
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 13+112+259+10+139+163+171+9+56+168+55+197+53+257+245+132+31+131+30
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/4K2U/4K2U_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit