delete all 
    fetch 2DD8.S
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 359+363+365+390+391+392+395+426+436+482+484+485+486+487+488+489+491+492+494
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 470+472+489+488+475+432+426+433+395+390+392+436+486+479+487+485+491+484+480+443+442+482
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 504+505+503+376+365+378
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/2DD8/2DD8_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit