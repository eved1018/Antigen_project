delete all 
    fetch 1ATZ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 975+976+977+978+979+981+982+983+1009+1012+1013+1016+1017+1022+1023
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 937+1040+1042+940+1039+977+1004+1006+975+1003+1070+938
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 1053+1082+1083+1056+925+1080+981+983+1022+978+1023+1021+1020+1058
    indicate bycalpha pred_2
    create pred_res_2, indicate
    




    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res


    show sphere, pred_res_2
    set sphere_scale,0.5,pred_res_2
    color red, pred_res_2
    set sphere_transparency,0,pred_res_2
    set cartoon_transparency,1,pred_res_2

    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/2ADF/2ADF_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit