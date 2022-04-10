delete all 
    fetch 1ATZ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 975+976+977+978+979+981+982+983+1009+1012+1013+1016+1017+1022+1023
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 1016+981+990+1023+1013+1022+993+983+978+1009+1042+985+994+997+1041+1043+1021+984+966+1072+1020+1006+989+1024+982+962
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2ADF/2ADF_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit