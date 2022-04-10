delete all 
    fetch 3VG9.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 33+34+35+36+37+39+41+42+102+110+113+216+217+221+222+223+224+227+228+231+235+292+293+294+297+298+301
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 272+296+103+248+116+274+112+271+199+107+297+129+108+61+114+62+110+120+202+109+161+117+100+293+115+269+144+247+290+308+64+286
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3VG9/3VG9_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit