.class public Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;
.super Ljava/lang/Object;
.source "RSAKeyEncapsulation.java"

# interfaces
.implements Lorg/spongycastle/crypto/KeyEncapsulation;


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private kdf:Lorg/spongycastle/crypto/DerivationFunction;

.field private key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

.field private rnd:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->ZERO:Ljava/math/BigInteger;

    .line 21
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/DerivationFunction;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "kdf"    # Lorg/spongycastle/crypto/DerivationFunction;
    .param p2, "rnd"    # Ljava/security/SecureRandom;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    .line 38
    iput-object p2, p0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->rnd:Ljava/security/SecureRandom;

    .line 39
    return-void
.end method


# virtual methods
.method public decrypt([BI)Lorg/spongycastle/crypto/CipherParameters;
    .locals 2
    .param p1, "in"    # [B
    .param p2, "keyLen"    # I

    .prologue
    .line 162
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->decrypt([BIII)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public decrypt([BIII)Lorg/spongycastle/crypto/CipherParameters;
    .locals 11
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "keyLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 126
    iget-object v7, p0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->isPrivate()Z

    move-result v7

    if-nez v7, :cond_0

    .line 128
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Private key required for decryption"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 131
    :cond_0
    iget-object v7, p0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    .line 132
    .local v5, "n":Ljava/math/BigInteger;
    iget-object v7, p0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v4

    .line 135
    .local v4, "d":Ljava/math/BigInteger;
    new-array v0, p3, [B

    .line 136
    .local v0, "C":[B
    array-length v7, v0

    invoke-static {p1, p2, v0, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    new-instance v3, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v3, v7, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 140
    .local v3, "c":Ljava/math/BigInteger;
    invoke-virtual {v3, v4, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 141
    .local v6, "r":Ljava/math/BigInteger;
    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    add-int/lit8 v7, v7, 0x7

    div-int/lit8 v7, v7, 0x8

    invoke-static {v7, v6}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v2

    .line 144
    .local v2, "R":[B
    iget-object v7, p0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    new-instance v8, Lorg/spongycastle/crypto/params/KDFParameters;

    const/4 v9, 0x0

    invoke-direct {v8, v2, v9}, Lorg/spongycastle/crypto/params/KDFParameters;-><init>([B[B)V

    invoke-interface {v7, v8}, Lorg/spongycastle/crypto/DerivationFunction;->init(Lorg/spongycastle/crypto/DerivationParameters;)V

    .line 147
    new-array v1, p4, [B

    .line 148
    .local v1, "K":[B
    iget-object v7, p0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    array-length v8, v1

    invoke-interface {v7, v1, v10, v8}, Lorg/spongycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 150
    new-instance v7, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v7, v1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    return-object v7
.end method

.method public encrypt([BI)Lorg/spongycastle/crypto/CipherParameters;
    .locals 1
    .param p1, "out"    # [B
    .param p2, "keyLen"    # I

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->encrypt([BII)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public encrypt([BII)Lorg/spongycastle/crypto/CipherParameters;
    .locals 11
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "keyLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 72
    iget-object v7, p0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->isPrivate()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 74
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Public key required for encryption"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 77
    :cond_0
    iget-object v7, p0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    .line 78
    .local v5, "n":Ljava/math/BigInteger;
    iget-object v7, p0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v4

    .line 81
    .local v4, "e":Ljava/math/BigInteger;
    sget-object v7, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->ZERO:Ljava/math/BigInteger;

    sget-object v8, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    iget-object v9, p0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->rnd:Ljava/security/SecureRandom;

    invoke-static {v7, v8, v9}, Lorg/spongycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v6

    .line 82
    .local v6, "r":Ljava/math/BigInteger;
    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    add-int/lit8 v7, v7, 0x7

    div-int/lit8 v7, v7, 0x8

    invoke-static {v7, v6}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v2

    .line 85
    .local v2, "R":[B
    invoke-virtual {v6, v4, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 86
    .local v3, "c":Ljava/math/BigInteger;
    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    add-int/lit8 v7, v7, 0x7

    div-int/lit8 v7, v7, 0x8

    invoke-static {v7, v3}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v0

    .line 87
    .local v0, "C":[B
    array-length v7, v0

    invoke-static {v0, v10, p1, p2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iget-object v7, p0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    new-instance v8, Lorg/spongycastle/crypto/params/KDFParameters;

    const/4 v9, 0x0

    invoke-direct {v8, v2, v9}, Lorg/spongycastle/crypto/params/KDFParameters;-><init>([B[B)V

    invoke-interface {v7, v8}, Lorg/spongycastle/crypto/DerivationFunction;->init(Lorg/spongycastle/crypto/DerivationParameters;)V

    .line 94
    new-array v1, p3, [B

    .line 95
    .local v1, "K":[B
    iget-object v7, p0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    array-length v8, v1

    invoke-interface {v7, v1, v10, v8}, Lorg/spongycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 97
    new-instance v7, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v7, v1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    return-object v7
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "key"    # Lorg/spongycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 50
    instance-of v0, p1, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RSA key required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    check-cast p1, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .end local p1    # "key":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p1, p0, Lorg/spongycastle/crypto/kems/RSAKeyEncapsulation;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 58
    return-void
.end method
