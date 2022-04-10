delete all 
    fetch 4HLJ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 792+822+823+824+825+826+827+828+829+841+843+844
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 843+823+825+661+841+662+664+663+660+844+824+826+756+767+827+666+746+835+703+836+665+821+667+769+724+818+755+883+868
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3WIH/3WIH_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit