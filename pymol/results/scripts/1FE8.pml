delete all 
    fetch 1FE8.A


    set cartoon_transparency,0.75


    select ann2, resi 962+963+966+981+982+983+984+985+986+987+989+990+993+994+996+997+1023+1024+1026
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 1043+1016+981+985+983+1023+1013+1042+993+990+1022+1044+982+963+994+962+1041+1006+987+997+989+978+986+975+1009+1021+984
    indicate bycalpha pred
    create pred_res, indicate


    show sphere, annotated2
    color pink, annotated2
    set sphere_transparency, 0.5,annotated2


    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    




    fetch 1ATZ.A
    set cartoon_transparency,0.75


    select ann, resi 962+963+966+981+982+983+984+985+986+987+989+990+993+994+996+997+1023+1024+1026
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 1016+981+990+1023+1013+1022+993+983+978+1009+1042+985+994+997+1041+1043+1021+984+966+1072+1020+1006+989+1024+982+962
    indicate bycalpha pres
    create pres_res, indicate


    show sphere, annotated
    color red, annotated
    set sphere_transparency, 0.5,annotated


    show sphere, pres_res
    set sphere_scale,0.5,pres_res
    color blue, pres_res
    set sphere_transparency,0,pres_res
    set cartoon_transparency,1,pres_res
    




    align 1FE8.A, 1ATZ.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/1FE8_1ATZ.png,width=900, height=900,dpi = 350,ray=1
    quit