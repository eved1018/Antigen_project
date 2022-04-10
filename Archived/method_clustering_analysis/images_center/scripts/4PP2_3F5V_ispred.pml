delete all 
    fetch 3F5V.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 12+13+15+17+18+20+155+156+157+178+179+180+181+182+184+185+187+198+199+203
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['159+158+152+202+188+154+153+187+160+204+181+156+17+149+185+198+197+157+200+195+155+201+199+194+196+203']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4PP2/4PP2_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit