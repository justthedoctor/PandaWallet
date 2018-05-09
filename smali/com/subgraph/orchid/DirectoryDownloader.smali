.class public interface abstract Lcom/subgraph/orchid/DirectoryDownloader;
.super Ljava/lang/Object;
.source "DirectoryDownloader.java"


# virtual methods
.method public abstract downloadBridgeDescriptor(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/RouterDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation
.end method

.method public abstract downloadCurrentConsensus(Z)Lcom/subgraph/orchid/ConsensusDocument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation
.end method

.method public abstract downloadCurrentConsensus(ZLcom/subgraph/orchid/DirectoryCircuit;)Lcom/subgraph/orchid/ConsensusDocument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation
.end method

.method public abstract downloadKeyCertificates(Ljava/util/Set;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/KeyCertificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation
.end method

.method public abstract downloadKeyCertificates(Ljava/util/Set;Lcom/subgraph/orchid/DirectoryCircuit;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;",
            ">;",
            "Lcom/subgraph/orchid/DirectoryCircuit;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/KeyCertificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation
.end method

.method public abstract downloadRouterDescriptors(Ljava/util/Set;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/RouterDescriptor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation
.end method

.method public abstract downloadRouterDescriptors(Ljava/util/Set;Lcom/subgraph/orchid/DirectoryCircuit;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ">;",
            "Lcom/subgraph/orchid/DirectoryCircuit;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/RouterDescriptor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation
.end method

.method public abstract downloadRouterMicrodescriptors(Ljava/util/Set;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/RouterMicrodescriptor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation
.end method

.method public abstract downloadRouterMicrodescriptors(Ljava/util/Set;Lcom/subgraph/orchid/DirectoryCircuit;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ">;",
            "Lcom/subgraph/orchid/DirectoryCircuit;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/RouterMicrodescriptor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation
.end method

.method public abstract start(Lcom/subgraph/orchid/Directory;)V
.end method

.method public abstract stop()V
.end method
