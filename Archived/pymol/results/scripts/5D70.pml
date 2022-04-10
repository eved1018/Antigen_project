delete all 
    fetch 5D70.A


    set cartoon_transparency,0.75


    select ann2, resi 10+11+12+13+15+16+17+20+21+24+83+86+87+119+120
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 120+13+115+119+16+17+121+116+20+11+49+36+12+14+23+9+99+50+8+100+24+118+39+37
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
    




    fetch 2GMF.A
    set cartoon_transparency,0.75


    select ann, resi 10+11+12+13+15+16+17+20+21+24+83+86+87+119+120
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 13+119+20+16+46+115+116+11+4+23+112+45+17+14+120+24+5+99+49+48+6+44+30+121
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
    




    align 5D70.A, 2GMF.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5D70_2GMF.png,width=900, height=900,dpi = 350,ray=1
    quit