delete all 
    fetch 3BTA.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 901+916+917+918+919+920+952+953+954+955+1055+1056+1057+1058+1059+1060+1061+1062+1063+1064+1288+1291+1293
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 1252+1265+2+104+98+1003+502+647+1005+503+101+99+1149+657+1116+886+1253+1004+1143+410+564+603+386+1145+1146+95+1144+916+392+567+507+645+648+826+1275+830+827+385+667+1266+530+1269+1202+596+684+499+565
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2NYY/2NYY_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit