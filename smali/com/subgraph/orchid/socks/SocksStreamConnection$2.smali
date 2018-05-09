.class Lcom/subgraph/orchid/socks/SocksStreamConnection$2;
.super Ljava/lang/Object;
.source "SocksStreamConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/socks/SocksStreamConnection;->createOutgoingThread()Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/socks/SocksStreamConnection;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/socks/SocksStreamConnection;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection$2;->this$0:Lcom/subgraph/orchid/socks/SocksStreamConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection$2;->this$0:Lcom/subgraph/orchid/socks/SocksStreamConnection;

    invoke-static {v1}, Lcom/subgraph/orchid/socks/SocksStreamConnection;->access$500(Lcom/subgraph/orchid/socks/SocksStreamConnection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 85
    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection$2;->this$0:Lcom/subgraph/orchid/socks/SocksStreamConnection;

    invoke-static {v1}, Lcom/subgraph/orchid/socks/SocksStreamConnection;->access$300(Lcom/subgraph/orchid/socks/SocksStreamConnection;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 86
    :try_start_1
    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection$2;->this$0:Lcom/subgraph/orchid/socks/SocksStreamConnection;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/subgraph/orchid/socks/SocksStreamConnection;->access$602(Lcom/subgraph/orchid/socks/SocksStreamConnection;Z)Z

    .line 87
    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection$2;->this$0:Lcom/subgraph/orchid/socks/SocksStreamConnection;

    invoke-static {v1}, Lcom/subgraph/orchid/socks/SocksStreamConnection;->access$300(Lcom/subgraph/orchid/socks/SocksStreamConnection;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 88
    monitor-exit v2

    .line 90
    :goto_0
    return-void

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {}, Lcom/subgraph/orchid/socks/SocksStreamConnection;->access$200()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System error on outgoing stream IO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection$2;->this$0:Lcom/subgraph/orchid/socks/SocksStreamConnection;

    invoke-static {v3}, Lcom/subgraph/orchid/socks/SocksStreamConnection;->access$100(Lcom/subgraph/orchid/socks/SocksStreamConnection;)Lcom/subgraph/orchid/Stream;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 85
    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection$2;->this$0:Lcom/subgraph/orchid/socks/SocksStreamConnection;

    invoke-static {v1}, Lcom/subgraph/orchid/socks/SocksStreamConnection;->access$300(Lcom/subgraph/orchid/socks/SocksStreamConnection;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 86
    :try_start_3
    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection$2;->this$0:Lcom/subgraph/orchid/socks/SocksStreamConnection;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/subgraph/orchid/socks/SocksStreamConnection;->access$602(Lcom/subgraph/orchid/socks/SocksStreamConnection;Z)Z

    .line 87
    iget-object v1, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection$2;->this$0:Lcom/subgraph/orchid/socks/SocksStreamConnection;

    invoke-static {v1}, Lcom/subgraph/orchid/socks/SocksStreamConnection;->access$300(Lcom/subgraph/orchid/socks/SocksStreamConnection;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 88
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 85
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v1

    iget-object v2, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection$2;->this$0:Lcom/subgraph/orchid/socks/SocksStreamConnection;

    invoke-static {v2}, Lcom/subgraph/orchid/socks/SocksStreamConnection;->access$300(Lcom/subgraph/orchid/socks/SocksStreamConnection;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 86
    :try_start_4
    iget-object v3, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection$2;->this$0:Lcom/subgraph/orchid/socks/SocksStreamConnection;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/subgraph/orchid/socks/SocksStreamConnection;->access$602(Lcom/subgraph/orchid/socks/SocksStreamConnection;Z)Z

    .line 87
    iget-object v3, p0, Lcom/subgraph/orchid/socks/SocksStreamConnection$2;->this$0:Lcom/subgraph/orchid/socks/SocksStreamConnection;

    invoke-static {v3}, Lcom/subgraph/orchid/socks/SocksStreamConnection;->access$300(Lcom/subgraph/orchid/socks/SocksStreamConnection;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 88
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v1

    :catchall_3
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v1
.end method
