delete all 
    fetch 4Y5V.C


    set cartoon_transparency,0.75


    select ann2, resi 33+34+59+60+61+62+87+88+89+91+92+93+94+95+149+150+152+153+202+203+204+205
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 93+91+117+92+114+205+204+202+203+60+150+152+130+94+33+95+153+61+149+34+182+143+82+151+116+11+206+89+200
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
    




    fetch 1ERN.A
    set cartoon_transparency,0.75


    select ann, resi 33+34+59+60+61+62+87+88+89+91+92+93+94+95+149+150+152+153+202+203+204+205
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 93+92+150+94+117+153+116+95+204+91+114+82+34+60+208+149+130+219+203+61+68+189+110+50+199+151+152+59
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
    




    align 4Y5V.C, 1ERN.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4Y5V_1ERN.png,width=900, height=900,dpi = 350,ray=1
    quit