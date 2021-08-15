delete all 
    fetch 4Y5Y.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 33+59+60+62+88+91+92+93+94+95+114+117+149+150+152+153+200+202+203+204+205
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 73+70+72+78+128+75+68+74+125+122+52+126+171+216+117+114+82+69+50+131+169+168+79+129+93+209+208+206
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4Y5Y/4Y5Y_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit