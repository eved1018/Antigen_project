delete all 
    fetch 5D93.A


    set cartoon_transparency,0.75


    select ann2, resi 35+36+37+38+71+72+74+75+77+78+81+82+84+85+142+143+144+145+146+148
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 255+256+72+74+36+261+258+35+73+264+37+254+38+121+71+107+260+257+77+265+147+110+75+120+245+78+145+151+152
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
    




    fetch 3T59.A
    set cartoon_transparency,0.75


    select ann, resi 36+37+38+71+72+74+75+77+78+81+82+84+85+142+143+144+145+146+148
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 256+255+261+545+296+264+260+486+293+265+490+347+547+546+253+292+348+258+548+295+482+523+147+151+544+469+290+522+257+349+525+519+352+254+303+485
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
    




    align 5D93.A, 3T59.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5D93_3T59.png,width=900, height=900,dpi = 350,ray=1
    quit