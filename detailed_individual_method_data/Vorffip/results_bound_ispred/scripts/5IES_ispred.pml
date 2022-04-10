delete all 
    fetch 5IES.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 25+26+27+28+29+30+37+39+42+43+44+79+81+82+83+84+85+138+139+140+141+144
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 58+143+84+82+83+155+141+68+144+114+138+52+66+142+45+81+111+109+29+33+145+67+85+28+79+34
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5IES/5IES_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit