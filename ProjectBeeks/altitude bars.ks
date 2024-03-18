set terrainkeep to true.
set bars to "".
set reach to 10.
set char to "|".
set scaleT to 500.
lock terrainH to body:geopositionof(ship:velocity:surface * reach).
on time:second{
    set posH to terrainH:terrainheight.
    set scaleT to max(scaleT,posH).
    set barcount to posH/(scaleT/terminal:width).
    for i in range(barcount) set bars to bars+char.
    print bars.
    set bars to "".
    return terrainkeep.
}.
