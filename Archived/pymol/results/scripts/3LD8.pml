delete all 
    fetch 3LD8.A


    set cartoon_transparency,0.75


    select ann2, resi 53+55+57+58+61+62+65+158+291+319+320+322+326
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 314+295+332+307+310+168+328+331+329+325+296+3+188+33+326+330+187+333+299+7+237+23+184+125+108+313+317+32+322+34+1+174
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
    




    fetch 6MEV.A
    set cartoon_transparency,0.75


    select ann, resi 53+55+57+58+61+62+65+158+291+319+320+322+326
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 338+339+335+310+337+340+334+314+341+32+332+125+33+328+34+246+1+331+333+336+306+168+24+30+325+307+28+215+303+92+295+36
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
    




    align 3LD8.A, 6MEV.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/3LD8_6MEV.png,width=900, height=900,dpi = 350,ray=1
    quit