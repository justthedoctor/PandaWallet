.class public Lorg/spongycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;
.super Ljava/lang/Object;
.source "JPAKEPrimeOrderGroup.java"


# instance fields
.field private final g:Ljava/math/BigInteger;

.field private final p:Ljava/math/BigInteger;

.field private final q:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "q"    # Ljava/math/BigInteger;
    .param p3, "g"    # Ljava/math/BigInteger;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    .line 61
    return-void
.end method

.method constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V
    .locals 3
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "q"    # Ljava/math/BigInteger;
    .param p3, "g"    # Ljava/math/BigInteger;
    .param p4, "skipChecks"    # Z

    .prologue
    const/16 v2, 0x14

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, "p"

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    const-string v0, "q"

    invoke-static {p2, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    const-string v0, "g"

    invoke-static {p3, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    if-nez p4, :cond_5

    .line 76
    sget-object v0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "p-1 must be evenly divisible by q"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    sget-object v0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "g must be in [2, p-1]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_2
    invoke-virtual {p3, p2, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "g^q mod p must equal 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_3
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "p must be prime"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_4
    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "q must be prime"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_5
    iput-object p1, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;->p:Ljava/math/BigInteger;

    .line 103
    iput-object p2, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;->q:Ljava/math/BigInteger;

    .line 104
    iput-object p3, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;->g:Ljava/math/BigInteger;

    .line 105
    return-void
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;->q:Ljava/math/BigInteger;

    return-object v0
.end method
