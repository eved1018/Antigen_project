delete all 
    fetch 5KVF.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 307+340+342+343+344+347+348+350+351+352+353+354+355+358+391
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 401+348+386+322+362+381+307+382+323+355+327+361+405+315+321+399+317+305+403+338+349+340+404
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5KVF/5KVF_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit