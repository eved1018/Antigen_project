delete all 
    fetch 4NNO.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 230+231+232+233+234+235+237+238+239+241+242+262+266
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['241+173+235+180+242+238+237+182+245+181+176+246+177+174+239+179+49+244+172+240+243+178+247+48+175']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4NNP/4NNP_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit