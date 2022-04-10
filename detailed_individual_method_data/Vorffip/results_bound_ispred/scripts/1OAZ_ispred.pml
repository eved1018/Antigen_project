delete all 
    fetch 1OAZ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 33+34+35+37+41+43+46+47+48+87+88+89+106+107+108+109+112
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 43+42+45+44+84+78+47+87+46+35+105+51+100+41+82+48+85+121+102+38+101+40+11+49+83
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1OAZ/1OAZ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit