delete all 
    fetch 1EO8.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 50+59+60+62+63+74+75+78+79+82+90+92+94+271+273
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 21+42+62+31+318+314+325+20+18+17+308+294+28+320+293+19+94+327+311+27+14+323+92+310+324+30+317+307+321+292+301+303
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1EO8/1EO8_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit