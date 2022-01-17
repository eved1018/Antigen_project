delete all 
    fetch 4HLJ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 792+822+823+824+825+826+827+828+829+841+843+844
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 660+661+662+663+664+665+666+667+671+684+702+703+705+717+718+721+729+730+731+755+756+757+765
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 820+822+823+824+863+865
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/3WIH/3WIH_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit