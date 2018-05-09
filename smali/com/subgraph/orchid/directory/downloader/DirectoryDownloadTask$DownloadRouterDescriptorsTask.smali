.class Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadRouterDescriptorsTask;
.super Ljava/lang/Object;
.source "DirectoryDownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadRouterDescriptorsTask"
.end annotation


# instance fields
.field private final fingerprints:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

.field private final useMicrodescriptors:Z


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;Ljava/util/Collection;Z)V
    .locals 1
    .param p3, "useMicrodescriptors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p2, "fingerprints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/subgraph/orchid/data/HexDigest;>;"
    iput-object p1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadRouterDescriptorsTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadRouterDescriptorsTask;->fingerprints:Ljava/util/Set;

    .line 196
    iput-boolean p3, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadRouterDescriptorsTask;->useMicrodescriptors:Z

    .line 197
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 201
    :try_start_0
    iget-boolean v1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadRouterDescriptorsTask;->useMicrodescriptors:Z

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadRouterDescriptorsTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-static {v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->access$400(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;)Lcom/subgraph/orchid/Directory;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadRouterDescriptorsTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-static {v2}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->access$300(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;)Lcom/subgraph/orchid/DirectoryDownloader;

    move-result-object v2

    iget-object v3, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadRouterDescriptorsTask;->fingerprints:Ljava/util/Set;

    invoke-interface {v2, v3}, Lcom/subgraph/orchid/DirectoryDownloader;->downloadRouterMicrodescriptors(Ljava/util/Set;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/subgraph/orchid/Directory;->addRouterMicrodescriptors(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :goto_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadRouterDescriptorsTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-static {v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->access$700(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 211
    :goto_1
    return-void

    .line 204
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadRouterDescriptorsTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-static {v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->access$400(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;)Lcom/subgraph/orchid/Directory;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadRouterDescriptorsTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-static {v2}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->access$300(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;)Lcom/subgraph/orchid/DirectoryDownloader;

    move-result-object v2

    iget-object v3, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadRouterDescriptorsTask;->fingerprints:Ljava/util/Set;

    invoke-interface {v2, v3}, Lcom/subgraph/orchid/DirectoryDownloader;->downloadRouterDescriptors(Ljava/util/Set;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/subgraph/orchid/Directory;->addRouterDescriptors(Ljava/util/List;)V
    :try_end_1
    .catch Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
    :try_start_2
    invoke-static {}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->access$500()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to download router descriptors: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    iget-object v1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadRouterDescriptorsTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-static {v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->access$700(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_1

    .end local v0    # "e":Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadRouterDescriptorsTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-static {v2}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->access$700(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v1
.end method
