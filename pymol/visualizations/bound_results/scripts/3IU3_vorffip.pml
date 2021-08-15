delete all 
    fetch 3IU3.K
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 1+2+4+5+6+22+23+25+27+29+38+41+42+43+45+47+48+56+57+120
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 12+130+139+151+18+142+43+42+135+136+144+10+140+138+11+120+128+13+129+25+143+141+131+133
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3IU3/3IU3_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit