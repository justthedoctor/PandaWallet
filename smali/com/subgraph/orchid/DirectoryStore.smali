.class public interface abstract Lcom/subgraph/orchid/DirectoryStore;
.super Ljava/lang/Object;
.source "DirectoryStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/DirectoryStore$CacheFile;
    }
.end annotation


# virtual methods
.method public abstract appendDocumentList(Lcom/subgraph/orchid/DirectoryStore$CacheFile;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/DirectoryStore$CacheFile;",
            "Ljava/util/List",
            "<+",
            "Lcom/subgraph/orchid/Document;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadCacheFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)Ljava/nio/ByteBuffer;
.end method

.method public abstract removeAllCacheFiles()V
.end method

.method public abstract removeCacheFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)V
.end method

.method public abstract writeData(Lcom/subgraph/orchid/DirectoryStore$CacheFile;Ljava/nio/ByteBuffer;)V
.end method

.method public abstract writeDocument(Lcom/subgraph/orchid/DirectoryStore$CacheFile;Lcom/subgraph/orchid/Document;)V
.end method

.method public abstract writeDocumentList(Lcom/subgraph/orchid/DirectoryStore$CacheFile;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/DirectoryStore$CacheFile;",
            "Ljava/util/List",
            "<+",
            "Lcom/subgraph/orchid/Document;",
            ">;)V"
        }
    .end annotation
.end method
