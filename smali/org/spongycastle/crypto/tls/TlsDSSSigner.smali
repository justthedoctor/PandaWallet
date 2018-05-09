.class public Lorg/spongycastle/crypto/tls/TlsDSSSigner;
.super Lorg/spongycastle/crypto/tls/TlsDSASigner;
.source "TlsDSSSigner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsDSASigner;-><init>()V

    return-void
.end method


# virtual methods
.method protected createDSAImpl()Lorg/spongycastle/crypto/DSA;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lorg/spongycastle/crypto/signers/DSASigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/signers/DSASigner;-><init>()V

    return-object v0
.end method

.method protected getSignatureAlgorithm()S
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x2

    return v0
.end method

.method public isValidPublicKey(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Z
    .locals 1
    .param p1, "publicKey"    # Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .prologue
    .line 13
    instance-of v0, p1, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;

    return v0
.end method
