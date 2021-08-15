delete all 
    fetch 3NH7.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 43+60+62+64+67+74+77+78+79+80+81+84+86+90+91+92+93+94+95+96+97
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 91+92+93+85+80+88+84+89+94+95+83+86+117+96+118+79+82+81+97+116+101+100
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3NH7/3NH7_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit