delete all 
    fetch 3HI6.B


    set cartoon_transparency,0.75


    select ann2, resi 140+141+142+143+144+200+201+202+203+204+205+206+239+241+242+243+263+264+269
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 205+204+140+203+175+202+200+141+144+188+176+201+189+269+305+264+268+244+177+190+243+194+178+198+214+143
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
    




    fetch 1XDG.A
    set cartoon_transparency,0.75


    select ann, resi 140+141+142+143+144+200+201+202+203+204+205+206+239+241+242+243+263+264+269
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 205+166+307+204+309+140+306+203+175+257+308+164+305+165+202+132+302+128+200+161+304+130+176+303+139+284+160
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
    




    align 3HI6.B, 1XDG.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/3HI6_1XDG.png,width=900, height=900,dpi = 350,ray=1
    quit