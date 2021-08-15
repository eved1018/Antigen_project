delete all 
    fetch 1FE8.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 962+963+966+981+982+983+984+985+986+987+989+990+993+994+996+997+1023+1024+1026
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 1043+1016+981+985+983+1023+1013+1042+993+990+1022+1044+982+963+994+962+1041+1006+987+997+989+978+986+975+1009+1021+984
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1FE8/1FE8_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit