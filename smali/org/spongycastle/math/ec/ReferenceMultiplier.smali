.class public Lorg/spongycastle/math/ec/ReferenceMultiplier;
.super Lorg/spongycastle/math/ec/AbstractECMultiplier;
.source "ReferenceMultiplier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lorg/spongycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method


# virtual methods
.method protected multiplyPositive(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 4
    .param p1, "p"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;

    .prologue
    .line 18
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 19
    .local v1, "q":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 20
    .local v2, "t":I
    if-lez v2, :cond_2

    .line 22
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    move-object v1, p1

    .line 26
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 28
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    .line 29
    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 31
    invoke-virtual {v1, p1}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 26
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    .end local v0    # "i":I
    :cond_2
    return-object v1
.end method
