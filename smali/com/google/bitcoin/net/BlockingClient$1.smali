.class Lcom/google/bitcoin/net/BlockingClient$1;
.super Ljava/lang/Thread;
.source "BlockingClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/net/BlockingClient;-><init>(Ljava/net/SocketAddress;Lcom/google/bitcoin/net/StreamParser;ILjavax/net/SocketFactory;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/net/BlockingClient;

.field final synthetic val$clientSet:Ljava/util/Set;

.field final synthetic val$connectTimeoutMillis:I

.field final synthetic val$parser:Lcom/google/bitcoin/net/StreamParser;

.field final synthetic val$serverAddress:Ljava/net/SocketAddress;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/net/BlockingClient;Ljava/util/Set;Ljava/net/SocketAddress;ILcom/google/bitcoin/net/StreamParser;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/bitcoin/net/BlockingClient$1;->this$0:Lcom/google/bitcoin/net/BlockingClient;

    iput-object p2, p0, Lcom/google/bitcoin/net/BlockingClient$1;->val$clientSet:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/bitcoin/net/BlockingClient$1;->val$serverAddress:Ljava/net/SocketAddress;

    iput p4, p0, Lcom/google/bitcoin/net/BlockingClient$1;->val$connectTimeoutMillis:I

    iput-object p5, p0, Lcom/google/bitcoin/net/BlockingClient$1;->val$parser:Lcom/google/bitcoin/net/StreamParser;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 73
    iget-object v6, p0, Lcom/google/bitcoin/net/BlockingClient$1;->val$clientSet:Ljava/util/Set;

    if-eqz v6, :cond_0

    .line 74
    iget-object v6, p0, Lcom/google/bitcoin/net/BlockingClient$1;->val$clientSet:Ljava/util/Set;

    iget-object v9, p0, Lcom/google/bitcoin/net/BlockingClient$1;->this$0:Lcom/google/bitcoin/net/BlockingClient;

    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/bitcoin/net/BlockingClient$1;->val$serverAddress:Ljava/net/SocketAddress;

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 77
    .local v2, "iServerAddress":Ljava/net/InetSocketAddress;
    iget-object v6, p0, Lcom/google/bitcoin/net/BlockingClient$1;->this$0:Lcom/google/bitcoin/net/BlockingClient;

    invoke-static {v6}, Lcom/google/bitcoin/net/BlockingClient;->access$000(Lcom/google/bitcoin/net/BlockingClient;)Ljava/net/Socket;

    move-result-object v6

    iget-object v9, p0, Lcom/google/bitcoin/net/BlockingClient$1;->val$serverAddress:Ljava/net/SocketAddress;

    iget v10, p0, Lcom/google/bitcoin/net/BlockingClient$1;->val$connectTimeoutMillis:I

    invoke-virtual {v6, v9, v10}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 78
    iget-object v6, p0, Lcom/google/bitcoin/net/BlockingClient$1;->val$parser:Lcom/google/bitcoin/net/StreamParser;

    invoke-interface {v6}, Lcom/google/bitcoin/net/StreamParser;->connectionOpened()V

    .line 79
    iget-object v6, p0, Lcom/google/bitcoin/net/BlockingClient$1;->this$0:Lcom/google/bitcoin/net/BlockingClient;

    invoke-static {v6}, Lcom/google/bitcoin/net/BlockingClient;->access$000(Lcom/google/bitcoin/net/BlockingClient;)Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 80
    .local v5, "stream":Ljava/io/InputStream;
    iget-object v6, p0, Lcom/google/bitcoin/net/BlockingClient$1;->this$0:Lcom/google/bitcoin/net/BlockingClient;

    invoke-static {v6}, Lcom/google/bitcoin/net/BlockingClient;->access$100(Lcom/google/bitcoin/net/BlockingClient;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    new-array v4, v6, [B

    .line 84
    .local v4, "readBuff":[B
    :goto_0
    iget-object v6, p0, Lcom/google/bitcoin/net/BlockingClient$1;->this$0:Lcom/google/bitcoin/net/BlockingClient;

    invoke-static {v6}, Lcom/google/bitcoin/net/BlockingClient;->access$100(Lcom/google/bitcoin/net/BlockingClient;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/google/bitcoin/net/BlockingClient$1;->this$0:Lcom/google/bitcoin/net/BlockingClient;

    invoke-static {v6}, Lcom/google/bitcoin/net/BlockingClient;->access$100(Lcom/google/bitcoin/net/BlockingClient;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    array-length v9, v4

    if-gt v6, v9, :cond_2

    move v6, v7

    :goto_1
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 85
    const/4 v6, 0x0

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/google/bitcoin/net/BlockingClient$1;->this$0:Lcom/google/bitcoin/net/BlockingClient;

    invoke-static {v10}, Lcom/google/bitcoin/net/BlockingClient;->access$100(Lcom/google/bitcoin/net/BlockingClient;)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v5, v4, v6, v9}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 86
    .local v3, "read":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_3

    .line 104
    :try_start_1
    iget-object v6, p0, Lcom/google/bitcoin/net/BlockingClient$1;->this$0:Lcom/google/bitcoin/net/BlockingClient;

    invoke-static {v6}, Lcom/google/bitcoin/net/BlockingClient;->access$000(Lcom/google/bitcoin/net/BlockingClient;)Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 108
    :goto_2
    iget-object v6, p0, Lcom/google/bitcoin/net/BlockingClient$1;->val$clientSet:Ljava/util/Set;

    if-eqz v6, :cond_1

    .line 109
    iget-object v6, p0, Lcom/google/bitcoin/net/BlockingClient$1;->val$clientSet:Ljava/util/Set;

    iget-object v7, p0, Lcom/google/bitcoin/net/BlockingClient$1;->this$0:Lcom/google/bitcoin/net/BlockingClient;

    invoke-interface {v6, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 110
    :cond_1
    iget-object v6, p0, Lcom/google/bitcoin/net/BlockingClient$1;->val$parser:Lcom/google/bitcoin/net/StreamParser;

    invoke-interface {v6}, Lcom/google/bitcoin/net/StreamParser;->connectionClosed()V

    .line 112
    .end local v2    # "iServerAddress":Ljava/net/InetSocketAddress;
    .end local v3    # "read":I
    .end local v4    # "readBuff":[B
    .end local v5    # "stream":Ljava/io/InputStream;
    :goto_3
    return-void

    .restart local v2    # "iServerAddress":Ljava/net/InetSocketAddress;
    .restart local v4    # "readBuff":[B
    .restart local v5    # "stream":Ljava/io/InputStream;
    :cond_2
    move v6, v8

    .line 84
    goto :goto_1

    .line 88
    .restart local v3    # "read":I
    :cond_3
    :try_start_2
    iget-object v6, p0, Lcom/google/bitcoin/net/BlockingClient$1;->this$0:Lcom/google/bitcoin/net/BlockingClient;

    invoke-static {v6}, Lcom/google/bitcoin/net/BlockingClient;->access$100(Lcom/google/bitcoin/net/BlockingClient;)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {v6, v4, v9, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 90
    iget-object v6, p0, Lcom/google/bitcoin/net/BlockingClient$1;->this$0:Lcom/google/bitcoin/net/BlockingClient;

    invoke-static {v6}, Lcom/google/bitcoin/net/BlockingClient;->access$100(Lcom/google/bitcoin/net/BlockingClient;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 93
    iget-object v6, p0, Lcom/google/bitcoin/net/BlockingClient$1;->val$parser:Lcom/google/bitcoin/net/StreamParser;

    iget-object v9, p0, Lcom/google/bitcoin/net/BlockingClient$1;->this$0:Lcom/google/bitcoin/net/BlockingClient;

    invoke-static {v9}, Lcom/google/bitcoin/net/BlockingClient;->access$100(Lcom/google/bitcoin/net/BlockingClient;)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-interface {v6, v9}, Lcom/google/bitcoin/net/StreamParser;->receiveBytes(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 94
    .local v0, "bytesConsumed":I
    iget-object v6, p0, Lcom/google/bitcoin/net/BlockingClient$1;->this$0:Lcom/google/bitcoin/net/BlockingClient;

    invoke-static {v6}, Lcom/google/bitcoin/net/BlockingClient;->access$100(Lcom/google/bitcoin/net/BlockingClient;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    if-ne v6, v0, :cond_6

    move v6, v7

    :goto_4
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 97
    iget-object v6, p0, Lcom/google/bitcoin/net/BlockingClient$1;->this$0:Lcom/google/bitcoin/net/BlockingClient;

    invoke-static {v6}, Lcom/google/bitcoin/net/BlockingClient;->access$100(Lcom/google/bitcoin/net/BlockingClient;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 99
    .end local v0    # "bytesConsumed":I
    .end local v2    # "iServerAddress":Ljava/net/InetSocketAddress;
    .end local v3    # "read":I
    .end local v4    # "readBuff":[B
    .end local v5    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v6, p0, Lcom/google/bitcoin/net/BlockingClient$1;->this$0:Lcom/google/bitcoin/net/BlockingClient;

    invoke-static {v6}, Lcom/google/bitcoin/net/BlockingClient;->access$200(Lcom/google/bitcoin/net/BlockingClient;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 101
    invoke-static {}, Lcom/google/bitcoin/net/BlockingClient;->access$300()Lorg/slf4j/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error trying to open/read from connection: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/bitcoin/net/BlockingClient$1;->val$serverAddress:Ljava/net/SocketAddress;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    :cond_4
    :try_start_4
    iget-object v6, p0, Lcom/google/bitcoin/net/BlockingClient$1;->this$0:Lcom/google/bitcoin/net/BlockingClient;

    invoke-static {v6}, Lcom/google/bitcoin/net/BlockingClient;->access$000(Lcom/google/bitcoin/net/BlockingClient;)Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 108
    :goto_5
    iget-object v6, p0, Lcom/google/bitcoin/net/BlockingClient$1;->val$clientSet:Ljava/util/Set;

    if-eqz v6, :cond_5

    .line 109
    iget-object v6, p0, Lcom/google/bitcoin/net/BlockingClient$1;->val$clientSet:Ljava/util/Set;

    iget-object v7, p0, Lcom/google/bitcoin/net/BlockingClient$1;->this$0:Lcom/google/bitcoin/net/BlockingClient;

    invoke-interface {v6, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 110
    :cond_5
    iget-object v6, p0, Lcom/google/bitcoin/net/BlockingClient$1;->val$parser:Lcom/google/bitcoin/net/StreamParser;

    invoke-interface {v6}, Lcom/google/bitcoin/net/StreamParser;->connectionClosed()V

    goto :goto_3

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bytesConsumed":I
    .restart local v2    # "iServerAddress":Ljava/net/InetSocketAddress;
    .restart local v3    # "read":I
    .restart local v4    # "readBuff":[B
    .restart local v5    # "stream":Ljava/io/InputStream;
    :cond_6
    move v6, v8

    .line 94
    goto :goto_4

    .line 103
    .end local v0    # "bytesConsumed":I
    .end local v2    # "iServerAddress":Ljava/net/InetSocketAddress;
    .end local v3    # "read":I
    .end local v4    # "readBuff":[B
    .end local v5    # "stream":Ljava/io/InputStream;
    :catchall_0
    move-exception v6

    .line 104
    :try_start_5
    iget-object v7, p0, Lcom/google/bitcoin/net/BlockingClient$1;->this$0:Lcom/google/bitcoin/net/BlockingClient;

    invoke-static {v7}, Lcom/google/bitcoin/net/BlockingClient;->access$000(Lcom/google/bitcoin/net/BlockingClient;)Ljava/net/Socket;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 108
    :goto_6
    iget-object v7, p0, Lcom/google/bitcoin/net/BlockingClient$1;->val$clientSet:Ljava/util/Set;

    if-eqz v7, :cond_7

    .line 109
    iget-object v7, p0, Lcom/google/bitcoin/net/BlockingClient$1;->val$clientSet:Ljava/util/Set;

    iget-object v8, p0, Lcom/google/bitcoin/net/BlockingClient$1;->this$0:Lcom/google/bitcoin/net/BlockingClient;

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 110
    :cond_7
    iget-object v7, p0, Lcom/google/bitcoin/net/BlockingClient$1;->val$parser:Lcom/google/bitcoin/net/StreamParser;

    invoke-interface {v7}, Lcom/google/bitcoin/net/StreamParser;->connectionClosed()V

    throw v6

    .line 105
    :catch_1
    move-exception v7

    goto :goto_6

    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    goto :goto_5

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "iServerAddress":Ljava/net/InetSocketAddress;
    .restart local v3    # "read":I
    .restart local v4    # "readBuff":[B
    .restart local v5    # "stream":Ljava/io/InputStream;
    :catch_3
    move-exception v6

    goto/16 :goto_2
.end method
