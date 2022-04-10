delete all 
    fetch 3IU3.K


    set cartoon_transparency,0.75


    select ann2, resi 1+2+4+5+6+22+23+25+27+29+38+41+42+43+45+47+48+56+57+120
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 12+130+139+151+18+142+43+42+135+136+144+10+140+138+11+120+128+13+129+25+143+141+131+133
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
    




    fetch 6VWU.A
    set cartoon_transparency,0.75


    select ann, resi 139+140+142+143+144+160+161+163+165+167+176+179+180+181+183+185+186+194+195+258
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 274+277+302+303+156+266+276+275+150+268+273+300+264+271+278+154+77+5+74+73+149+88+243+241+270+89+78+272+269+80
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
    




    align 3IU3.K, 6VWU.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/3IU3_6VWU.png,width=900, height=900,dpi = 350,ray=1
    quit