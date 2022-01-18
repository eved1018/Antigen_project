delete all 
    fetch 3Q3G.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 143+144+178+179+180+181+205+206+207+208+209+243+244+246+247+274+279
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 216+203+217+207+206+204+205+208+181+143+180+178+144+179+146+245+244+246
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 317+263+234+231+230+319+318+291
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3Q3G/3Q3G_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit