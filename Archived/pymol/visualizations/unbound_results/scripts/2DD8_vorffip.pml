delete all 
    fetch 5X58.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 359+363+365+390+391+392+395+426+436+482+484+485+486+487+488+489+491+492+494
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 443+476+503+1103+417+578+491+504+442+681+1071+470+47+416+741+475+886+415+480+360+405+1084+557+837+459+995+436+1073+1096+1083+689+48+151+149+1023+46+687+469+1064+984+1079+1070+484+489+958+1104
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2DD8/2DD8_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit