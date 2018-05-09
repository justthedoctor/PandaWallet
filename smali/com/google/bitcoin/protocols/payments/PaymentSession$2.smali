.class Lcom/google/bitcoin/protocols/payments/PaymentSession$2;
.super Ljava/lang/Object;
.source "PaymentSession.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/protocols/payments/PaymentSession;->sendPayment(Ljava/net/URL;Lorg/bitcoin/protocols/payments/Protos$Payment;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/bitcoin/protocols/payments/PaymentSession$Ack;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/protocols/payments/PaymentSession;

.field final synthetic val$payment:Lorg/bitcoin/protocols/payments/Protos$Payment;

.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/protocols/payments/PaymentSession;Ljava/net/URL;Lorg/bitcoin/protocols/payments/Protos$Payment;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession$2;->this$0:Lcom/google/bitcoin/protocols/payments/PaymentSession;

    iput-object p2, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession$2;->val$url:Ljava/net/URL;

    iput-object p3, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession$2;->val$payment:Lorg/bitcoin/protocols/payments/Protos$Payment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/bitcoin/protocols/payments/PaymentSession$Ack;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 355
    iget-object v6, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession$2;->val$url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 356
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const-string v6, "POST"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 358
    const-string v6, "Content-Type"

    const-string v7, "application/Pandacoin-payment"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v6, "Accept"

    const-string v7, "application/Pandacoin-paymentack"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v6, "Content-Length"

    iget-object v7, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession$2;->val$payment:Lorg/bitcoin/protocols/payments/Protos$Payment;

    invoke-virtual {v7}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getSerializedSize()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 362
    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 363
    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 366
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 367
    .local v3, "outStream":Ljava/io/DataOutputStream;
    iget-object v6, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession$2;->val$payment:Lorg/bitcoin/protocols/payments/Protos$Payment;

    invoke-virtual {v6, v3}, Lorg/bitcoin/protocols/payments/Protos$Payment;->writeTo(Ljava/io/OutputStream;)V

    .line 368
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 369
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 372
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 373
    .local v1, "inStream":Ljava/io/InputStream;
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v5

    check-cast v5, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    .line 374
    .local v5, "paymentAckBuilder":Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    invoke-virtual {v5}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v4

    .line 375
    .local v4, "paymentAck":Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    const/4 v2, 0x0

    .line 376
    .local v2, "memo":Ljava/lang/String;
    invoke-virtual {v4}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->hasMemo()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 377
    invoke-virtual {v4}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getMemo()Ljava/lang/String;

    move-result-object v2

    .line 378
    :cond_0
    new-instance v6, Lcom/google/bitcoin/protocols/payments/PaymentSession$Ack;

    iget-object v7, p0, Lcom/google/bitcoin/protocols/payments/PaymentSession$2;->this$0:Lcom/google/bitcoin/protocols/payments/PaymentSession;

    invoke-direct {v6, v7, v2}, Lcom/google/bitcoin/protocols/payments/PaymentSession$Ack;-><init>(Lcom/google/bitcoin/protocols/payments/PaymentSession;Ljava/lang/String;)V

    return-object v6
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/payments/PaymentSession$2;->call()Lcom/google/bitcoin/protocols/payments/PaymentSession$Ack;

    move-result-object v0

    return-object v0
.end method
