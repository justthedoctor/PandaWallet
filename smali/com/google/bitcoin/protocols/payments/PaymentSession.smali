.class public Lcom/google/bitcoin/protocols/payments/PaymentSession;
.super Ljava/lang/Object;
.source "PaymentSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/protocols/payments/PaymentSession$Ack;
    }
.end annotation


# static fields
.field private static executor:Lcom/google/common/util/concurrent/ListeningExecutorService;


# instance fields
.field private params:Lcom/google/bitcoin/core/NetworkParameters;

.field private paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

.field private paymentRequest:Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

.field public final pkiVerificationData:Lcom/google/bitcoin/protocols/payments/PaymentProtocol$PkiVerificationData;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private totalValue:Ljava/math/BigInteger;

.field private final trustStoreLoader:Lcom/google/bitcoin/crypto/TrustStoreLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/bitcoin/utils/Threading;->THREAD_POOL:Lcom/google/common/util/concurrent/ListeningExecutorService;

    sput-object v0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->executor:Lcom/google/common/util/concurrent/ListeningExecutorService;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;)V
    .locals 2
    .param p1, "request"    # Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/protocols/payments/PaymentRequestException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/bitcoin/protocols/payments/PaymentSession;-><init>(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;ZLcom/google/bitcoin/crypto/TrustStoreLoader;)V

    .line 188
    return-void
.end method

.method public constructor <init>(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;Z)V
    .locals 1
    .param p1, "request"    # Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .param p2, "verifyPki"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/protocols/payments/PaymentRequestException;
        }
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/bitcoin/protocols/payments/PaymentSession;-><init>(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;ZLcom/google/bitcoin/crypto/TrustStoreLoader;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;ZLcom/google/bitcoin/crypto/TrustStoreLoader;)V
    .locals 2
    .param p1, "request"    # Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .param p2, "verifyPki"    # Z
    .param p3, "trustStoreLoader"    # Lcom/google/bitcoin/crypto/TrustStoreLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/protocols/payments/PaymentRequestException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v1, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->totalValue:Ljava/math/BigInteger;

    .line 204
    if-eqz p3, :cond_0

    .end local p3    # "trustStoreLoader":Lcom/google/bitcoin/crypto/TrustStoreLoader;
    :goto_0
    iput-object p3, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->trustStoreLoader:Lcom/google/bitcoin/crypto/TrustStoreLoader;

    .line 205
    invoke-direct {p0, p1}, Lcom/google/bitcoin/protocols/payments/PaymentSession;->parsePaymentRequest(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;)V

    .line 206
    if-eqz p2, :cond_1

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->trustStoreLoader:Lcom/google/bitcoin/crypto/TrustStoreLoader;

    invoke-interface {v1}, Lcom/google/bitcoin/crypto/TrustStoreLoader;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/bitcoin/protocols/payments/PaymentProtocol;->verifyPaymentRequestPki(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;Ljava/security/KeyStore;)Lcom/google/bitcoin/protocols/payments/PaymentProtocol$PkiVerificationData;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->pkiVerificationData:Lcom/google/bitcoin/protocols/payments/PaymentProtocol$PkiVerificationData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    .line 217
    :goto_1
    return-void

    .line 204
    .restart local p3    # "trustStoreLoader":Lcom/google/bitcoin/crypto/TrustStoreLoader;
    :cond_0
    new-instance p3, Lcom/google/bitcoin/crypto/TrustStoreLoader$DefaultTrustStoreLoader;

    .end local p3    # "trustStoreLoader":Lcom/google/bitcoin/crypto/TrustStoreLoader;
    invoke-direct {p3}, Lcom/google/bitcoin/crypto/TrustStoreLoader$DefaultTrustStoreLoader;-><init>()V

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "x":Ljava/io/IOException;
    new-instance v1, Lcom/google/bitcoin/protocols/payments/PaymentRequestException;

    invoke-direct {v1, v0}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 211
    .end local v0    # "x":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 212
    .local v0, "x":Ljava/security/KeyStoreException;
    new-instance v1, Lcom/google/bitcoin/protocols/payments/PaymentRequestException;

    invoke-direct {v1, v0}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 215
    .end local v0    # "x":Ljava/security/KeyStoreException;
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->pkiVerificationData:Lcom/google/bitcoin/protocols/payments/PaymentProtocol$PkiVerificationData;

    goto :goto_1
.end method

.method public static createFromBitcoinUri(Lcom/google/bitcoin/uri/BitcoinURI;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p0, "uri"    # Lcom/google/bitcoin/uri/BitcoinURI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/uri/BitcoinURI;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/bitcoin/protocols/payments/PaymentSession;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/protocols/payments/PaymentRequestException;
        }
    .end annotation

    .prologue
    .line 90
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/bitcoin/protocols/payments/PaymentSession;->createFromBitcoinUri(Lcom/google/bitcoin/uri/BitcoinURI;ZLcom/google/bitcoin/crypto/TrustStoreLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static createFromBitcoinUri(Lcom/google/bitcoin/uri/BitcoinURI;Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "uri"    # Lcom/google/bitcoin/uri/BitcoinURI;
    .param p1, "verifyPki"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/uri/BitcoinURI;",
            "Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/bitcoin/protocols/payments/PaymentSession;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/protocols/payments/PaymentRequestException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/bitcoin/protocols/payments/PaymentSession;->createFromBitcoinUri(Lcom/google/bitcoin/uri/BitcoinURI;ZLcom/google/bitcoin/crypto/TrustStoreLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static createFromBitcoinUri(Lcom/google/bitcoin/uri/BitcoinURI;ZLcom/google/bitcoin/crypto/TrustStoreLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .param p0, "uri"    # Lcom/google/bitcoin/uri/BitcoinURI;
    .param p1, "verifyPki"    # Z
    .param p2, "trustStoreLoader"    # Lcom/google/bitcoin/crypto/TrustStoreLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/uri/BitcoinURI;",
            "Z",
            "Lcom/google/bitcoin/crypto/TrustStoreLoader;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/bitcoin/protocols/payments/PaymentSession;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/protocols/payments/PaymentRequestException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/bitcoin/uri/BitcoinURI;->getPaymentRequestUrl()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "url":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 119
    new-instance v2, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidPaymentRequestURL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No payment request URL (r= parameter) in BitcoinURI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidPaymentRequestURL;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p1, p2}, Lcom/google/bitcoin/protocols/payments/PaymentSession;->fetchPaymentRequest(Ljava/net/URI;ZLcom/google/bitcoin/crypto/TrustStoreLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v2, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidPaymentRequestURL;

    invoke-direct {v2, v0}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidPaymentRequestURL;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public static createFromUrl(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/bitcoin/protocols/payments/PaymentSession;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/protocols/payments/PaymentRequestException;
        }
    .end annotation

    .prologue
    .line 135
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/bitcoin/protocols/payments/PaymentSession;->createFromUrl(Ljava/lang/String;ZLcom/google/bitcoin/crypto/TrustStoreLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static createFromUrl(Ljava/lang/String;Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "verifyPki"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/bitcoin/protocols/payments/PaymentSession;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/protocols/payments/PaymentRequestException;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/bitcoin/protocols/payments/PaymentSession;->createFromUrl(Ljava/lang/String;ZLcom/google/bitcoin/crypto/TrustStoreLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static createFromUrl(Ljava/lang/String;ZLcom/google/bitcoin/crypto/TrustStoreLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "verifyPki"    # Z
    .param p2, "trustStoreLoader"    # Lcom/google/bitcoin/crypto/TrustStoreLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/bitcoin/crypto/TrustStoreLoader;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/bitcoin/protocols/payments/PaymentSession;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/protocols/payments/PaymentRequestException;
        }
    .end annotation

    .prologue
    .line 160
    if-nez p0, :cond_0

    .line 161
    new-instance v1, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidPaymentRequestURL;

    const-string v2, "null paymentRequestUrl"

    invoke-direct {v1, v2}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidPaymentRequestURL;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1, p2}, Lcom/google/bitcoin/protocols/payments/PaymentSession;->fetchPaymentRequest(Ljava/net/URI;ZLcom/google/bitcoin/crypto/TrustStoreLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidPaymentRequestURL;

    invoke-direct {v1, v0}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidPaymentRequestURL;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private static fetchPaymentRequest(Ljava/net/URI;ZLcom/google/bitcoin/crypto/TrustStoreLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p0, "uri"    # Ljava/net/URI;
    .param p1, "verifyPki"    # Z
    .param p2, "trustStoreLoader"    # Lcom/google/bitcoin/crypto/TrustStoreLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Z",
            "Lcom/google/bitcoin/crypto/TrustStoreLoader;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/bitcoin/protocols/payments/PaymentSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    sget-object v0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->executor:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lcom/google/bitcoin/protocols/payments/PaymentSession$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/bitcoin/protocols/payments/PaymentSession$1;-><init>(Ljava/net/URI;ZLcom/google/bitcoin/crypto/TrustStoreLoader;)V

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method private parsePaymentRequest(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;)V
    .locals 6
    .param p1, "request"    # Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/protocols/payments/PaymentRequestException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 385
    if-nez p1, :cond_0

    .line 386
    :try_start_0
    new-instance v3, Lcom/google/bitcoin/protocols/payments/PaymentRequestException;

    const-string v4, "request cannot be null"

    invoke-direct {v3, v4}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v3, Lcom/google/bitcoin/protocols/payments/PaymentRequestException;

    invoke-direct {v3, v0}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 387
    .end local v0    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getPaymentDetailsVersion()I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 388
    new-instance v3, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidVersion;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Version 1 required. Received version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getPaymentDetailsVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidVersion;-><init>(Ljava/lang/String;)V

    throw v3

    .line 389
    :cond_1
    iput-object p1, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->paymentRequest:Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    .line 390
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->hasSerializedPaymentDetails()Z

    move-result v3

    if-nez v3, :cond_2

    .line 391
    new-instance v3, Lcom/google/bitcoin/protocols/payments/PaymentRequestException;

    const-string v4, "No PaymentDetails"

    invoke-direct {v3, v4}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 392
    :cond_2
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getSerializedPaymentDetails()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v3

    check-cast v3, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    invoke-virtual {v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v3

    iput-object v3, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    .line 393
    iget-object v3, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    if-nez v3, :cond_3

    .line 394
    new-instance v3, Lcom/google/bitcoin/protocols/payments/PaymentRequestException;

    const-string v4, "Invalid PaymentDetails"

    invoke-direct {v3, v4}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 395
    :cond_3
    iget-object v3, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasNetwork()Z

    move-result v3

    if-nez v3, :cond_4

    .line 396
    invoke-static {}, Lcom/google/bitcoin/params/MainNetParams;->get()Lcom/google/bitcoin/params/MainNetParams;

    move-result-object v3

    iput-object v3, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->params:Lcom/google/bitcoin/core/NetworkParameters;

    .line 399
    :goto_0
    iget-object v3, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->params:Lcom/google/bitcoin/core/NetworkParameters;

    if-nez v3, :cond_5

    .line 400
    new-instance v3, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidNetwork;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v5}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getNetwork()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidNetwork;-><init>(Ljava/lang/String;)V

    throw v3

    .line 398
    :cond_4
    iget-object v3, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getNetwork()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/bitcoin/core/NetworkParameters;->fromPmtProtocolID(Ljava/lang/String;)Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v3

    iput-object v3, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->params:Lcom/google/bitcoin/core/NetworkParameters;

    goto :goto_0

    .line 401
    :cond_5
    iget-object v3, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getOutputsCount()I

    move-result v3

    if-ge v3, v5, :cond_6

    .line 402
    new-instance v3, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidOutputs;

    const-string v4, "No outputs"

    invoke-direct {v3, v4}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidOutputs;-><init>(Ljava/lang/String;)V

    throw v3

    .line 403
    :cond_6
    iget-object v3, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getOutputsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoin/protocols/payments/Protos$Output;

    .line 404
    .local v2, "output":Lorg/bitcoin/protocols/payments/Protos$Output;
    invoke-virtual {v2}, Lorg/bitcoin/protocols/payments/Protos$Output;->hasAmount()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 405
    iget-object v3, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->totalValue:Ljava/math/BigInteger;

    invoke-virtual {v2}, Lorg/bitcoin/protocols/payments/Protos$Output;->getAmount()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->totalValue:Ljava/math/BigInteger;

    goto :goto_1

    .line 409
    .end local v2    # "output":Lorg/bitcoin/protocols/payments/Protos$Output;
    :cond_8
    iget-object v3, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->totalValue:Ljava/math/BigInteger;

    sget-object v4, Lcom/google/bitcoin/core/NetworkParameters;->MAX_MONEY:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-lez v3, :cond_9

    .line 410
    new-instance v3, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidOutputs;

    const-string v4, "The outputs are way too big."

    invoke-direct {v3, v4}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidOutputs;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    .line 414
    :cond_9
    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 5

    .prologue
    .line 260
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasMemo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getMemo()Ljava/lang/String;

    move-result-object v0

    .line 246
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNetworkParameters()Lcom/google/bitcoin/core/NetworkParameters;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->params:Lcom/google/bitcoin/core/NetworkParameters;

    return-object v0
.end method

.method public getPayment(Ljava/util/List;Lcom/google/bitcoin/core/Address;Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 7
    .param p2, "refundAddr"    # Lcom/google/bitcoin/core/Address;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "memo"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;",
            "Lcom/google/bitcoin/core/Address;",
            "Ljava/lang/String;",
            ")",
            "Lorg/bitcoin/protocols/payments/Protos$Payment;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 327
    .local p1, "txns":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    iget-object v5, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v5}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasPaymentUrl()Z

    move-result v5

    if-nez v5, :cond_0

    .line 328
    const/4 v5, 0x0

    .line 347
    :goto_0
    return-object v5

    .line 329
    :cond_0
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v2

    .line 330
    .local v2, "payment":Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    iget-object v5, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v5}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasMerchantData()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 331
    iget-object v5, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v5}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getMerchantData()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->setMerchantData(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    .line 332
    :cond_1
    if-eqz p2, :cond_2

    .line 333
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Output;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    move-result-object v3

    .line 334
    .local v3, "refundOutput":Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    iget-object v5, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->totalValue:Ljava/math/BigInteger;

    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->setAmount(J)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    .line 335
    invoke-static {p2}, Lcom/google/bitcoin/script/ScriptBuilder;->createOutputScript(Lcom/google/bitcoin/core/Address;)Lcom/google/bitcoin/script/Script;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/bitcoin/script/Script;->getProgram()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->setScript(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    .line 336
    invoke-virtual {v2, v3}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->addRefundTo(Lorg/bitcoin/protocols/payments/Protos$Output$Builder;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    .line 338
    .end local v3    # "refundOutput":Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    :cond_2
    if-eqz p3, :cond_3

    .line 339
    invoke-virtual {v2, p3}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->setMemo(Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    .line 341
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/bitcoin/core/Transaction;

    .line 342
    .local v4, "txn":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {v4}, Lcom/google/bitcoin/core/Transaction;->verify()V

    .line 343
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 344
    .local v1, "o":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v4, v1}, Lcom/google/bitcoin/core/Transaction;->bitcoinSerialize(Ljava/io/OutputStream;)V

    .line 345
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->addTransactions(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    goto :goto_1

    .line 347
    .end local v1    # "o":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "txn":Lcom/google/bitcoin/core/Transaction;
    :cond_4
    invoke-virtual {v2}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v5

    goto :goto_0
.end method

.method public getPaymentDetails()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    return-object v0
.end method

.method public getPaymentRequest()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->paymentRequest:Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    return-object v0
.end method

.method public getPaymentUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasPaymentUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getPaymentUrl()Ljava/lang/String;

    move-result-object v0

    .line 277
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSendRequest()Lcom/google/bitcoin/core/Wallet$SendRequest;
    .locals 7

    .prologue
    .line 284
    new-instance v2, Lcom/google/bitcoin/core/Transaction;

    iget-object v3, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v2, v3}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 285
    .local v2, "tx":Lcom/google/bitcoin/core/Transaction;
    iget-object v3, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getOutputsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoin/protocols/payments/Protos$Output;

    .line 286
    .local v1, "output":Lorg/bitcoin/protocols/payments/Protos$Output;
    new-instance v3, Lcom/google/bitcoin/core/TransactionOutput;

    iget-object v4, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v1}, Lorg/bitcoin/protocols/payments/Protos$Output;->getAmount()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Lorg/bitcoin/protocols/payments/Protos$Output;->getScript()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v6

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/google/bitcoin/core/TransactionOutput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;[B)V

    invoke-virtual {v2, v3}, Lcom/google/bitcoin/core/Transaction;->addOutput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionOutput;

    goto :goto_0

    .line 287
    .end local v1    # "output":Lorg/bitcoin/protocols/payments/Protos$Output;
    :cond_0
    invoke-static {v2}, Lcom/google/bitcoin/core/Wallet$SendRequest;->forTx(Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/core/Wallet$SendRequest;

    move-result-object v3

    return-object v3
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->totalValue:Ljava/math/BigInteger;

    return-object v0
.end method

.method public isExpired()Z
    .locals 4

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasExpires()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v2}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getExpires()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected sendPayment(Ljava/net/URL;Lorg/bitcoin/protocols/payments/Protos$Payment;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "payment"    # Lorg/bitcoin/protocols/payments/Protos$Payment;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lorg/bitcoin/protocols/payments/Protos$Payment;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/bitcoin/protocols/payments/PaymentSession$Ack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    sget-object v0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->executor:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v1, Lcom/google/bitcoin/protocols/payments/PaymentSession$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/bitcoin/protocols/payments/PaymentSession$2;-><init>(Lcom/google/bitcoin/protocols/payments/PaymentSession;Ljava/net/URL;Lorg/bitcoin/protocols/payments/Protos$Payment;)V

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public sendPayment(Ljava/util/List;Lcom/google/bitcoin/core/Address;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .param p2, "refundAddr"    # Lcom/google/bitcoin/core/Address;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "memo"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;",
            "Lcom/google/bitcoin/core/Address;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/bitcoin/protocols/payments/PaymentSession$Ack;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/protocols/payments/PaymentRequestException;,
            Lcom/google/bitcoin/core/VerificationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 303
    .local p1, "txns":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/bitcoin/protocols/payments/PaymentSession;->getPayment(Ljava/util/List;Lcom/google/bitcoin/core/Address;Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v1

    .line 304
    .local v1, "payment":Lorg/bitcoin/protocols/payments/Protos$Payment;
    if-nez v1, :cond_0

    .line 305
    const/4 v3, 0x0

    .line 314
    :goto_0
    return-object v3

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/payments/PaymentSession;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 307
    new-instance v3, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$Expired;

    const-string v4, "PaymentRequest is expired"

    invoke-direct {v3, v4}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$Expired;-><init>(Ljava/lang/String;)V

    throw v3

    .line 310
    :cond_1
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->paymentDetails:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-virtual {v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getPaymentUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {p0, v2, v1}, Lcom/google/bitcoin/protocols/payments/PaymentSession;->sendPayment(Ljava/net/URL;Lorg/bitcoin/protocols/payments/Protos$Payment;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    goto :goto_0

    .line 311
    .end local v2    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v3, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidPaymentURL;

    invoke-direct {v3, v0}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidPaymentURL;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public verifyPki()Lcom/google/bitcoin/protocols/payments/PaymentProtocol$PkiVerificationData;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession;->pkiVerificationData:Lcom/google/bitcoin/protocols/payments/PaymentProtocol$PkiVerificationData;

    return-object v0
.end method
