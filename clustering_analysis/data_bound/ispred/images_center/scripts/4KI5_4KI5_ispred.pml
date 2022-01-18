delete all 
    fetch 4KI5.M
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 2194+2222+2223+2224+2225+2226+2227+2228+2229+2261+2263+2271+2273+2275+2279+2280+2282+2307+2309+2311
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 2176+2175+2174+2302+2276+2300+2275+2304+2299+2298+2273+2281+2294+2280+2296+2279+2284+2326
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 2314+2315+2287+2251+2253+2252+2223
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4KI5/4KI5_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit