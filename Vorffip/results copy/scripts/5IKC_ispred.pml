delete all 
    fetch 5IKC.M
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 60+62+63+64+93+94+95+96+130+132+134+135+136
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 139+76+64+95+65+66+94+75+78+81+68+98+80+99+82+74+96+79+102+69+132+85
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5IKC/5IKC_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit