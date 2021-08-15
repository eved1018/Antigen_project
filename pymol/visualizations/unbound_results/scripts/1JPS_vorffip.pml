delete all 
    fetch 1BOY.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 152+154+156+164+165+166+167+168+169+170+171+190+192+194+197+198+199+200+201+203+204
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 51+50+45+37+138+140+139+74+135+47+87+91+94+131+82+167+165+78+133+83+86+84+168+88+169+48+85+46+44
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1JPS/1JPS_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit