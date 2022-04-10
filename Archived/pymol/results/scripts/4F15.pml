delete all 
    fetch 4F15.A


    set cartoon_transparency,0.75


    select ann2, resi 112+113+114+115+118+120+121+163+164+166+253
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 47+45+78+391+389+383+44+46+390+392+386+385+43+77+382+70+71+393+51+49+388+387+74+264+72+80+384+60+263
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
    




    fetch 7KNA.A
    set cartoon_transparency,0.75


    select ann, resi 122+123+124+125+128+130+131+173+175+262
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 585+588+581+573+584+595+592+576+587+577+313+578+591+580+569+509+570+565+104+566+583+518+564+574+628+567+568+525+507+599+527+107+504+305+29+555
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
    




    align 4F15.A, 7KNA.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4F15_7KNA.png,width=900, height=900,dpi = 350,ray=1
    quit