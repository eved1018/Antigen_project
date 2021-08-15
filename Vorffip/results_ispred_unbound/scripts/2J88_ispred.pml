delete all 
    fetch 1FCQ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 138+140+142+143+144+145+146+147+148+149
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 147+142+139+140+93+146+43+296+143+42+312+131+163+259+64+82+311+113+89+273+48+272+39+63+204+124+145+30+128+310+88
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2J88/2J88_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit