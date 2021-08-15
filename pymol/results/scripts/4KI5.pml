delete all 
    fetch 4KI5.M


    set cartoon_transparency,0.75


    select ann2, resi 2194+2222+2223+2224+2225+2226+2227+2228+2229+2261+2263+2271+2273+2275+2279+2280+2282+2307+2309+2311
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 2251+2273+2250+2198+2272+2200+2199+2197+2253+2196+2252+2275+2215+2280+2249+2316+2222+2201+2270+2195+2269+2279+2220+2278+2227
    indicate bycalpha pred
    create pred_res, indicate


    show sphere, annotated2
    color pink, annotated2
    set sphere_transparency, 0.5,annotated2


    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    




    fetch 6MF2.A
    set cartoon_transparency,0.75


    select ann, resi 2194+2222+2223+2224+2225+2226+2227+2228+2229+2261+2263+2271+2273+2275+2279+2280+2282+2307+2309+2311
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 2273+2251+2252+2200+2155+636+2127+2196+2068+2198+490+2222+2125+2275+2123+2104+2058+2199+2093+2122+454+2154+2100+2280+603+2067+2092+2215+2158+2332+57+679+60+2272+527+2130+2124+487+382+1705+2195+1748+303+2099+2090+328
    indicate bycalpha pres
    create pres_res, indicate


    show sphere, annotated
    color red, annotated
    set sphere_transparency, 0.5,annotated


    show sphere, pres_res
    set sphere_scale,0.5,pres_res
    color blue, pres_res
    set sphere_transparency,0,pres_res
    set cartoon_transparency,1,pres_res
    




    align 4KI5.M, 6MF2.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4KI5_6MF2.png,width=900, height=900,dpi = 350,ray=1
    quit