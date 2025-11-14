# --- Kiwi silhouette (filled) with eye ---
#GDAY

# Body (ellipse)
t <- seq(0, 2*pi, length.out = 400)
body <- data.frame(
  x = 1.2 * cos(t),
  y = 0.9 * sin(t)
)

# Head (circle)
t2 <- seq(0, 2*pi, length.out = 200)
head <- data.frame(
  x = 0.6 + 0.35 * cos(t2),
  y = 0.2 + 0.35 * sin(t2)
)

# Combine body + head into a single polygon
kiwi_poly <- rbind(body, head)

# Beak (thin line)
beak <- data.frame(
  x = seq(0.9, 2.0, length.out = 100),
  y = seq(0.2, 0.05, length.out = 100)
)

# Legs
leg1 <- data.frame(x = rep(-0.3, 2), y = c(-1.0, -1.3))
leg2 <- data.frame(x = rep(0.0, 2), y = c(-1.0, -1.3))

# Eye (single point)
eye <- data.frame(x = 0.85, y = 0.35)

# --- Plot ---
plot(NULL, xlim = c(-1.5, 2.2), ylim = c(-1.6, 1.2),
     asp = 1, axes = FALSE, xlab = "", ylab = "",
     main = "Graham")

# Filled body+head
polygon(kiwi_poly$x, kiwi_poly$y, col = "brown", border = NA)

# Beak
lines(beak$x, beak$y, lwd = 3)

# Legs
segments(leg1$x[1], leg1$y[1], leg1$x[2], leg1$y[2], lwd = 4)
segments(leg2$x[1], leg2$y[1], leg2$x[2], leg2$y[2], lwd = 4)


# Graham loves pies