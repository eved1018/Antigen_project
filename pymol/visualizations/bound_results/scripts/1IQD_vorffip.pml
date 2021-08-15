delete all 
    fetch 1IQD.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 2196+2197+2198+2199+2200+2215+2220+2222+2223+2250+2251+2252+2253+2255+2315+2316
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 2198+2200+2197+2290+2251+2215+2249+2250+2252+2273+2201+2199+2272+2269+2222+2270+2195+2315+2202+2253+2275+2316+2227+2271+2307
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1IQD/1IQD_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit