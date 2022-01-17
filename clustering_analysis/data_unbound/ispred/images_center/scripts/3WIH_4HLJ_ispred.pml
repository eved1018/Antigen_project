delete all 
    fetch 4HLJ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 792+822+823+824+825+826+827+828+829+841+843+844
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 666+667+705+665+671+664+660+661+729+703+717+663+662+702+765+756+757+755+684+730+718+731+721
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 822+823+820+824+863+865
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/3WIH/3WIH_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit