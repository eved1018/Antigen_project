delete all 
    fetch 4IRZ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 83+145+148+149+150+151+152+154+155+160+161+162+163+193+198+199+200+201+202+204+206+208+255+256+257
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 559+558+561+587+590+591+565+560+555+556+562+592+589+557+564+457+458+188+296+454+187+567+298+563+214+241+456+421+554+451+588+537+299+220+158+217+431
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4IRZ/4IRZ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit