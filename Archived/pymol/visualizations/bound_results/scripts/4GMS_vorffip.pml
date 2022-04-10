delete all 
    fetch 4GMS.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 98+131+134+135+136+137+153+155+156+157+158+159+189+190+193+194+196+226
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 316+15+320+321+17+317+16+294+14+110+30+13+29+319+28+301+18+299+300+307+12+293+325+323+269+11+310+318+42+266+19+94
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4GMS/4GMS_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit