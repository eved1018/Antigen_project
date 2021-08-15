delete all 
    fetch 1ERN.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 33+59+60+62+88+91+92+93+94+95+114+117+149+150+152+153+200+202+203+204+205
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 93+92+150+94+117+153+116+95+204+91+114+82+34+60+208+149+130+219+203+61+68+189+110+50+199+151+152+59
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4Y5Y/4Y5Y_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit