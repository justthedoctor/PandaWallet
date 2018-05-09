.class public Lorg/spongycastle/crypto/tls/SecurityParameters;
.super Ljava/lang/Object;
.source "SecurityParameters.java"


# instance fields
.field cipherSuite:I

.field clientRandom:[B

.field compressionAlgorithm:S

.field entity:I

.field masterSecret:[B

.field maxFragmentLength:S

.field prfAlgorithm:I

.field serverRandom:[B

.field truncatedHMac:Z

.field verifyDataLength:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->entity:I

    .line 8
    iput v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    .line 9
    iput-short v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    .line 10
    iput v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    .line 11
    iput v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    .line 12
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    .line 13
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    .line 14
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    .line 17
    iput-short v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->truncatedHMac:Z

    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    .line 37
    :cond_0
    return-void
.end method

.method copySessionParametersFrom(Lorg/spongycastle/crypto/tls/SecurityParameters;)V
    .locals 1
    .param p1, "other"    # Lorg/spongycastle/crypto/tls/SecurityParameters;

    .prologue
    .line 22
    iget v0, p1, Lorg/spongycastle/crypto/tls/SecurityParameters;->entity:I

    iput v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->entity:I

    .line 23
    iget v0, p1, Lorg/spongycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    iput v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    .line 24
    iget-short v0, p1, Lorg/spongycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    iput-short v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    .line 25
    iget v0, p1, Lorg/spongycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    iput v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    .line 26
    iget v0, p1, Lorg/spongycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    iput v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    .line 27
    iget-object v0, p1, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    .line 28
    return-void
.end method

.method public getCipherSuite()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    return v0
.end method

.method public getClientRandom()[B
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    return-object v0
.end method

.method public getCompressionAlgorithm()S
    .locals 1

    .prologue
    .line 60
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    return v0
.end method

.method public getEntity()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->entity:I

    return v0
.end method

.method public getMasterSecret()[B
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    return-object v0
.end method

.method public getPrfAlgorithm()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    return v0
.end method

.method public getServerRandom()[B
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    return-object v0
.end method

.method public getVerifyDataLength()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lorg/spongycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    return v0
.end method
