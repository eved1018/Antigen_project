delete all 
    fetch 1YY9.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 349+353+384+408+409+411+412+417+418+438+440+441+443+465+467+468+469+471+473
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 91+545+294+163+602+520+253+597+244+519+576+609+257+87+612+191+539+584+542+88+255+518+613+150+502+543+569+595+217+594+306+190+513+517+165+544+514+556+503
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1YY9/1YY9_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit