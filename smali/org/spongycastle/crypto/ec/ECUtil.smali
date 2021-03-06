.class Lorg/spongycastle/crypto/ec/ECUtil;
.super Ljava/lang/Object;
.source "ECUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static generateK(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "n"    # Ljava/math/BigInteger;
    .param p1, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 12
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 13
    .local v1, "nBitLength":I
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 15
    .local v0, "k":Ljava/math/BigInteger;
    :goto_0
    sget-object v2, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 17
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    .end local v0    # "k":Ljava/math/BigInteger;
    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .restart local v0    # "k":Ljava/math/BigInteger;
    goto :goto_0

    .line 20
    :cond_1
    return-object v0
.end method
