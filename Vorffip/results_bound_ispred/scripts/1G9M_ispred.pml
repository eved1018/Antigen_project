delete all 
    fetch 1G9M.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 119+120+122+200+202+203+419+421+422+423+434+437
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 223+297+372+220+440+222+204+438+219+201+458+125+365+198+366+216+441+388+425+262+202+437+368+434+422+474+371+252+120+419+439+221
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1G9M/1G9M_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit