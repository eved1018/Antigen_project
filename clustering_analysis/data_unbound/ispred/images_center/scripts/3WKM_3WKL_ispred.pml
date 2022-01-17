delete all 
    fetch 3WKL.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 116+117+161+162+165+195+198+200+207+215+216+242+246+250+276+277+278+279+280+281+282+283+288+289
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 162+161+159+165+170+158+199+166+173+198+156+196+155+169+197
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 262+114+115+116+113+265+267+266+243+269+118+119
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/3WKM/3WKM_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit