delete all 
    fetch 6APN.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 201+205+208+209+212+215+216+293+294+298+301+306+309+310
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 109+113+248+112+114+265+160+60+339+319+317+229+232+258+253+143+316+268+233+320+372+116+107+231+251+43+304+110+331+111+305+329+301+250
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3GJF/3GJF_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit