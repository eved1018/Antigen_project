delete all 
    fetch 7KNA.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 122+123+124+125+128+130+131+173+175+262
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 585+588+581+573+584+595+592+576+587+577+313+578+591+580+569+509+570+565+104+566+583+518+564+574+628+567+568+525+507+599+527+107+504+305+29+555
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4F15/4F15_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit