delete all 
    fetch 3LEV.A


    set cartoon_transparency,0.75


    select ann2, resi 107+108+109+110+111+112+113+116+244
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 256+248+260+112+252+246+220+115+247+244+187+249+190+221+253+263+266+111+245+259+257+215+267+96+224+223+219
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
    




    fetch 3LES.A
    set cartoon_transparency,0.75


    select ann, resi 107+108+109+110+111+112+113+116+244
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 256+246+248+252+247+253+259+260+111+112+245+271+243+187+191+249+257+244+255+263+97+194+190+100+188+96+220
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
    




    align 3LEV.A, 3LES.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/3LEV_3LES.png,width=900, height=900,dpi = 350,ray=1
    quit