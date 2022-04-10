delete all 
    fetch 4HF5.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 131+133+134+135+136+137+140+143+144+145+153+155+156+158+189+190+193+194+226
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 325+106+107+14+324+223+15+13+12+11+28+209+217+308+198+221+104+211+29+16+21+111+318+30+316+309+219+10+17+222+110+40
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4HF5/4HF5_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit