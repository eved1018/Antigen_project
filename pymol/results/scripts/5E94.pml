delete all 
    fetch 5E94.G


    set cartoon_transparency,0.75


    select ann2, resi 29+30+31+32+33+35+36+39+40+43+68+137+138+141+142+145
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 144+145+143+113+33+68+80+40+120+111+39+43+117+115+101+141+32+118+140+142+36+121+122+112
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
    




    fetch 7LCK.R
    set cartoon_transparency,0.75


    select ann, resi 29+30+31+32+33+35+36+39+40+43+68+137+138+141+142+145
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 205+417+178+291+348+254+420+255+290+80+264+256+252+168+266+260+413+262+170+257+289+336+421+169+347+414+202+259+418+329+332+143+345+263+416
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
    




    align 5E94.G, 7LCK.R





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5E94_7LCK.png,width=900, height=900,dpi = 350,ray=1
    quit