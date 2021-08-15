delete all 
    fetch 3U9P.C


    set cartoon_transparency,0.75


    select ann2, resi 3+4+5+6+7+8+9+83+84+87+89+100+101+103+120+121+122
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 76+74+73+75+64+77+44+121+43+65+46+95+72+130+66+166+42+98+128+120+94+96+62+9+164+78
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
    




    fetch 3S26.A
    set cartoon_transparency,0.75


    select ann, resi 9+10+11+12+13+14+15+89+90+93+95+106+107+109+126+127+128
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 81+80+82+101+83+72+78+71+100+79+127+102+70+99+50+103+98+77+49+108+181+84+105+172+104+44
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
    




    align 3U9P.C, 3S26.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/3U9P_3S26.png,width=900, height=900,dpi = 350,ray=1
    quit