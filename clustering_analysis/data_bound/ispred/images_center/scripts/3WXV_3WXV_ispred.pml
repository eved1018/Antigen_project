delete all 
    fetch 3WXV.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 0+89+90+91+92+93+95+96+99+112+116+117+118+119+120+122
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 317+129+258+112+266+202+203+207+204+94+95+93+91+90+257+122+334+321+251+324+126+252+130+125+131+119
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 372+370+371+237+236+287
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3WXV/3WXV_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit