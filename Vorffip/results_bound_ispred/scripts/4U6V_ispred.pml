delete all 
    fetch 4U6V.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 173+179+181+182+183+185+186+187+188+189+190+191+200+263+264+266
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 15+13+28+162+277+164+14+12+35+168+126+137+271+39+26+221+75+16+121+214+283+29+281+30+222+37+69+279+215+31
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4U6V/4U6V_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit