delete all 
    fetch 4HKX.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 134+135+136+137+153+155+158+159+160+187+189+190+192+193+194+196+219+225+226
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 214+244+217+246+220+205+158+159+210+216+143+221+196+142+144+198+199+222+141+140+211+201+192+160+212+190+223+193
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4HKX/4HKX_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit