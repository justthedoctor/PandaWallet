.class Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask$1;
.super Ljava/lang/Object;
.source "RequestPaymentRequestTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask;->requestPaymentRequest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask$1;->this$0:Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask;

    iput-object p2, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 95
    invoke-static {}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask;->access$000()Lorg/slf4j/Logger;

    move-result-object v6

    const-string v7, "trying to request payment request from {}"

    iget-object v8, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask$1;->val$url:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/4 v2, 0x0

    .line 102
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask$1;->val$url:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 104
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 105
    const/16 v6, 0x3a98

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 106
    const/16 v6, 0x3a98

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 107
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 108
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 109
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 111
    const-string v6, "GET"

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 112
    const-string v6, "Accept"

    sget-object v7, Lde/schildbach/wallet/util/PaymentProtocol;->MIMETYPE_PAYMENTREQUEST:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v6, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask$1;->this$0:Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask;

    invoke-static {v6}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask;->access$100(Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 114
    const-string v6, "User-Agent"

    iget-object v7, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask$1;->this$0:Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask;

    invoke-static {v7}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask;->access$100(Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 117
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 118
    .local v3, "responseCode":I
    const/16 v6, 0xc8

    if-ne v3, v6, :cond_3

    .line 120
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 122
    new-instance v6, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask$1$1;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7, v2}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask$1$1;-><init>(Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask$1;Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-virtual {v6}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask$1$1;->parse()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :goto_0
    if-eqz v2, :cond_1

    .line 167
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 176
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 178
    .end local v3    # "responseCode":I
    :cond_2
    :goto_2
    return-void

    .line 148
    .restart local v3    # "responseCode":I
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "responseMessage":Ljava/lang/String;
    invoke-static {}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask;->access$000()Lorg/slf4j/Logger;

    move-result-object v6

    const-string v7, "got http error {}: {}"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    iget-object v6, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask$1;->this$0:Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask;

    const v7, 0x7f0b0102

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v8}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask;->onFail(I[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 155
    .end local v3    # "responseCode":I
    .end local v4    # "responseMessage":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 157
    .local v5, "x":Ljava/io/IOException;
    :try_start_3
    invoke-static {}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask;->access$000()Lorg/slf4j/Logger;

    move-result-object v6

    const-string v7, "problem sending"

    invoke-interface {v6, v7, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    iget-object v6, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask$1;->this$0:Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask;

    const v7, 0x7f0b0101

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask;->onFail(I[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    if-eqz v2, :cond_4

    .line 167
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 175
    :cond_4
    :goto_3
    if-eqz v1, :cond_2

    .line 176
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 163
    .end local v5    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v2, :cond_5

    .line 167
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 175
    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    .line 176
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v6

    .line 169
    .restart local v3    # "responseCode":I
    :catch_1
    move-exception v6

    goto :goto_1

    .end local v3    # "responseCode":I
    .restart local v5    # "x":Ljava/io/IOException;
    :catch_2
    move-exception v6

    goto :goto_3

    .end local v5    # "x":Ljava/io/IOException;
    :catch_3
    move-exception v7

    goto :goto_4
.end method
