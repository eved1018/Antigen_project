delete all 
    fetch 6MF2.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 2194+2222+2223+2224+2225+2226+2227+2228+2229+2261+2263+2271+2273+2275+2279+2280+2282+2307+2309+2311
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['2063+2158+2066+2197+1926+2069+1927+2203+2195+1924+2201+2196+2202+2154+2155+2159+2156+2199+2200+2065+1925+1928+1709+1727+1707+2040+2153+2067+2043+2198+2160+1729+2070+2152+1728+1712+1710+1708+1711+2064+2068+2044']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4KI5/4KI5_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit