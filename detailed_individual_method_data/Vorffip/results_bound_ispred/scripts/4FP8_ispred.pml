delete all 
    fetch 4FP8.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 98+131+133+134+135+136+137+145+153+155+156+186+189+190+192+193+194+226
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 107+110+143+294+62+142+104+144+94+81+255+106+214+145+92+57+111+216+119+296+49+114+259+291+105+217+103+141+244+208
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4FP8/4FP8_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit