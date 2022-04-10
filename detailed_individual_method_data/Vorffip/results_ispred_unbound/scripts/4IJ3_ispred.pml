delete all 
    fetch 3Q6O.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 69+70+71+72+76+114+115+116+117+118+119+120+122+132+133+134+135+137+139+149
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 159+167+158+157+156+102+235+127+72+70+253+161+116+75+118+160+139+69+74+71+104+103+251+119+38+252+255+241+130
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4IJ3/4IJ3_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit