delete all 
    fetch 6SMU.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 187+204+205+206+207+208+209+210+212+213+216+217
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 217+213+206+200+216+108+203+207+208+109+204+210+212+107+110+42+112+205+111+17+92+45+113+220+122+201+16+100+199+121
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1E6J/1E6J_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit