delete all 
    fetch 5DHV.M


    set cartoon_transparency,0.5


    select ann2, resi 11+14+15+18+21+22+48+51+55+58+59+62+63
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 21+14+22+18+58+63+12+13+59+51+46+55+64+16+20+24+9+57+60+48+17
    indicate bycalpha pred
    create pred_res, indicate


    show sphere, annotated2
    color brown, annotated2
    set sphere_transparency, 0.1,annotated2


    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color orange, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    




    fetch 6BSY.A
    set cartoon_transparency,0.75


    select ann, resi 11+14+15+18+21+22+48+51+55+58+59+62+63
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 62+16+21+13+17+51+63+18+59+9+12+55+14+58+20+25+57+60+24+53+10
    indicate bycalpha pres
    create pres_res, indicate


    show sphere, annotated
    color red, annotated
    set sphere_transparency, 0.7,annotated


    show sphere, pres_res
    set sphere_scale,0.5,pres_res
    color blue, pres_res
    set sphere_transparency,0,pres_res
    set cartoon_transparency,1,pres_res
    



    super 6BSY.A, 5DHV.M





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images_tests/5DHV_6BSY.png,width=900, height=900,dpi = 350,ray=1
    quit