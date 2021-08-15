delete all 
    fetch 5TZT.D


    set cartoon_transparency,0.75


    select ann2, resi 3+27+35+37+101+102+103+104
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 14+114+88+115+116+91+15+13+110+12+11+111+89+16+93+84+9+90+5+24+6+20+43+75+61
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
    




    fetch 2VSC.A
    set cartoon_transparency,0.75


    select ann, resi 3+27+35+37+101+102+103+104
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 106+112+111+109+108+12+104+107+14+105+3+113+110+88+115+103+22+8+5+4+29+114+6+11
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
    




    align 5TZT.D, 2VSC.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5TZT_2VSC.png,width=900, height=900,dpi = 350,ray=1
    quit