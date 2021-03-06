library(cranvas)
qnrc = qdata(nrcstat, color = RegCode)
(o1 = qbar(RegCode, qnrc))
(o2 = qparallel(vars = 13:10, data = qnrc, main = "Overview of Rankings",
   glyph = "tick", horizontal = FALSE, boxplot = TRUE))

## automatically brush the bar plot
brush(qnrc, 'style')$color = 'brown'
l = attr(o1, 'meta')$limits
# interpolate some random positions
p = approx(runif(50, l[1, 1], l[2, 1]), runif(50, l[1, 2], l[2, 2]), n = 500)
manual_brush(o1, cbind(p$x, p$y), pause = if (interactive()) 0.1 else 0)

## can also brush the par-coords plot
manual_brush(o2, as.matrix(expand.grid(seq(0, 1, 0.1), (1:4)-.1)), pause = if (interactive()) 0.2 else 0)

cranvas_off()
