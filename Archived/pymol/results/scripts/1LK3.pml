delete all 
    fetch 1LK3.A


    set cartoon_transparency,0.75


    select ann2, resi 39+71+74+75+78+79+82+83+125+128+129+130+131+132+133+134+136+137
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 109+108+103+104+21+22+111+110+157+24+100+113+156+107+106+25+105+115+43+59+62+155+32+42
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
    




    fetch 1INR.A
    set cartoon_transparency,0.75


    select ann, resi 71+74+75+78+79+82+83+125+128+129+130+131+132+133+134+136+137
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 140+30+53+143+47+153+147+149+139+146+49+154+60+150+128+52+46+111+158+138+48+55+144+156+71+76
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
    




    align 1LK3.A, 1INR.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/1LK3_1INR.png,width=900, height=900,dpi = 350,ray=1
    quit