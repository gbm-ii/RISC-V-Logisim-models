# RV0 Logisim-Evolution core demo by gbm
# The program is preloaded in rv0 model ROM.

	.text
main:
	li	a0, 10
restart:
	mv	a1, zero
next:
	slli	a2, a1, 2
	lw	a3, 32(a2)
	add	a3, a3, a1
	sw	a3, 32(a2)
	addi	a1, a1, 1
	bltu	a1, a0, next
	beq	zero, zero, restart
