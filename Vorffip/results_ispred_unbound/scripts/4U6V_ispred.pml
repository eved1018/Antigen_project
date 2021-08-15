delete all 
    fetch 6U49.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 173+179+181+182+183+185+186+187+188+189+190+191+200+263+264+266
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 149+28+13+125+140+110+20+9+116+109+56+12+19+7+114+227+26+145+27+142+144+3+11+133+146+35+6+113+111+118+120
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