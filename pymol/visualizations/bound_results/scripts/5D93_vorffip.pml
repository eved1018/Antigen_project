delete all 
    fetch 5D93.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 35+36+37+38+71+72+74+75+77+78+81+82+84+85+142+143+144+145+146+148
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 255+256+72+74+36+261+258+35+73+264+37+254+38+121+71+107+260+257+77+265+147+110+75+120+245+78+145+151+152
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5D93/5D93_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit