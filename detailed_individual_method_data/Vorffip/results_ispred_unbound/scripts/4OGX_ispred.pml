delete all 
    fetch 2ANY.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 37+39+41+42+57+58+60+94+96+97+98+99+102+146+147+174+189+190+191+192+195+214+215+216+217+219+220+222+226
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 117+78+62+34+79+60+41+84+39+38+26+161+57+133+36+37+205+88+204+35+116+119+202+95+115+61+186+113+86
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4OGX/4OGX_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit