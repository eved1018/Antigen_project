delete all 
    fetch 1TPX.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 127+128+156+158+159+185+188+189+191+192+193+194+195+196+197+198+199+200
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 138+188+189+167+223+168+226+184+133+132
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 200+202+203+204+199+198+143+157+155+154+151+152+191
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/1TPX/1TPX_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit