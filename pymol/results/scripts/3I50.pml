delete all 
    fetch 3I50.E


    set cartoon_transparency,0.75


    select ann2, resi 74+75+76+77+78+79+104+106+107+109+110
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 104+108+11+34+101+106+102+107+12+10+103+214+76+215+217+57+13+225+199+216+234+16+201+144+77+219+15+98+9+163+254
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
    




    fetch 2I69.A
    set cartoon_transparency,0.75


    select ann, resi 74+75+76+77+78+79+104+106+107+109+110
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 101+201+107+214+108+270+106+225+102+77+403+215+103+212+402+234+283+269+76+388+57+216+347+268+349+104+345+217+379+396+401+271+282+74
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
    




    align 3I50.E, 2I69.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/3I50_2I69.png,width=900, height=900,dpi = 350,ray=1
    quit