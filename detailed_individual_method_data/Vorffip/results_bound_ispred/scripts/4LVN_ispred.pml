delete all 
    fetch 4LVN.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 363+364+365+367+387+390+391+393+394+395+396+397+401+408+410+454
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 601+578+579+464+466+462+421+423+441+494+463+467+465+417+520+495+442+425+443+444+426+469+589+524+440+580+418+427+468+496
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4LVN/4LVN_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit