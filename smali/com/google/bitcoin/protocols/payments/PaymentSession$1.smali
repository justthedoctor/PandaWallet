.class final Lcom/google/bitcoin/protocols/payments/PaymentSession$1;
.super Ljava/lang/Object;
.source "PaymentSession.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/protocols/payments/PaymentSession;->fetchPaymentRequest(Ljava/net/URI;ZLcom/google/bitcoin/crypto/TrustStoreLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/bitcoin/protocols/payments/PaymentSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$trustStoreLoader:Lcom/google/bitcoin/crypto/TrustStoreLoader;

.field final synthetic val$uri:Ljava/net/URI;

.field final synthetic val$verifyPki:Z


# direct methods
.method constructor <init>(Ljava/net/URI;ZLcom/google/bitcoin/crypto/TrustStoreLoader;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession$1;->val$uri:Ljava/net/URI;

    iput-boolean p2, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession$1;->val$verifyPki:Z

    iput-object p3, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession$1;->val$trustStoreLoader:Lcom/google/bitcoin/crypto/TrustStoreLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/bitcoin/protocols/payments/PaymentSession;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 173
    iget-object v2, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession$1;->val$uri:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 174
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const-string v2, "Accept"

    const-string v3, "application/Pandacoin-paymentrequest"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 176
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v1

    .line 177
    .local v1, "paymentRequest":Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    new-instance v2, Lcom/google/bitcoin/protocols/payments/PaymentSession;

    iget-boolean v3, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession$1;->val$verifyPki:Z

    iget-object v4, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession$1;->val$trustStoreLoader:Lcom/google/bitcoin/crypto/TrustStoreLoader;

    invoke-direct {v2, v1, v3, v4}, Lcom/google/bitcoin/protocols/payments/PaymentSession;-><init>(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;ZLcom/google/bitcoin/crypto/TrustStoreLoader;)V

    return-object v2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/payments/PaymentSession$1;->call()Lcom/google/bitcoin/protocols/payments/PaymentSession;

    move-result-object v0

    return-object v0
.end method
