.class public abstract Lorg/spongycastle/crypto/tls/DTLSProtocol;
.super Ljava/lang/Object;
.source "DTLSProtocol.java"


# instance fields
.field protected final secureRandom:Ljava/security/SecureRandom;


# direct methods
.method protected constructor <init>(Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "secureRandom"    # Ljava/security/SecureRandom;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-nez p1, :cond_0

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'secureRandom\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/DTLSProtocol;->secureRandom:Ljava/security/SecureRandom;

    .line 24
    return-void
.end method

.method protected static evaluateMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S
    .locals 2
    .param p0, "clientExtensions"    # Ljava/util/Hashtable;
    .param p1, "serverExtensions"    # Ljava/util/Hashtable;
    .param p2, "alertDescription"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->getMaxFragmentLengthExtension(Ljava/util/Hashtable;)S

    move-result v0

    .line 45
    .local v0, "maxFragmentLength":S
    if-ltz v0, :cond_0

    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->getMaxFragmentLengthExtension(Ljava/util/Hashtable;)S

    move-result v1

    if-eq v0, v1, :cond_0

    .line 47
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, p2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 49
    :cond_0
    return v0
.end method

.method protected static generateCertificate(Lorg/spongycastle/crypto/tls/Certificate;)[B
    .locals 2
    .param p0, "certificate"    # Lorg/spongycastle/crypto/tls/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 56
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/Certificate;->encode(Ljava/io/OutputStream;)V

    .line 57
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method protected static generateSupplementalData(Ljava/util/Vector;)[B
    .locals 2
    .param p0, "supplementalData"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0, p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->writeSupplementalData(Ljava/io/OutputStream;Ljava/util/Vector;)V

    .line 65
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method protected static validateSelectedCipherSuite(IS)V
    .locals 2
    .param p0, "selectedCipherSuite"    # I
    .param p1, "alertDescription"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    sparse-switch p0, :sswitch_data_0

    .line 89
    return-void

    .line 87
    :sswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RC4 MUST NOT be used with DTLS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
        0x8a -> :sswitch_0
        0x8e -> :sswitch_0
        0x92 -> :sswitch_0
        0xc002 -> :sswitch_0
        0xc007 -> :sswitch_0
        0xc00c -> :sswitch_0
        0xc011 -> :sswitch_0
        0xc016 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected processFinished([B[B)V
    .locals 4
    .param p1, "body"    # [B
    .param p2, "expected_verify_data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 31
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    array-length v2, p2

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v1

    .line 33
    .local v1, "verify_data":[B
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 35
    invoke-static {p2, v1}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 37
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2

    .line 39
    :cond_0
    return-void
.end method
