.class Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;
.super Ljava/lang/Object;
.source "Bridges.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/circuits/guards/Bridges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescriptorDownloader"
.end annotation


# instance fields
.field private final target:Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;

.field final synthetic this$0:Lcom/subgraph/orchid/circuits/guards/Bridges;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/circuits/guards/Bridges;Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;)V
    .locals 0
    .param p2, "target"    # Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->this$0:Lcom/subgraph/orchid/circuits/guards/Bridges;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->target:Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;

    .line 29
    return-void
.end method

.method private decrementOutstandingTasks()V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->this$0:Lcom/subgraph/orchid/circuits/guards/Bridges;

    invoke-static {v0}, Lcom/subgraph/orchid/circuits/guards/Bridges;->access$400(Lcom/subgraph/orchid/circuits/guards/Bridges;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lcom/subgraph/orchid/circuits/guards/Bridges;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Initial descriptor fetch complete"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->this$0:Lcom/subgraph/orchid/circuits/guards/Bridges;

    invoke-static {v0}, Lcom/subgraph/orchid/circuits/guards/Bridges;->access$200(Lcom/subgraph/orchid/circuits/guards/Bridges;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->this$0:Lcom/subgraph/orchid/circuits/guards/Bridges;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/subgraph/orchid/circuits/guards/Bridges;->access$502(Lcom/subgraph/orchid/circuits/guards/Bridges;Z)Z

    .line 61
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->this$0:Lcom/subgraph/orchid/circuits/guards/Bridges;

    invoke-static {v0}, Lcom/subgraph/orchid/circuits/guards/Bridges;->access$200(Lcom/subgraph/orchid/circuits/guards/Bridges;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 62
    monitor-exit v1

    .line 64
    :cond_0
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private downloadDescriptor()V
    .locals 5

    .prologue
    .line 40
    invoke-static {}, Lcom/subgraph/orchid/circuits/guards/Bridges;->access$000()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloading descriptor for bridge: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->target:Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 42
    :try_start_0
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->this$0:Lcom/subgraph/orchid/circuits/guards/Bridges;

    invoke-static {v2}, Lcom/subgraph/orchid/circuits/guards/Bridges;->access$100(Lcom/subgraph/orchid/circuits/guards/Bridges;)Lcom/subgraph/orchid/DirectoryDownloader;

    move-result-object v2

    iget-object v3, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->target:Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;

    invoke-interface {v2, v3}, Lcom/subgraph/orchid/DirectoryDownloader;->downloadBridgeDescriptor(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/RouterDescriptor;

    move-result-object v0

    .line 43
    .local v0, "descriptor":Lcom/subgraph/orchid/RouterDescriptor;
    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Lcom/subgraph/orchid/circuits/guards/Bridges;->access$000()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Descriptor received for bridge "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->target:Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Adding to list of usable bridges"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 45
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->target:Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;

    invoke-virtual {v2, v0}, Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;->setDescriptor(Lcom/subgraph/orchid/RouterDescriptor;)V

    .line 46
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->this$0:Lcom/subgraph/orchid/circuits/guards/Bridges;

    invoke-static {v2}, Lcom/subgraph/orchid/circuits/guards/Bridges;->access$200(Lcom/subgraph/orchid/circuits/guards/Bridges;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :try_start_1
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->this$0:Lcom/subgraph/orchid/circuits/guards/Bridges;

    invoke-static {v2}, Lcom/subgraph/orchid/circuits/guards/Bridges;->access$300(Lcom/subgraph/orchid/circuits/guards/Bridges;)Ljava/util/Set;

    move-result-object v2

    iget-object v4, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->target:Lcom/subgraph/orchid/circuits/guards/BridgeRouterImpl;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->this$0:Lcom/subgraph/orchid/circuits/guards/Bridges;

    invoke-static {v2}, Lcom/subgraph/orchid/circuits/guards/Bridges;->access$200(Lcom/subgraph/orchid/circuits/guards/Bridges;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 49
    monitor-exit v3

    .line 54
    .end local v0    # "descriptor":Lcom/subgraph/orchid/RouterDescriptor;
    :cond_0
    :goto_0
    return-void

    .line 49
    .restart local v0    # "descriptor":Lcom/subgraph/orchid/RouterDescriptor;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 51
    .end local v0    # "descriptor":Lcom/subgraph/orchid/RouterDescriptor;
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
    invoke-static {}, Lcom/subgraph/orchid/circuits/guards/Bridges;->access$000()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to download descriptor for bridge: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 33
    :try_start_0
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->downloadDescriptor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->decrementOutstandingTasks()V

    .line 37
    return-void

    .line 35
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/guards/Bridges$DescriptorDownloader;->decrementOutstandingTasks()V

    throw v0
.end method
