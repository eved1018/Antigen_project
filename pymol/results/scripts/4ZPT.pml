delete all 
    fetch 4ZPT.R


    set cartoon_transparency,0.75


    select ann2, resi 398+400+496+527+528+529+530+531+532+535+536+539+540+542+543+549
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 542+510+505+548+540+553+506+547+539+579+535+507+403+543+536+511+541+549+544+576+580+546+513+519+474+473+550+495
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
    




    fetch 4ZPW.R
    set cartoon_transparency,0.75


    select ann, resi 398+400+496+527+528+529+530+531+532+535+536+539+540+542+543+549
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 553+540+535+542+510+548+473+506+513+544+505+507+539+547+536+514+522+541+511+508+579+523+427+519+531+495+550+458
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
    




    align 4ZPT.R, 4ZPW.R





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4ZPT_4ZPW.png,width=900, height=900,dpi = 350,ray=1
    quit