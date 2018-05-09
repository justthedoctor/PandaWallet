.class public abstract Lorg/spongycastle/crypto/tls/DefaultTlsClient;
.super Lorg/spongycastle/crypto/tls/AbstractTlsClient;
.source "DefaultTlsClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsClient;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;)V
    .locals 0
    .param p1, "cipherFactory"    # Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsClient;-><init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected createDHEKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 3
    .param p1, "keyExchange"    # I

    .prologue
    .line 359
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;-><init>(ILjava/util/Vector;Lorg/spongycastle/crypto/params/DHParameters;)V

    return-object v0
.end method

.method protected createDHKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 3
    .param p1, "keyExchange"    # I

    .prologue
    .line 354
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;-><init>(ILjava/util/Vector;Lorg/spongycastle/crypto/params/DHParameters;)V

    return-object v0
.end method

.method protected createECDHEKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 6
    .param p1, "keyExchange"    # I

    .prologue
    .line 370
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->namedCurves:[I

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->clientECPointFormats:[S

    iget-object v5, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->serverECPointFormats:[S

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;-><init>(ILjava/util/Vector;[I[S[S)V

    return-object v0
.end method

.method protected createECDHKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 6
    .param p1, "keyExchange"    # I

    .prologue
    .line 364
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->namedCurves:[I

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->clientECPointFormats:[S

    iget-object v5, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->serverECPointFormats:[S

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;-><init>(ILjava/util/Vector;[I[S[S)V

    return-object v0
.end method

.method protected createRSAKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 2

    .prologue
    .line 376
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->supportedSignatureAlgorithms:Ljava/util/Vector;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;-><init>(Ljava/util/Vector;)V

    return-object v0
.end method

.method public getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x9

    const/4 v6, 0x3

    const/16 v5, 0x64

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 177
    iget v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->selectedCipherSuite:I

    sparse-switch v0, :sswitch_data_0

    .line 348
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 188
    :sswitch_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    .line 340
    :goto_0
    return-object v0

    .line 199
    :sswitch_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 210
    :sswitch_2
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2, v6}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 214
    :sswitch_3
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0xf

    invoke-interface {v0, v1, v2, v4}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 218
    :sswitch_4
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x10

    invoke-interface {v0, v1, v2, v4}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 229
    :sswitch_5
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2, v4}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 240
    :sswitch_6
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v7, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 247
    :sswitch_7
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v7, v6}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 253
    :sswitch_8
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/4 v2, 0x4

    invoke-interface {v0, v1, v7, v2}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 257
    :sswitch_9
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x11

    invoke-interface {v0, v1, v2, v4}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 261
    :sswitch_a
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x12

    invoke-interface {v0, v1, v2, v4}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 272
    :sswitch_b
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0xb

    invoke-interface {v0, v1, v2, v4}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 279
    :sswitch_c
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0xc

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 286
    :sswitch_d
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0xd

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto/16 :goto_0

    .line 292
    :sswitch_e
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v5, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto/16 :goto_0

    .line 298
    :sswitch_f
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v5, v5}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto/16 :goto_0

    .line 301
    :sswitch_10
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v4, v2}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto/16 :goto_0

    .line 308
    :sswitch_11
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v4, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto/16 :goto_0

    .line 311
    :sswitch_12
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v4, v6}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto/16 :goto_0

    .line 314
    :sswitch_13
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto/16 :goto_0

    .line 321
    :sswitch_14
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v0, v1, v3, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto/16 :goto_0

    .line 327
    :sswitch_15
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x65

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto/16 :goto_0

    .line 333
    :sswitch_16
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x65

    invoke-interface {v0, v1, v2, v5}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto/16 :goto_0

    .line 340
    :sswitch_17
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto/16 :goto_0

    .line 177
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_11
        0x4 -> :sswitch_13
        0x5 -> :sswitch_14
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x10 -> :sswitch_0
        0x13 -> :sswitch_0
        0x16 -> :sswitch_0
        0x2f -> :sswitch_1
        0x30 -> :sswitch_1
        0x31 -> :sswitch_1
        0x32 -> :sswitch_1
        0x33 -> :sswitch_1
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x39 -> :sswitch_6
        0x3b -> :sswitch_12
        0x3c -> :sswitch_2
        0x3d -> :sswitch_7
        0x3e -> :sswitch_2
        0x3f -> :sswitch_2
        0x40 -> :sswitch_2
        0x41 -> :sswitch_c
        0x42 -> :sswitch_c
        0x43 -> :sswitch_c
        0x44 -> :sswitch_c
        0x45 -> :sswitch_c
        0x67 -> :sswitch_2
        0x68 -> :sswitch_7
        0x69 -> :sswitch_7
        0x6a -> :sswitch_7
        0x6b -> :sswitch_7
        0x84 -> :sswitch_d
        0x85 -> :sswitch_d
        0x86 -> :sswitch_d
        0x87 -> :sswitch_d
        0x88 -> :sswitch_d
        0x96 -> :sswitch_17
        0x97 -> :sswitch_17
        0x98 -> :sswitch_17
        0x99 -> :sswitch_17
        0x9a -> :sswitch_17
        0x9c -> :sswitch_5
        0x9d -> :sswitch_b
        0x9e -> :sswitch_5
        0x9f -> :sswitch_b
        0xa0 -> :sswitch_5
        0xa1 -> :sswitch_b
        0xa2 -> :sswitch_5
        0xa3 -> :sswitch_b
        0xa4 -> :sswitch_5
        0xa5 -> :sswitch_b
        0xc001 -> :sswitch_11
        0xc002 -> :sswitch_14
        0xc003 -> :sswitch_0
        0xc004 -> :sswitch_1
        0xc005 -> :sswitch_6
        0xc006 -> :sswitch_11
        0xc007 -> :sswitch_14
        0xc008 -> :sswitch_0
        0xc009 -> :sswitch_1
        0xc00a -> :sswitch_6
        0xc00b -> :sswitch_11
        0xc00c -> :sswitch_14
        0xc00d -> :sswitch_0
        0xc00e -> :sswitch_1
        0xc00f -> :sswitch_6
        0xc010 -> :sswitch_11
        0xc011 -> :sswitch_14
        0xc012 -> :sswitch_0
        0xc013 -> :sswitch_1
        0xc014 -> :sswitch_6
        0xc023 -> :sswitch_2
        0xc024 -> :sswitch_8
        0xc025 -> :sswitch_2
        0xc026 -> :sswitch_8
        0xc027 -> :sswitch_2
        0xc028 -> :sswitch_8
        0xc029 -> :sswitch_2
        0xc02a -> :sswitch_8
        0xc02b -> :sswitch_5
        0xc02c -> :sswitch_b
        0xc02d -> :sswitch_5
        0xc02e -> :sswitch_b
        0xc02f -> :sswitch_5
        0xc030 -> :sswitch_b
        0xc031 -> :sswitch_5
        0xc032 -> :sswitch_b
        0xc09c -> :sswitch_3
        0xc09d -> :sswitch_9
        0xc09e -> :sswitch_3
        0xc09f -> :sswitch_9
        0xc0a0 -> :sswitch_4
        0xc0a1 -> :sswitch_a
        0xc0a2 -> :sswitch_4
        0xc0a3 -> :sswitch_a
        0xff00 -> :sswitch_e
        0xff01 -> :sswitch_15
        0xff02 -> :sswitch_e
        0xff03 -> :sswitch_15
        0xff04 -> :sswitch_e
        0xff05 -> :sswitch_15
        0xff06 -> :sswitch_e
        0xff07 -> :sswitch_15
        0xff10 -> :sswitch_f
        0xff11 -> :sswitch_16
        0xff12 -> :sswitch_f
        0xff13 -> :sswitch_16
        0xff14 -> :sswitch_f
        0xff15 -> :sswitch_16
        0xff16 -> :sswitch_f
        0xff17 -> :sswitch_16
    .end sparse-switch
.end method

.method public getCipherSuites()[I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0xc02f
        0xc027
        0xc013
        0x9c
        0x3c
        0x2f
    .end array-data
.end method

.method public getKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    iget v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->selectedCipherSuite:I

    sparse-switch v0, :sswitch_data_0

    .line 170
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 41
    :sswitch_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createDHKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    .line 53
    :sswitch_1
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createDHKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 65
    :sswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createDHEKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 85
    :sswitch_3
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createDHEKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 96
    :sswitch_4
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createECDHKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 107
    :sswitch_5
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createECDHKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 122
    :sswitch_6
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createECDHEKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 137
    :sswitch_7
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createECDHEKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 162
    :sswitch_8
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createRSAKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 29
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_8
        0x4 -> :sswitch_8
        0x5 -> :sswitch_8
        0xa -> :sswitch_8
        0xd -> :sswitch_0
        0x10 -> :sswitch_1
        0x13 -> :sswitch_2
        0x16 -> :sswitch_3
        0x2f -> :sswitch_8
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x35 -> :sswitch_8
        0x36 -> :sswitch_0
        0x37 -> :sswitch_1
        0x38 -> :sswitch_2
        0x39 -> :sswitch_3
        0x3b -> :sswitch_8
        0x3c -> :sswitch_8
        0x3d -> :sswitch_8
        0x3e -> :sswitch_0
        0x3f -> :sswitch_1
        0x40 -> :sswitch_2
        0x41 -> :sswitch_8
        0x42 -> :sswitch_0
        0x43 -> :sswitch_1
        0x44 -> :sswitch_2
        0x45 -> :sswitch_3
        0x67 -> :sswitch_3
        0x68 -> :sswitch_0
        0x69 -> :sswitch_1
        0x6a -> :sswitch_2
        0x6b -> :sswitch_3
        0x84 -> :sswitch_8
        0x85 -> :sswitch_0
        0x86 -> :sswitch_1
        0x87 -> :sswitch_2
        0x88 -> :sswitch_3
        0x96 -> :sswitch_8
        0x97 -> :sswitch_0
        0x98 -> :sswitch_1
        0x99 -> :sswitch_2
        0x9a -> :sswitch_3
        0x9c -> :sswitch_8
        0x9d -> :sswitch_8
        0x9e -> :sswitch_3
        0x9f -> :sswitch_3
        0xa0 -> :sswitch_1
        0xa1 -> :sswitch_1
        0xa2 -> :sswitch_2
        0xa3 -> :sswitch_2
        0xa4 -> :sswitch_0
        0xa5 -> :sswitch_0
        0xc001 -> :sswitch_4
        0xc002 -> :sswitch_4
        0xc003 -> :sswitch_4
        0xc004 -> :sswitch_4
        0xc005 -> :sswitch_4
        0xc006 -> :sswitch_6
        0xc007 -> :sswitch_6
        0xc008 -> :sswitch_6
        0xc009 -> :sswitch_6
        0xc00a -> :sswitch_6
        0xc00b -> :sswitch_5
        0xc00c -> :sswitch_5
        0xc00d -> :sswitch_5
        0xc00e -> :sswitch_5
        0xc00f -> :sswitch_5
        0xc010 -> :sswitch_7
        0xc011 -> :sswitch_7
        0xc012 -> :sswitch_7
        0xc013 -> :sswitch_7
        0xc014 -> :sswitch_7
        0xc023 -> :sswitch_6
        0xc024 -> :sswitch_6
        0xc025 -> :sswitch_4
        0xc026 -> :sswitch_4
        0xc027 -> :sswitch_7
        0xc028 -> :sswitch_7
        0xc029 -> :sswitch_5
        0xc02a -> :sswitch_5
        0xc02b -> :sswitch_6
        0xc02c -> :sswitch_6
        0xc02d -> :sswitch_4
        0xc02e -> :sswitch_4
        0xc02f -> :sswitch_7
        0xc030 -> :sswitch_7
        0xc031 -> :sswitch_5
        0xc032 -> :sswitch_5
        0xc09c -> :sswitch_8
        0xc09d -> :sswitch_8
        0xc09e -> :sswitch_3
        0xc09f -> :sswitch_3
        0xc0a0 -> :sswitch_8
        0xc0a1 -> :sswitch_8
        0xc0a2 -> :sswitch_3
        0xc0a3 -> :sswitch_3
        0xff00 -> :sswitch_8
        0xff01 -> :sswitch_8
        0xff02 -> :sswitch_3
        0xff03 -> :sswitch_3
        0xff04 -> :sswitch_7
        0xff05 -> :sswitch_7
        0xff06 -> :sswitch_6
        0xff07 -> :sswitch_6
        0xff10 -> :sswitch_8
        0xff11 -> :sswitch_8
        0xff12 -> :sswitch_3
        0xff13 -> :sswitch_3
        0xff14 -> :sswitch_7
        0xff15 -> :sswitch_7
        0xff16 -> :sswitch_6
        0xff17 -> :sswitch_6
    .end sparse-switch
.end method
