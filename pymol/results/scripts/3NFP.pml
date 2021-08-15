delete all 
    fetch 3NFP.K


    set cartoon_transparency,0.75


    select ann2, resi 1+2+4+5+6+25+27+42+43+118+120+149+152+153+154
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 128+18+12+120+15+2+42+16+13+134+137+118+38+37+43+25+14+136+105+129+126+29+135+11
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


    select ann, resi 139+140+142+143+144+163+165+180+181+256+258+287+290+291+292
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
    




    align 3NFP.K, 6VWU.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/3NFP_6VWU.png,width=900, height=900,dpi = 350,ray=1
    quit