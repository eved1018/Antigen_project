delete all 
    fetch 2I69.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 74+75+76+77+78+79+104+106+107+109+110
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 217+219+107+269+215+108+297+398+214+109+401+104+349+106+402+268+220+270+348+216+273+400+212+110+101+74+76+403+102+301+201+103+77+155
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3I50/3I50_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit