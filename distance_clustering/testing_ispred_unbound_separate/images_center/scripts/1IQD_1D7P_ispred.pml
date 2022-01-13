delete all 
    fetch 1D7P.M
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 2196+2197+2198+2199+2200+2215+2220+2222+2223+2250+2251+2252+2253+2255+2315+2316
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 2196+2197+2198+2199+2200+2201+2202+2215+2222+2223+2224+2225+2226+2250+2251+2252+2253+2258+2313+2315+2316
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 2173+2175+2294+2326+2327
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/1IQD/1IQD_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit