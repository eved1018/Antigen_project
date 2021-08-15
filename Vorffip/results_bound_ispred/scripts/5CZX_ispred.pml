delete all 
    fetch 5CZX.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 1440+1463+1466+1467+1468+1469+1470+1471+1472+1474+1486+1487+1619+1621
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 1484+1592+1469+1470+1557+1459+1468+1500+1556+1618+1482+1504+1442+1615+1481+1620+1549+1436+1547+1463+1502+1435+1441+1590+1444+1577+1503+1432+1471
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5CZX/5CZX_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit