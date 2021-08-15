delete all 
    fetch 4GSX.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 310+313+314+315+316+317+321+352+354+364+368
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 12+10+286+20+194+9+101+22+300+132+15+299+18+8+398+13+334+348+401+297+301+16+392+298+191+211+96+189+106+220+215+110+107+192+108
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4AL8/4AL8_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit