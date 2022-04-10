delete all 
    fetch 5MVZ.U


    set cartoon_transparency,0.75


    select ann2, resi 20+21+22+23+24+25+27+64+65+66+67+74+81+82+84+85+86+87
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 150+6+149+4+148+46+152+11+151+7+105+37+108+5+130+31+76+131+106+30+142+133+129+23+126
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


    select ann, resi 20+21+22+23+24+25+27+64+65+66+67+74+81+82+84+85+86+87
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
    




    align 5MVZ.U, 5R8B.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5MVZ_5R8B.png,width=900, height=900,dpi = 350,ray=1
    quit