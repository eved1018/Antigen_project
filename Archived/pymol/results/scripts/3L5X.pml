delete all 
    fetch 3L5X.A


    set cartoon_transparency,0.75


    select ann2, resi 11+14+15+101+104+105+107+108+109+110
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 84+38+86+85+70+35+72+43+87+36+44+111+88+89+80+107+42+39+11+108+101+81+79
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
    




    align 3L5X.A, 1IK0.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/3L5X_1IK0.png,width=900, height=900,dpi = 350,ray=1
    quit