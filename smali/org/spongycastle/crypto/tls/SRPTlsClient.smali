.class public abstract Lorg/spongycastle/crypto/tls/SRPTlsClient;
.super Lorg/spongycastle/crypto/tls/AbstractTlsClient;
.source "SRPTlsClient.java"


# static fields
.field public static final EXT_SRP:Ljava/lang/Integer;


# instance fields
.field protected identity:[B

.field protected password:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsSRPUtils;->EXT_SRP:Ljava/lang/Integer;

    sput-object v0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->EXT_SRP:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;[B[B)V
    .locals 1
    .param p1, "cipherFactory"    # Lorg/spongycastle/crypto/tls/TlsCipherFactory;
    .param p2, "identity"    # [B
    .param p3, "password"    # [B

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsClient;-><init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;)V

    .line 29
    invoke-static {p2}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->identity:[B

    .line 30
    invoke-static {p3}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->password:[B

    .line 31
    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 1
    .param p1, "identity"    # [B
    .param p2, "password"    # [B

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsClient;-><init>()V

    .line 22
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->identity:[B

    .line 23
    invoke-static {p2}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->password:[B

    .line 24
    return-void
.end method


# virtual methods
.method protected createSRPKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 4
    .param p1, "keyExchange"    # I

    .prologue
    .line 119
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->identity:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->password:[B

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;-><init>(ILjava/util/Vector;[B[B)V

    return-object v0
.end method

.method public getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 90
    iget v0, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->selectedCipherSuite:I

    packed-switch v0, :pswitch_data_0

    .line 113
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 95
    :pswitch_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    .line 100
    :pswitch_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 105
    :pswitch_2
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0xc01a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getCipherSuites()[I
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0xc01e

    aput v2, v0, v1

    return-object v0
.end method

.method public getClientExtensions()Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-super {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsClient;->getClientExtensions()Ljava/util/Hashtable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->ensureExtensionsInitialised(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    .line 42
    .local v0, "clientExtensions":Ljava/util/Hashtable;
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->identity:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsSRPUtils;->addSRPExtension(Ljava/util/Hashtable;[B)V

    .line 43
    return-object v0
.end method

.method public getKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget v0, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->selectedCipherSuite:I

    packed-switch v0, :pswitch_data_0

    .line 82
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 64
    :pswitch_0
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/SRPTlsClient;->createSRPKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 69
    :pswitch_1
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/SRPTlsClient;->createSRPKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 74
    :pswitch_2
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/SRPTlsClient;->createSRPKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0xc01a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public processServerExtensions(Ljava/util/Hashtable;)V
    .locals 2
    .param p1, "serverExtensions"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsSRPUtils;->EXT_SRP:Ljava/lang/Integer;

    const/16 v1, 0x2f

    invoke-static {p1, v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    :cond_0
    return-void
.end method
