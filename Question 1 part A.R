
v1 <- c(13.3, 13.4, 12.9, 13.6, 13.2, 12.2, 14.2, 13.9, 13.9)
v2 <- c(10.6, 9.4, 10.0, 10.2, 9.6, 9.9, 10.7, 10.4, 11.0)
v3 <- c(21.2, 21.0, 20.5, 21.0, 20.1, 20.7, 21.1, 19.8, 19.1)

manova.data <- data.frame(Treatment = rep(c(1,2,3), each = 3), y1 = v1, y2 = v2, y3 = v3)
manova.result <- manova(cbind(y1, y2, y3) ~ Treatment, data = manova.data)
summary(manova.result, test = "Wilks")
