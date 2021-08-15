delete all 
    fetch 1D7P.M
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 2196+2197+2198+2199+2200+2215+2220+2222+2223+2250+2251+2252+2253+2255+2315+2316
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 2196+2198+2251+2200+2197+2252+2201+2199+2222+2250+2176+2273+2275+2195+2215+2202+2316+2296+2253+2171+2173+2249+2270+2301+2315+2269
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