.class public interface abstract Lcom/subgraph/orchid/Directory;
.super Ljava/lang/Object;
.source "Directory.java"


# virtual methods
.method public abstract addCertificate(Lcom/subgraph/orchid/KeyCertificate;)V
.end method

.method public abstract addConsensusDocument(Lcom/subgraph/orchid/ConsensusDocument;Z)V
.end method

.method public abstract addGuardEntry(Lcom/subgraph/orchid/GuardEntry;)V
.end method

.method public abstract addRouterDescriptors(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/RouterDescriptor;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addRouterMicrodescriptors(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/RouterMicrodescriptor;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract close()V
.end method

.method public abstract createGuardEntryFor(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/GuardEntry;
.end method

.method public abstract getAllRouters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBasicDescriptorFromCache(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/RouterDescriptor;
.end method

.method public abstract getCurrentConsensusDocument()Lcom/subgraph/orchid/ConsensusDocument;
.end method

.method public abstract getDirectoryAuthorities()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/subgraph/orchid/DirectoryServer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGuardEntries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/GuardEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMicrodescriptorFromCache(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/RouterMicrodescriptor;
.end method

.method public abstract getRandomDirectoryAuthority()Lcom/subgraph/orchid/DirectoryServer;
.end method

.method public abstract getRequiredCertificates()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRouterByIdentity(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/Router;
.end method

.method public abstract getRouterByName(Ljava/lang/String;)Lcom/subgraph/orchid/Router;
.end method

.method public abstract getRouterListByNames(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRoutersWithDownloadableDescriptors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasPendingConsensus()Z
.end method

.method public abstract haveMinimumRouterInfo()Z
.end method

.method public abstract loadFromStore()V
.end method

.method public abstract registerConsensusChangedHandler(Lcom/subgraph/orchid/events/EventHandler;)V
.end method

.method public abstract removeGuardEntry(Lcom/subgraph/orchid/GuardEntry;)V
.end method

.method public abstract storeCertificates()V
.end method

.method public abstract unregisterConsensusChangedHandler(Lcom/subgraph/orchid/events/EventHandler;)V
.end method

.method public abstract waitUntilLoaded()V
.end method
