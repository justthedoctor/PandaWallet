.class public abstract Lorg/spongycastle/math/ec/AbstractECMultiplier;
.super Ljava/lang/Object;
.source "AbstractECMultiplier.java"

# interfaces
.implements Lorg/spongycastle/math/ec/ECMultiplier;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public multiply(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 3
    .param p1, "p"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;

    .prologue
    .line 9
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v1

    .line 10
    .local v1, "sign":I
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 16
    :cond_1
    :goto_0
    return-object v0

    .line 15
    :cond_2
    invoke-virtual {p2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/spongycastle/math/ec/AbstractECMultiplier;->multiplyPositive(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 16
    .local v0, "positive":Lorg/spongycastle/math/ec/ECPoint;
    if-gtz v1, :cond_1

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->negate()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract multiplyPositive(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
.end method
