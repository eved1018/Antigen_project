delete all 
    fetch 4QTI.U


    set cartoon_transparency,0.75


    select ann2, resi 58+89+90+91+92+94+112+113+114+116+118+174
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 116+34+129+88+211+103+89+142+37+32+40+212+65+130+35+107+30+66+63+90+75+74+73+195+2+141+106+127+22+154
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
    




    fetch 3U74.U
    set cartoon_transparency,0.75


    select ann, resi 58+91+92+94+112+113+114+116+118+174
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 281+280+278+91+73+32+29+279+40+116+129+74+151+212+33+195+276+264+265+37+283+66+19+2+249+31+30+152+262+62+282
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
    




    align 4QTI.U, 3U74.U





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4QTI_3U74.png,width=900, height=900,dpi = 350,ray=1
    quit