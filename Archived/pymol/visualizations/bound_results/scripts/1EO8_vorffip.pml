delete all 
    fetch 1EO8.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 50+59+60+62+63+74+75+78+79+82+90+92+94+271+273
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 317+316+30+321+15+17+320+294+18+299+300+319+28+269+29+62+110+310+307+301+10+60+16+13+308+318+309+12+311+325+293+14
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1EO8/1EO8_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit