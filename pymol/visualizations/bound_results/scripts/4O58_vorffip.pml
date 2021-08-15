delete all 
    fetch 4O58.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 98+131+133+134+135+136+137+145+153+155+156+157+158+189+193+194+226
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 316+317+321+28+294+320+16+319+293+30+15+29+301+300+17+299+310+307+18+14+269+42+224+13+308+323+318+12+19+9+62+94
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4O58/4O58_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit