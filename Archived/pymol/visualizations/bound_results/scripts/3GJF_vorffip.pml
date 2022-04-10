delete all 
    fetch 3GJF.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 58+62+65+66+69+72+73+150+151+155+158+163+166+167
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 234+204+202+242+27+244+192+235+10+8+167+25+171+232+96+32+231+236+159+115+23+237+63+12+146+48+66+147+7+99+143
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3GJF/3GJF_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit