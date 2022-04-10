delete all 
    fetch 4JPK.A


    set cartoon_transparency,0.75


    select ann2, resi 25+26+27+28+29+30+31+32+35+37+39+42+43+44+79+81+82+83+84+85+138+139+140+141+144
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 58+155+45+144+150+143+157+8+50+154+46+44+153+142+141+9+169+167+49+57+47+148+168+77+14+56
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
    




    fetch 4JPJ.A
    set cartoon_transparency,0.75


    select ann, resi 25+26+27+28+29+30+31+32+35+37+39+42+43+44+79+81+82+83+84+85+138+139+140+141+144
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 155+157+154+8+9+150+152+56+46+153+58+50+142+144+10+52+49+76+44+57+47+143+141+102+14+78
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
    




    align 4JPK.A, 4JPJ.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4JPK_4JPJ.png,width=900, height=900,dpi = 350,ray=1
    quit