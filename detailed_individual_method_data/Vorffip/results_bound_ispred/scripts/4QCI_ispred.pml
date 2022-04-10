delete all 
    fetch 4QCI.D
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 40+71+73+75+76+77+79+80+81+82+83+84+85+86
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 73+70+69+59+90+44+22+24+13+86+15+43+68+77+88+71+67+100+23+85+78+42+57+41
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4QCI/4QCI_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit