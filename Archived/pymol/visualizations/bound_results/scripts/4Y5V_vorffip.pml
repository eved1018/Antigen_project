delete all 
    fetch 4Y5V.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 33+34+59+60+61+62+87+88+89+91+92+93+94+95+149+150+152+153+202+203+204+205
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 93+91+117+92+114+205+204+202+203+60+150+152+130+94+33+95+153+61+149+34+182+143+82+151+116+11+206+89+200
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4Y5V/4Y5V_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit