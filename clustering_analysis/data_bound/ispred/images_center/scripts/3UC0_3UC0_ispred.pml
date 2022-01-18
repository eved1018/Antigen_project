delete all 
    fetch 3UC0.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 160+161+162+163+168+170+171+172+173+174+176+177+179+180+291+293
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 12+10+11+9+5+142+42+4+40+6+7+34+20+37+22+24
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 160+174+161+159+168+51+50+135
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3UC0/3UC0_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit