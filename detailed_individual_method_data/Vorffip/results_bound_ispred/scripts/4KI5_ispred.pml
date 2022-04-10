delete all 
    fetch 4KI5.M
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 2194+2222+2223+2224+2225+2226+2227+2228+2229+2261+2263+2271+2273+2275+2279+2280+2282+2307+2309+2311
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 2296+2284+2298+2299+2175+2176+2280+2294+2273+2300+2314+2275+2302+2252+2276+2174+2304+2326+2251+2315+2223+2279+2253+2287+2281
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4KI5/4KI5_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit