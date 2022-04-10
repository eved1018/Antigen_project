delete all 
    fetch 6MF2.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 2194+2222+2223+2224+2225+2226+2227+2228+2229+2261+2263+2271+2273+2275+2279+2280+2282+2307+2309+2311
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 452+2158+2155+1926+1728+2196+2042+1927+2156+2195+2070+2332+2040+2200+58+1924+61+1711+2041+2094+2199+1928+2054+1915+2100+2226+2043+2095+2135+2202+1+1712+1729+2068+2331+91+81+2198+139+2154+2055+462+2197+2038+2065+454
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