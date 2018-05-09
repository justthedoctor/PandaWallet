.class public final Lorg/spongycastle/crypto/tls/SessionParameters;
.super Ljava/lang/Object;
.source "SessionParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/tls/SessionParameters$1;,
        Lorg/spongycastle/crypto/tls/SessionParameters$Builder;
    }
.end annotation


# instance fields
.field private cipherSuite:I

.field private compressionAlgorithm:S

.field private encodedServerExtensions:[B

.field private masterSecret:[B

.field private peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;


# direct methods
.method private constructor <init>(IS[BLorg/spongycastle/crypto/tls/Certificate;[B)V
    .locals 1
    .param p1, "cipherSuite"    # I
    .param p2, "compressionAlgorithm"    # S
    .param p3, "masterSecret"    # [B
    .param p4, "peerCertificate"    # Lorg/spongycastle/crypto/tls/Certificate;
    .param p5, "encodedServerExtensions"    # [B

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p1, p0, Lorg/spongycastle/crypto/tls/SessionParameters;->cipherSuite:I

    .line 92
    iput-short p2, p0, Lorg/spongycastle/crypto/tls/SessionParameters;->compressionAlgorithm:S

    .line 93
    invoke-static {p3}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters;->masterSecret:[B

    .line 94
    iput-object p4, p0, Lorg/spongycastle/crypto/tls/SessionParameters;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    .line 95
    iput-object p5, p0, Lorg/spongycastle/crypto/tls/SessionParameters;->encodedServerExtensions:[B

    .line 96
    return-void
.end method

.method synthetic constructor <init>(IS[BLorg/spongycastle/crypto/tls/Certificate;[BLorg/spongycastle/crypto/tls/SessionParameters$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # S
    .param p3, "x2"    # [B
    .param p4, "x3"    # Lorg/spongycastle/crypto/tls/Certificate;
    .param p5, "x4"    # [B
    .param p6, "x5"    # Lorg/spongycastle/crypto/tls/SessionParameters$1;

    .prologue
    .line 10
    invoke-direct/range {p0 .. p5}, Lorg/spongycastle/crypto/tls/SessionParameters;-><init>(IS[BLorg/spongycastle/crypto/tls/Certificate;[B)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters;->masterSecret:[B

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters;->masterSecret:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 104
    :cond_0
    return-void
.end method

.method public copy()Lorg/spongycastle/crypto/tls/SessionParameters;
    .locals 6

    .prologue
    .line 108
    new-instance v0, Lorg/spongycastle/crypto/tls/SessionParameters;

    iget v1, p0, Lorg/spongycastle/crypto/tls/SessionParameters;->cipherSuite:I

    iget-short v2, p0, Lorg/spongycastle/crypto/tls/SessionParameters;->compressionAlgorithm:S

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/SessionParameters;->masterSecret:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/SessionParameters;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    iget-object v5, p0, Lorg/spongycastle/crypto/tls/SessionParameters;->encodedServerExtensions:[B

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/SessionParameters;-><init>(IS[BLorg/spongycastle/crypto/tls/Certificate;[B)V

    return-object v0
.end method

.method public getCipherSuite()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters;->cipherSuite:I

    return v0
.end method

.method public getCompressionAlgorithm()S
    .locals 1

    .prologue
    .line 119
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters;->compressionAlgorithm:S

    return v0
.end method

.method public getMasterSecret()[B
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters;->masterSecret:[B

    return-object v0
.end method

.method public getPeerCertificate()Lorg/spongycastle/crypto/tls/Certificate;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SessionParameters;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    return-object v0
.end method

.method public readServerExtensions()Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/SessionParameters;->encodedServerExtensions:[B

    if-nez v1, :cond_0

    .line 136
    const/4 v1, 0x0

    .line 140
    :goto_0
    return-object v1

    .line 139
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/SessionParameters;->encodedServerExtensions:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 140
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object v1

    goto :goto_0
.end method
