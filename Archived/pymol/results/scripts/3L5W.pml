delete all 
    fetch 3L5W.I


    set cartoon_transparency,0.75


    select ann2, resi 11+14+15+101+104+105+107+108+109+110
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 35+85+84+86+80+83+89+81+87+82+79+72+33+44+106+78+70+42+88+107+105+36+101
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
    




    fetch 1IK0.A
    set cartoon_transparency,0.75


    select ann, resi 11+14+15+101+104+105+107+108+109+110
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 111+86+78+105+87+109+3+35+79+84+80+2+77+89+11+33+74+62+41+83+85+110+88+104
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
    




    align 3L5W.I, 1IK0.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/3L5W_1IK0.png,width=900, height=900,dpi = 350,ray=1
    quit