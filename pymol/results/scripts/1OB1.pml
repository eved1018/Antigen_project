delete all 
    fetch 1OB1.C


    set cartoon_transparency,0.75


    select ann2, resi 8+9+10+11+13+14+23+24+25+26+28+38+39
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 1+84+86+87+3+4+95+6+85+2+88+20+82+93+34+7+14+31+83+81+18+40+8
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
    




    fetch 1CEJ.A
    set cartoon_transparency,0.75


    select ann, resi 8+9+10+11+13+14+23+24+25+26+28+38+39
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 84+14+2+15+86+1+87+40+34+31+6+88+16+18+12+43+85+62+33+69+95+41+25
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
    




    align 1OB1.C, 1CEJ.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/1OB1_1CEJ.png,width=900, height=900,dpi = 350,ray=1
    quit