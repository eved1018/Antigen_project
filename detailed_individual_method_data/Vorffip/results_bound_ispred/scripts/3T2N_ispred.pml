delete all 
    fetch 3T2N.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 252+317+320+321+323+324+325+326+327+328+329+330+331+333+341+383+384+385+386+387
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 385+329+384+324+328+290+48+100+57+99+158+71+327+341+386+366+70+58+367+330+325+172+68+388+168+66+103+326+69+167+141+173
    indicate bycalpha pred
    create pred_res, indicate
    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3T2N/3T2N_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit