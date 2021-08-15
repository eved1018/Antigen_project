delete all 
    fetch 4HD9.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 1+2+3+35+36+37+39+71+73+74+75+77+78+79+80+81+82+83+84
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 181+140+139+135+141+175+187+137+203+174+142+183+134+202+176+92+81+102+138+178+84+200+189+161+121+166+82+94
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4HCR/4HCR_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit