delete all 
    fetch 3EOA.I


    set cartoon_transparency,0.75


    select ann2, resi 144+147+148+151+155+191+193+194+197+198+199+200+201+203
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 204+257+166+305+205+140+203+202+306+302+284+175+255+161+130+285+201+141+304+176+281+287+128+235+160+164
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
    




    fetch 1ZOO.A
    set cartoon_transparency,0.75


    select ann, resi 144+147+148+151+155+191+193+194+197+198+199+200+201+203
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 309+307+166+308+310+165+305+164+204+205+306+175+257+177+176+281+203+128+140+130+285+214+161+304+255+201+163
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
    




    align 3EOA.I, 1ZOO.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/3EOA_1ZOO.png,width=900, height=900,dpi = 350,ray=1
    quit