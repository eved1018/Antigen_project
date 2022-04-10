delete all 
    fetch 4ZLP.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 1440+1463+1466+1467+1468+1469+1470+1471+1472+1474+1486+1487+1619+1621
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 1556+1474+1554+1471+1559+1434+1583+1557+1470+1634+1505+1435+1637+1468+1386+1487+1506+1593+1486+1635+1548+1581+1549+1508+1408+1431+1546+1636+1388
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5CZX/5CZX_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit