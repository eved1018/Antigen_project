delete all 
    fetch 1FCQ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 138+140+142+143+144+145+146+147+148+149
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 143+142+144+139+141+42+140+45+113+135+43+138+89+72+92+159+96+23+273+230+93+145+74+28+148+24+94+160+20+274+97
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2J88/2J88_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit