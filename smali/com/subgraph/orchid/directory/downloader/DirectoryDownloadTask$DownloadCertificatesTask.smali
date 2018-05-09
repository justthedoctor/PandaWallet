.class Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadCertificatesTask;
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
    name = "DownloadCertificatesTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;


# direct methods
.method private constructor <init>(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadCertificatesTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;
    .param p2, "x1"    # Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$1;

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadCertificatesTask;-><init>(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 217
    :try_start_0
    iget-object v3, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadCertificatesTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-static {v3}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->access$300(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;)Lcom/subgraph/orchid/DirectoryDownloader;

    move-result-object v3

    iget-object v4, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadCertificatesTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-static {v4}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->access$400(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;)Lcom/subgraph/orchid/Directory;

    move-result-object v4

    invoke-interface {v4}, Lcom/subgraph/orchid/Directory;->getRequiredCertificates()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/subgraph/orchid/DirectoryDownloader;->downloadKeyCertificates(Ljava/util/Set;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/KeyCertificate;

    .line 218
    .local v0, "c":Lcom/subgraph/orchid/KeyCertificate;
    iget-object v3, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadCertificatesTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-static {v3}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->access$400(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;)Lcom/subgraph/orchid/Directory;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/subgraph/orchid/Directory;->addCertificate(Lcom/subgraph/orchid/KeyCertificate;)V
    :try_end_0
    .catch Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 221
    .end local v0    # "c":Lcom/subgraph/orchid/KeyCertificate;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
    :try_start_1
    invoke-static {}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->access$500()Ljava/util/logging/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to download key certificates: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    iget-object v3, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadCertificatesTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-static {v3, v6}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->access$802(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;Z)Z

    .line 226
    .end local v1    # "e":Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
    :goto_1
    return-void

    .line 220
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadCertificatesTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-static {v3}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->access$400(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;)Lcom/subgraph/orchid/Directory;

    move-result-object v3

    invoke-interface {v3}, Lcom/subgraph/orchid/Directory;->storeCertificates()V
    :try_end_2
    .catch Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    iget-object v3, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadCertificatesTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-static {v3, v6}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->access$802(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;Z)Z

    goto :goto_1

    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask$DownloadCertificatesTask;->this$0:Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;

    invoke-static {v4, v6}, Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;->access$802(Lcom/subgraph/orchid/directory/downloader/DirectoryDownloadTask;Z)Z

    throw v3
.end method
