delete all 
    fetch 4UTA.B
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 274+310+311
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 395+348+346+394+373+396+107+16+101+15+347+345+398+108+392+344+350+338+106+20+397+13+393+18+102+375+301+209+104+266+14+22+279+374
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4UTA/4UTA_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit