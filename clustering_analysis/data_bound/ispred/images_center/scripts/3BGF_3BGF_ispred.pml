delete all 
    fetch 3BGF.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 359+362+392+424+426+427+485+486+487+488+489+490+491+492+494
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 489+428+432+426+427+433+437+436+486+487+491+484+482
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 470+458+473+472+502+476+475+415+479+444+443+456+442+455
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3BGF/3BGF_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit