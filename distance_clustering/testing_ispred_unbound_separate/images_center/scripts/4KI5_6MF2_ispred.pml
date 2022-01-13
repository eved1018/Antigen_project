delete all 
    fetch 6MF2.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 2194+2222+2223+2224+2225+2226+2227+2228+2229+2261+2263+2271+2273+2275+2279+2280+2282+2307+2309+2311
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 2038+2040+2041+2042+2043+2054+2055+2065+2068+2070+2094+2095+2100+2135+2154+2155+2156+2158+2195+2196+2197+2198+2199+2200+2202+2226
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 1+139+1711+1712+1728+1729+1915+1924+1926+1927+1928+2331+2332+452+454+462+58+61+81+91
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/4KI5/4KI5_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit