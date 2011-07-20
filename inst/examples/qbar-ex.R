library(cranvas)
data(nrcstat)
qnrc = qdata(nrcstat, fill = dscale(nrcstat$Regional.Code, hue_pal()), color = dscale(nrcstat$Regional.Code, hue_pal()))
qbar(Regional.Code, qnrc)
qparallel(vars = 13:10, data = qnrc, main = "Overview of Rankings", glyph = "tick",
    horizontal = FALSE, boxplot = TRUE)