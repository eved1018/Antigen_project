delete all 
    fetch 1I16.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 38+39+40+42+43+44+45+46+51+53+63+65+66+94+95+96+97+99+102
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 2+23+4+3+53+17+6+96+1+120+65+13+9+22+24+130+5+15+19+20+119+16+21+14+10
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5FB8/5FB8_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit