delete all 
    fetch 2ADF.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 975+976+977+978+979+981+982+983+1009+1012+1013+1016+1017+1022+1023
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 984+1003+1021+1006+985+1004+937+1080+975+1022+1100+1109+1070+1023+1016+1039+1042+1082+1083+977+1040+1053+1079+1009+1069+940+1028
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2ADF/2ADF_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit