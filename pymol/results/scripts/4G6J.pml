delete all 
    fetch 4G6J.A


    set cartoon_transparency,0.75


    select ann2, resi 19+20+21+22+23+25+27+29+31+34+35+37+38+39+64+65+66+86+87+88+129
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 150+149+148+46+6+4+152+7+11+56+151+108+33+5+34+93+105+23+36+53+35+51+103+24+75+147
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
    




    fetch 5R8B.A
    set cartoon_transparency,0.75


    select ann, resi 19+20+21+22+23+25+27+29+31+34+35+37+38+39+64+65+66+86+87+88+129
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 6+4+150+149+46+7+148+151+11+5+152+2+15+32+1+103+108+33+53+36+39+23+3+56+34+110
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
    




    align 4G6J.A, 5R8B.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4G6J_5R8B.png,width=900, height=900,dpi = 350,ray=1
    quit