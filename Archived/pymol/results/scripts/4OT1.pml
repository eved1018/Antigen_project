delete all 
    fetch 4OT1.A


    set cartoon_transparency,0.75


    select ann2, resi 131+359+360+361+362+379+380+381+382+383+386+388+422
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 349+132+130+350+201+348+131+119+202+374+133+412+373+347+203+372+436+121+409+345+122+356+120+410
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
    




    fetch 4OSN.A
    set cartoon_transparency,0.75


    select ann, resi 131+359+360+361+362+379+380+381+382+383+386+388+422
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 349+415+417+350+118+348+416+394+119+372+393+433+121+130+356+374+435+409+367+405+381+414+384+412
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
    




    align 4OT1.A, 4OSN.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4OT1_4OSN.png,width=900, height=900,dpi = 350,ray=1
    quit