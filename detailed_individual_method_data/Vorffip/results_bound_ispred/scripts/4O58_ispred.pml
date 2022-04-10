delete all 
    fetch 4O58.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 98+131+133+134+135+136+137+145+153+155+156+157+158+189+193+194+226
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 323+21+324+41+316+34+31+18+28+320+20+30+42+14+313+311+293+317+17+15+19+308+214+318+27+292+314+321+269+13+12+11
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4O58/4O58_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit