delete all 
    fetch 5EN2.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 98+109+111+112+113+114+115+116+117+119+122+169+170+171+210+211+212+216+218+219+220
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 117+116+160+161+158+212+183+187+153+120+122+130+125+119
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 139+98+198+94+221+151+93+225+91+90+224
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/5EN2/5EN2_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit