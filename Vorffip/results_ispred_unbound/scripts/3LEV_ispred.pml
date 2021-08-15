delete all 
    fetch 3LES.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 107+108+109+110+111+112+113+116+244
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 105+107+201+112+259+208+260+110+255+252+109+111+113+256+108+246+233+102+248+251+104+120+209+191+230+263+264
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3LEV/3LEV_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit