.class Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask$1;
.super Ljava/lang/Object;
.source "DirectPaymentTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;->send(Lorg/bitcoin/protocols/payments/Protos$Payment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;

.field final synthetic val$payment:Lorg/bitcoin/protocols/payments/Protos$Payment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;Lorg/bitcoin/protocols/payments/Protos$Payment;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask$1;->this$0:Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;

    iput-object p2, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask$1;->val$payment:Lorg/bitcoin/protocols/payments/Protos$Payment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 95
    invoke-static {}, Lde/schildbach/wallet/offline/DirectPaymentTask;->access$100()Lorg/slf4j/Logger;

    move-result-object v9

    const-string v11, "trying to send tx to {}"

    iget-object v12, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask$1;->this$0:Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;

    invoke-static {v12}, Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;->access$000(Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v11, v12}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    const/4 v2, 0x0

    .line 98
    .local v2, "connection":Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 99
    .local v4, "os":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 103
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    iget-object v11, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask$1;->this$0:Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;

    invoke-static {v11}, Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;->access$000(Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 105
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 106
    const/16 v9, 0x3a98

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 107
    const/16 v9, 0x3a98

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 108
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 109
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 110
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 112
    const-string v9, "POST"

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 113
    const-string v9, "Content-Type"

    sget-object v11, Lde/schildbach/wallet/util/PaymentProtocol;->MIMETYPE_PAYMENT:Ljava/lang/String;

    invoke-virtual {v2, v9, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v9, "Accept"

    sget-object v11, Lde/schildbach/wallet/util/PaymentProtocol;->MIMETYPE_PAYMENTACK:Ljava/lang/String;

    invoke-virtual {v2, v9, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v9, "Content-Length"

    iget-object v11, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask$1;->val$payment:Lorg/bitcoin/protocols/payments/Protos$Payment;

    invoke-virtual {v11}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getSerializedSize()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v9, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v9, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask$1;->this$0:Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;

    invoke-static {v9}, Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;->access$200(Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 117
    const-string v9, "User-Agent"

    iget-object v11, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask$1;->this$0:Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;

    invoke-static {v11}, Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;->access$200(Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v9, v11}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 120
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 121
    iget-object v9, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask$1;->val$payment:Lorg/bitcoin/protocols/payments/Protos$Payment;

    invoke-virtual {v9, v4}, Lorg/bitcoin/protocols/payments/Protos$Payment;->writeTo(Ljava/io/OutputStream;)V

    .line 122
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 124
    invoke-static {}, Lde/schildbach/wallet/offline/DirectPaymentTask;->access$100()Lorg/slf4j/Logger;

    move-result-object v9

    const-string v11, "tx sent via http"

    invoke-interface {v9, v11}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 127
    .local v6, "responseCode":I
    const/16 v9, 0xc8

    if-ne v6, v9, :cond_6

    .line 129
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 131
    invoke-static {v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v5

    .line 133
    .local v5, "paymentAck":Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    const-string v9, "nack"

    invoke-static {v5}, Lde/schildbach/wallet/util/PaymentProtocol;->parsePaymentAck(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 135
    .local v1, "ack":Z
    :goto_0
    invoke-static {}, Lde/schildbach/wallet/offline/DirectPaymentTask;->access$100()Lorg/slf4j/Logger;

    move-result-object v10

    const-string v11, "received {} via http"

    if-eqz v1, :cond_5

    const-string v9, "ack"

    :goto_1
    invoke-interface {v10, v11, v9}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    iget-object v9, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask$1;->this$0:Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;

    invoke-virtual {v9, v1}, Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;->onResult(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .end local v1    # "ack":Z
    .end local v5    # "paymentAck":Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    :goto_2
    if-eqz v4, :cond_1

    .line 160
    :try_start_1
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    :cond_1
    :goto_3
    if-eqz v3, :cond_2

    .line 172
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 180
    :cond_2
    :goto_4
    if-eqz v2, :cond_3

    .line 181
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 183
    .end local v6    # "responseCode":I
    :cond_3
    :goto_5
    return-void

    .restart local v5    # "paymentAck":Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .restart local v6    # "responseCode":I
    :cond_4
    move v1, v10

    .line 133
    goto :goto_0

    .line 135
    .restart local v1    # "ack":Z
    :cond_5
    :try_start_3
    const-string v9, "nack"

    goto :goto_1

    .line 141
    .end local v1    # "ack":Z
    .end local v5    # "paymentAck":Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    :cond_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    .line 143
    .local v7, "responseMessage":Ljava/lang/String;
    invoke-static {}, Lde/schildbach/wallet/offline/DirectPaymentTask;->access$100()Lorg/slf4j/Logger;

    move-result-object v9

    const-string v10, "got http error {}: {}"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v10, v11, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    iget-object v9, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask$1;->this$0:Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;

    const v10, 0x7f0b0102

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v7, v11, v12

    invoke-virtual {v9, v10, v11}, Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;->onFail(I[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 148
    .end local v6    # "responseCode":I
    .end local v7    # "responseMessage":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 150
    .local v8, "x":Ljava/io/IOException;
    :try_start_4
    invoke-static {}, Lde/schildbach/wallet/offline/DirectPaymentTask;->access$100()Lorg/slf4j/Logger;

    move-result-object v9

    const-string v10, "problem sending"

    invoke-interface {v9, v10, v8}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    iget-object v9, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask$1;->this$0:Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;

    const v10, 0x7f0b0101

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;->onFail(I[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 156
    if-eqz v4, :cond_7

    .line 160
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 168
    :cond_7
    :goto_6
    if-eqz v3, :cond_8

    .line 172
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 180
    :cond_8
    :goto_7
    if-eqz v2, :cond_3

    .line 181
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    .line 156
    .end local v8    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    if-eqz v4, :cond_9

    .line 160
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 168
    :cond_9
    :goto_8
    if-eqz v3, :cond_a

    .line 172
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 180
    :cond_a
    :goto_9
    if-eqz v2, :cond_b

    .line 181
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    throw v9

    .line 162
    .restart local v6    # "responseCode":I
    :catch_1
    move-exception v9

    goto :goto_3

    .line 174
    :catch_2
    move-exception v9

    goto :goto_4

    .line 162
    .end local v6    # "responseCode":I
    .restart local v8    # "x":Ljava/io/IOException;
    :catch_3
    move-exception v9

    goto :goto_6

    .line 174
    :catch_4
    move-exception v9

    goto :goto_7

    .line 162
    .end local v8    # "x":Ljava/io/IOException;
    :catch_5
    move-exception v10

    goto :goto_8

    .line 174
    :catch_6
    move-exception v10

    goto :goto_9
.end method
