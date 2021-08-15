delete all 
    fetch 7KNA.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 122+123+124+125+128+130+131+173+175+262
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 581+573+584+566+553+570+591+569+587+576+531+556+214+577+511+595+150+538+592+226+30+555+32+148+544+215+588+550+228+535+216+29+594+551+565+574
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4F15/4F15_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit