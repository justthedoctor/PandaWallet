.class public Lcom/subgraph/orchid/directory/DirectoryImpl;
.super Ljava/lang/Object;
.source "DirectoryImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/Directory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/directory/DirectoryImpl$4;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final parserFactory:Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;


# instance fields
.field private final basicDescriptorCache:Lcom/subgraph/orchid/directory/DescriptorCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/subgraph/orchid/directory/DescriptorCache",
            "<",
            "Lcom/subgraph/orchid/RouterDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private final consensusChangedManager:Lcom/subgraph/orchid/events/EventManager;

.field private consensusWaitingForCertificates:Lcom/subgraph/orchid/ConsensusDocument;

.field private currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

.field private final directoryCaches:Lcom/subgraph/orchid/data/RandomSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/subgraph/orchid/data/RandomSet",
            "<",
            "Lcom/subgraph/orchid/directory/RouterImpl;",
            ">;"
        }
    .end annotation
.end field

.field private haveMinimumRouterInfo:Z

.field private isLoaded:Z

.field private last:J

.field private final loadLock:Ljava/lang/Object;

.field private final microdescriptorCache:Lcom/subgraph/orchid/directory/DescriptorCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/subgraph/orchid/directory/DescriptorCache",
            "<",
            "Lcom/subgraph/orchid/RouterMicrodescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private needRecalculateMinimumRouterInfo:Z

.field private final random:Lcom/subgraph/orchid/crypto/TorRandom;

.field private final requiredCertificates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;",
            ">;"
        }
    .end annotation
.end field

.field private final routersByIdentity:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            "Lcom/subgraph/orchid/directory/RouterImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final routersByNickname:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/subgraph/orchid/directory/RouterImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final stateFile:Lcom/subgraph/orchid/directory/StateFile;

.field private final store:Lcom/subgraph/orchid/DirectoryStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/subgraph/orchid/directory/DirectoryImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    .line 61
    new-instance v0, Lcom/subgraph/orchid/directory/DocumentParserFactoryImpl;

    invoke-direct {v0}, Lcom/subgraph/orchid/directory/DocumentParserFactoryImpl;-><init>()V

    sput-object v0, Lcom/subgraph/orchid/directory/DirectoryImpl;->parserFactory:Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/DirectoryStore;)V
    .locals 2
    .param p1, "config"    # Lcom/subgraph/orchid/TorConfig;
    .param p2, "customDirectoryStore"    # Lcom/subgraph/orchid/DirectoryStore;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->loadLock:Ljava/lang/Object;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->isLoaded:Z

    .line 164
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->last:J

    .line 67
    if-nez p2, :cond_0

    new-instance p2, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;

    .end local p2    # "customDirectoryStore":Lcom/subgraph/orchid/DirectoryStore;
    invoke-direct {p2, p1}, Lcom/subgraph/orchid/directory/DirectoryStoreImpl;-><init>(Lcom/subgraph/orchid/TorConfig;)V

    :cond_0
    iput-object p2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->store:Lcom/subgraph/orchid/DirectoryStore;

    .line 68
    iput-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->config:Lcom/subgraph/orchid/TorConfig;

    .line 69
    new-instance v0, Lcom/subgraph/orchid/directory/StateFile;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->store:Lcom/subgraph/orchid/DirectoryStore;

    invoke-direct {v0, v1, p0}, Lcom/subgraph/orchid/directory/StateFile;-><init>(Lcom/subgraph/orchid/DirectoryStore;Lcom/subgraph/orchid/Directory;)V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->stateFile:Lcom/subgraph/orchid/directory/StateFile;

    .line 70
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->store:Lcom/subgraph/orchid/DirectoryStore;

    invoke-static {v0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->createMicrodescriptorCache(Lcom/subgraph/orchid/DirectoryStore;)Lcom/subgraph/orchid/directory/DescriptorCache;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->microdescriptorCache:Lcom/subgraph/orchid/directory/DescriptorCache;

    .line 71
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->store:Lcom/subgraph/orchid/DirectoryStore;

    invoke-static {v0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->createBasicDescriptorCache(Lcom/subgraph/orchid/DirectoryStore;)Lcom/subgraph/orchid/directory/DescriptorCache;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->basicDescriptorCache:Lcom/subgraph/orchid/directory/DescriptorCache;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByIdentity:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByNickname:Ljava/util/Map;

    .line 74
    new-instance v0, Lcom/subgraph/orchid/data/RandomSet;

    invoke-direct {v0}, Lcom/subgraph/orchid/data/RandomSet;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->directoryCaches:Lcom/subgraph/orchid/data/RandomSet;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->requiredCertificates:Ljava/util/Set;

    .line 76
    new-instance v0, Lcom/subgraph/orchid/events/EventManager;

    invoke-direct {v0}, Lcom/subgraph/orchid/events/EventManager;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->consensusChangedManager:Lcom/subgraph/orchid/events/EventManager;

    .line 77
    new-instance v0, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    .line 78
    return-void
.end method

.method static synthetic access$000()Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/subgraph/orchid/directory/DirectoryImpl;->parserFactory:Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;

    return-object v0
.end method

.method private addRouter(Lcom/subgraph/orchid/directory/RouterImpl;)V
    .locals 2
    .param p1, "router"    # Lcom/subgraph/orchid/directory/RouterImpl;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByIdentity:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/RouterImpl;->getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/DirectoryImpl;->addRouterByNickname(Lcom/subgraph/orchid/directory/RouterImpl;)V

    .line 388
    return-void
.end method

.method private addRouterByNickname(Lcom/subgraph/orchid/directory/RouterImpl;)V
    .locals 3
    .param p1, "router"    # Lcom/subgraph/orchid/directory/RouterImpl;

    .prologue
    .line 391
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/RouterImpl;->getNickname()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "Unnamed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByNickname:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/RouterImpl;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByNickname:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private declared-synchronized checkMinimumRouterInfo()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    invoke-interface {v6}, Lcom/subgraph/orchid/ConsensusDocument;->isLive()Z

    move-result v6

    if-nez v6, :cond_1

    .line 107
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->needRecalculateMinimumRouterInfo:Z

    .line 108
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->haveMinimumRouterInfo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :goto_0
    monitor-exit p0

    return-void

    .line 112
    :cond_1
    const/4 v3, 0x0

    .line 113
    .local v3, "routerCount":I
    const/4 v0, 0x0

    .line 114
    .local v0, "descriptorCount":I
    :try_start_1
    iget-object v6, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByIdentity:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/directory/RouterImpl;

    .line 115
    .local v2, "r":Lcom/subgraph/orchid/Router;
    add-int/lit8 v3, v3, 0x1

    .line 116
    invoke-interface {v2}, Lcom/subgraph/orchid/Router;->isDescriptorDownloadable()Z

    move-result v6

    if-nez v6, :cond_2

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 119
    .end local v2    # "r":Lcom/subgraph/orchid/Router;
    :cond_3
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->needRecalculateMinimumRouterInfo:Z

    .line 120
    mul-int/lit8 v6, v0, 0x4

    if-le v6, v3, :cond_4

    :goto_2
    iput-boolean v4, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->haveMinimumRouterInfo:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 106
    .end local v0    # "descriptorCount":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "routerCount":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v0    # "descriptorCount":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "routerCount":I
    :cond_4
    move v4, v5

    .line 120
    goto :goto_2
.end method

.method private classifyRouter(Lcom/subgraph/orchid/directory/RouterImpl;)V
    .locals 1
    .param p1, "router"    # Lcom/subgraph/orchid/directory/RouterImpl;

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/DirectoryImpl;->isValidDirectoryCache(Lcom/subgraph/orchid/directory/RouterImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->directoryCaches:Lcom/subgraph/orchid/data/RandomSet;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/data/RandomSet;->add(Ljava/lang/Object;)Z

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->directoryCaches:Lcom/subgraph/orchid/data/RandomSet;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/data/RandomSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private clearAll()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByIdentity:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 365
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByNickname:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 366
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->directoryCaches:Lcom/subgraph/orchid/data/RandomSet;

    invoke-virtual {v0}, Lcom/subgraph/orchid/data/RandomSet;->clear()V

    .line 367
    return-void
.end method

.method private static createBasicDescriptorCache(Lcom/subgraph/orchid/DirectoryStore;)Lcom/subgraph/orchid/directory/DescriptorCache;
    .locals 3
    .param p0, "store"    # Lcom/subgraph/orchid/DirectoryStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/DirectoryStore;",
            ")",
            "Lcom/subgraph/orchid/directory/DescriptorCache",
            "<",
            "Lcom/subgraph/orchid/RouterDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lcom/subgraph/orchid/directory/DirectoryImpl$2;

    sget-object v1, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->DESCRIPTOR_CACHE:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    sget-object v2, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->DESCRIPTOR_JOURNAL:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    invoke-direct {v0, p0, v1, v2}, Lcom/subgraph/orchid/directory/DirectoryImpl$2;-><init>(Lcom/subgraph/orchid/DirectoryStore;Lcom/subgraph/orchid/DirectoryStore$CacheFile;Lcom/subgraph/orchid/DirectoryStore$CacheFile;)V

    return-object v0
.end method

.method private static createMicrodescriptorCache(Lcom/subgraph/orchid/DirectoryStore;)Lcom/subgraph/orchid/directory/DescriptorCache;
    .locals 3
    .param p0, "store"    # Lcom/subgraph/orchid/DirectoryStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/DirectoryStore;",
            ")",
            "Lcom/subgraph/orchid/directory/DescriptorCache",
            "<",
            "Lcom/subgraph/orchid/RouterMicrodescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lcom/subgraph/orchid/directory/DirectoryImpl$1;

    sget-object v1, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->MICRODESCRIPTOR_CACHE:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    sget-object v2, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->MICRODESCRIPTOR_JOURNAL:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    invoke-direct {v0, p0, v1, v2}, Lcom/subgraph/orchid/directory/DirectoryImpl$1;-><init>(Lcom/subgraph/orchid/DirectoryStore;Lcom/subgraph/orchid/DirectoryStore$CacheFile;Lcom/subgraph/orchid/DirectoryStore$CacheFile;)V

    return-object v0
.end method

.method private getDescriptorForRouterStatus(Lcom/subgraph/orchid/RouterStatus;Z)Lcom/subgraph/orchid/Descriptor;
    .locals 2
    .param p1, "rs"    # Lcom/subgraph/orchid/RouterStatus;
    .param p2, "isMicrodescriptor"    # Z

    .prologue
    .line 348
    if-eqz p2, :cond_0

    .line 349
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->microdescriptorCache:Lcom/subgraph/orchid/directory/DescriptorCache;

    invoke-interface {p1}, Lcom/subgraph/orchid/RouterStatus;->getMicrodescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/DescriptorCache;->getDescriptor(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/Descriptor;

    move-result-object v0

    .line 351
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->basicDescriptorCache:Lcom/subgraph/orchid/directory/DescriptorCache;

    invoke-interface {p1}, Lcom/subgraph/orchid/RouterStatus;->getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/DescriptorCache;->getDescriptor(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/Descriptor;

    move-result-object v0

    goto :goto_0
.end method

.method private isValidDirectoryCache(Lcom/subgraph/orchid/directory/RouterImpl;)Z
    .locals 2
    .param p1, "router"    # Lcom/subgraph/orchid/directory/RouterImpl;

    .prologue
    const/4 v0, 0x0

    .line 378
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/RouterImpl;->getDirectoryPort()I

    move-result v1

    if-nez v1, :cond_1

    .line 382
    :cond_0
    :goto_0
    return v0

    .line 380
    :cond_1
    const-string v1, "BadDirectory"

    invoke-virtual {p1, v1}, Lcom/subgraph/orchid/directory/RouterImpl;->hasFlag(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 382
    const-string v0, "V2Dir"

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/directory/RouterImpl;->hasFlag(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private loadCertificates(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 173
    sget-object v4, Lcom/subgraph/orchid/directory/DirectoryImpl;->parserFactory:Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;

    invoke-interface {v4, p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;->createKeyCertificateParser(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/parsing/DocumentParser;

    move-result-object v2

    .line 174
    .local v2, "parser":Lcom/subgraph/orchid/directory/parsing/DocumentParser;, "Lcom/subgraph/orchid/directory/parsing/DocumentParser<Lcom/subgraph/orchid/KeyCertificate;>;"
    invoke-interface {v2}, Lcom/subgraph/orchid/directory/parsing/DocumentParser;->parse()Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;

    move-result-object v3

    .line 175
    .local v3, "result":Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;, "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult<Lcom/subgraph/orchid/KeyCertificate;>;"
    const-string v4, "certificates"

    invoke-direct {p0, v3, v4}, Lcom/subgraph/orchid/directory/DirectoryImpl;->testResult(Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 176
    invoke-interface {v3}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->getParsedDocuments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/KeyCertificate;

    .line 177
    .local v0, "cert":Lcom/subgraph/orchid/KeyCertificate;
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->addCertificate(Lcom/subgraph/orchid/KeyCertificate;)V

    goto :goto_0

    .line 180
    .end local v0    # "cert":Lcom/subgraph/orchid/KeyCertificate;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private loadConsensus(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 183
    sget-object v2, Lcom/subgraph/orchid/directory/DirectoryImpl;->parserFactory:Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;

    invoke-interface {v2, p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;->createConsensusDocumentParser(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/parsing/DocumentParser;

    move-result-object v0

    .line 184
    .local v0, "parser":Lcom/subgraph/orchid/directory/parsing/DocumentParser;, "Lcom/subgraph/orchid/directory/parsing/DocumentParser<Lcom/subgraph/orchid/ConsensusDocument;>;"
    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentParser;->parse()Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;

    move-result-object v1

    .line 185
    .local v1, "result":Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;, "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult<Lcom/subgraph/orchid/ConsensusDocument;>;"
    const-string v2, "consensus"

    invoke-direct {p0, v1, v2}, Lcom/subgraph/orchid/directory/DirectoryImpl;->testResult(Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->getDocument()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/ConsensusDocument;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/subgraph/orchid/directory/DirectoryImpl;->addConsensusDocument(Lcom/subgraph/orchid/ConsensusDocument;Z)V

    .line 188
    :cond_0
    return-void
.end method

.method private logElapsed()V
    .locals 7

    .prologue
    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 167
    .local v2, "now":J
    iget-wide v4, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->last:J

    sub-long v0, v2, v4

    .line 168
    .local v0, "elapsed":J
    iput-wide v2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->last:J

    .line 169
    sget-object v4, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method private removeRequiredCertificate(Lcom/subgraph/orchid/KeyCertificate;)Z
    .locals 4
    .param p1, "certificate"    # Lcom/subgraph/orchid/KeyCertificate;

    .prologue
    .line 260
    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->requiredCertificates:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 261
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;

    .line 263
    .local v1, "r":Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;
    invoke-interface {v1}, Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;->getSigningKey()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v2

    invoke-interface {p1}, Lcom/subgraph/orchid/KeyCertificate;->getAuthoritySigningKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/subgraph/orchid/data/HexDigest;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 265
    const/4 v2, 0x1

    .line 268
    .end local v1    # "r":Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private storeCurrentConsensus()V
    .locals 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    invoke-interface {v0}, Lcom/subgraph/orchid/ConsensusDocument;->getFlavor()Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    move-result-object v0

    sget-object v1, Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;->MICRODESC:Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    if-ne v0, v1, :cond_1

    .line 340
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->store:Lcom/subgraph/orchid/DirectoryStore;

    sget-object v1, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->CONSENSUS_MICRODESC:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    invoke-interface {v0, v1, v2}, Lcom/subgraph/orchid/DirectoryStore;->writeDocument(Lcom/subgraph/orchid/DirectoryStore$CacheFile;Lcom/subgraph/orchid/Document;)V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->store:Lcom/subgraph/orchid/DirectoryStore;

    sget-object v1, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->CONSENSUS:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    invoke-interface {v0, v1, v2}, Lcom/subgraph/orchid/DirectoryStore;->writeDocument(Lcom/subgraph/orchid/DirectoryStore$CacheFile;Lcom/subgraph/orchid/Document;)V

    goto :goto_0
.end method

.method private testResult(Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;Ljava/lang/String;)Z
    .locals 3
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "result":Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;, "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult<*>;"
    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->isOkay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    .line 193
    :cond_0
    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    sget-object v0, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing error loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 200
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 195
    :cond_1
    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    sget-object v0, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 198
    :cond_2
    sget-object v0, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown problem loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateOrCreateRouter(Lcom/subgraph/orchid/RouterStatus;Ljava/util/Map;)Lcom/subgraph/orchid/directory/RouterImpl;
    .locals 2
    .param p1, "status"    # Lcom/subgraph/orchid/RouterStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/RouterStatus;",
            "Ljava/util/Map",
            "<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            "Lcom/subgraph/orchid/directory/RouterImpl;",
            ">;)",
            "Lcom/subgraph/orchid/directory/RouterImpl;"
        }
    .end annotation

    .prologue
    .line 356
    .local p2, "knownRouters":Ljava/util/Map;, "Ljava/util/Map<Lcom/subgraph/orchid/data/HexDigest;Lcom/subgraph/orchid/directory/RouterImpl;>;"
    invoke-interface {p1}, Lcom/subgraph/orchid/RouterStatus;->getIdentity()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/directory/RouterImpl;

    .line 357
    .local v0, "router":Lcom/subgraph/orchid/directory/RouterImpl;
    if-nez v0, :cond_0

    .line 358
    invoke-static {p0, p1}, Lcom/subgraph/orchid/directory/RouterImpl;->createFromRouterStatus(Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/RouterStatus;)Lcom/subgraph/orchid/directory/RouterImpl;

    move-result-object v0

    .line 360
    .end local v0    # "router":Lcom/subgraph/orchid/directory/RouterImpl;
    :goto_0
    return-object v0

    .line 359
    .restart local v0    # "router":Lcom/subgraph/orchid/directory/RouterImpl;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/directory/RouterImpl;->updateStatus(Lcom/subgraph/orchid/RouterStatus;)V

    goto :goto_0
.end method


# virtual methods
.method public addCertificate(Lcom/subgraph/orchid/KeyCertificate;)V
    .locals 6
    .param p1, "certificate"    # Lcom/subgraph/orchid/KeyCertificate;

    .prologue
    .line 230
    invoke-static {}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getInstance()Lcom/subgraph/orchid/directory/TrustedAuthorities;

    move-result-object v3

    monitor-enter v3

    .line 231
    :try_start_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/DirectoryImpl;->removeRequiredCertificate(Lcom/subgraph/orchid/KeyCertificate;)Z

    move-result v1

    .line 232
    .local v1, "wasRequired":Z
    invoke-static {}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getInstance()Lcom/subgraph/orchid/directory/TrustedAuthorities;

    move-result-object v2

    invoke-interface {p1}, Lcom/subgraph/orchid/KeyCertificate;->getAuthorityFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getAuthorityServerByIdentity(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/DirectoryServer;

    move-result-object v0

    .line 233
    .local v0, "as":Lcom/subgraph/orchid/DirectoryServer;
    if-nez v0, :cond_0

    .line 234
    sget-object v2, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate read for unknown directory authority with identity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lcom/subgraph/orchid/KeyCertificate;->getAuthorityFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 235
    monitor-exit v3

    .line 257
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-interface {v0, p1}, Lcom/subgraph/orchid/DirectoryServer;->addCertificate(Lcom/subgraph/orchid/KeyCertificate;)V

    .line 239
    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->consensusWaitingForCertificates:Lcom/subgraph/orchid/ConsensusDocument;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 241
    sget-object v2, Lcom/subgraph/orchid/directory/DirectoryImpl$4;->$SwitchMap$com$subgraph$orchid$ConsensusDocument$SignatureStatus:[I

    iget-object v4, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->consensusWaitingForCertificates:Lcom/subgraph/orchid/ConsensusDocument;

    invoke-interface {v4}, Lcom/subgraph/orchid/ConsensusDocument;->verifySignatures()Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 256
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v0    # "as":Lcom/subgraph/orchid/DirectoryServer;
    .end local v1    # "wasRequired":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 243
    .restart local v0    # "as":Lcom/subgraph/orchid/DirectoryServer;
    .restart local v1    # "wasRequired":Z
    :pswitch_0
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->consensusWaitingForCertificates:Lcom/subgraph/orchid/ConsensusDocument;

    .line 244
    monitor-exit v3

    goto :goto_0

    .line 247
    :pswitch_1
    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->consensusWaitingForCertificates:Lcom/subgraph/orchid/ConsensusDocument;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/subgraph/orchid/directory/DirectoryImpl;->addConsensusDocument(Lcom/subgraph/orchid/ConsensusDocument;Z)V

    .line 248
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->consensusWaitingForCertificates:Lcom/subgraph/orchid/ConsensusDocument;

    .line 249
    monitor-exit v3

    goto :goto_0

    .line 252
    :pswitch_2
    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->requiredCertificates:Ljava/util/Set;

    iget-object v4, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->consensusWaitingForCertificates:Lcom/subgraph/orchid/ConsensusDocument;

    invoke-interface {v4}, Lcom/subgraph/orchid/ConsensusDocument;->getRequiredCertificates()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 253
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized addConsensusDocument(Lcom/subgraph/orchid/ConsensusDocument;Z)V
    .locals 8
    .param p1, "consensus"    # Lcom/subgraph/orchid/ConsensusDocument;
    .param p2, "fromCache"    # Z

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 335
    :goto_0
    monitor-exit p0

    return-void

    .line 290
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    if-eqz v5, :cond_1

    invoke-interface {p1}, Lcom/subgraph/orchid/ConsensusDocument;->getValidAfterTime()Lcom/subgraph/orchid/data/Timestamp;

    move-result-object v5

    iget-object v6, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    invoke-interface {v6}, Lcom/subgraph/orchid/ConsensusDocument;->getValidAfterTime()Lcom/subgraph/orchid/data/Timestamp;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/subgraph/orchid/data/Timestamp;->isBefore(Lcom/subgraph/orchid/data/Timestamp;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 291
    sget-object v5, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    const-string v6, "New consensus document is older than current consensus document"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 295
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getInstance()Lcom/subgraph/orchid/directory/TrustedAuthorities;

    move-result-object v6

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    :try_start_3
    sget-object v5, Lcom/subgraph/orchid/directory/DirectoryImpl$4;->$SwitchMap$com$subgraph$orchid$ConsensusDocument$SignatureStatus:[I

    invoke-interface {p1}, Lcom/subgraph/orchid/ConsensusDocument;->verifySignatures()Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    .line 309
    :pswitch_0
    iget-object v5, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->requiredCertificates:Ljava/util/Set;

    invoke-interface {p1}, Lcom/subgraph/orchid/ConsensusDocument;->getRequiredCertificates()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 311
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 312
    :try_start_4
    new-instance v2, Ljava/util/HashMap;

    iget-object v5, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByIdentity:Ljava/util/Map;

    invoke-direct {v2, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 314
    .local v2, "oldRouterByIdentity":Ljava/util/Map;, "Ljava/util/Map<Lcom/subgraph/orchid/data/HexDigest;Lcom/subgraph/orchid/directory/RouterImpl;>;"
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->clearAll()V

    .line 316
    invoke-interface {p1}, Lcom/subgraph/orchid/ConsensusDocument;->getRouterStatusEntries()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/subgraph/orchid/RouterStatus;

    .line 317
    .local v4, "status":Lcom/subgraph/orchid/RouterStatus;
    const-string v5, "Running"

    invoke-interface {v4, v5}, Lcom/subgraph/orchid/RouterStatus;->hasFlag(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "Valid"

    invoke-interface {v4, v5}, Lcom/subgraph/orchid/RouterStatus;->hasFlag(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 318
    invoke-direct {p0, v4, v2}, Lcom/subgraph/orchid/directory/DirectoryImpl;->updateOrCreateRouter(Lcom/subgraph/orchid/RouterStatus;Ljava/util/Map;)Lcom/subgraph/orchid/directory/RouterImpl;

    move-result-object v3

    .line 319
    .local v3, "router":Lcom/subgraph/orchid/directory/RouterImpl;
    invoke-direct {p0, v3}, Lcom/subgraph/orchid/directory/DirectoryImpl;->addRouter(Lcom/subgraph/orchid/directory/RouterImpl;)V

    .line 320
    invoke-direct {p0, v3}, Lcom/subgraph/orchid/directory/DirectoryImpl;->classifyRouter(Lcom/subgraph/orchid/directory/RouterImpl;)V

    .line 322
    .end local v3    # "router":Lcom/subgraph/orchid/directory/RouterImpl;
    :cond_3
    invoke-interface {p1}, Lcom/subgraph/orchid/ConsensusDocument;->getFlavor()Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    move-result-object v5

    sget-object v6, Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;->MICRODESC:Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    :goto_2
    invoke-direct {p0, v4, v5}, Lcom/subgraph/orchid/directory/DirectoryImpl;->getDescriptorForRouterStatus(Lcom/subgraph/orchid/RouterStatus;Z)Lcom/subgraph/orchid/Descriptor;

    move-result-object v0

    .line 323
    .local v0, "d":Lcom/subgraph/orchid/Descriptor;
    if-eqz v0, :cond_2

    .line 324
    invoke-interface {p1}, Lcom/subgraph/orchid/ConsensusDocument;->getValidAfterTime()Lcom/subgraph/orchid/data/Timestamp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/subgraph/orchid/data/Timestamp;->getTime()J

    move-result-wide v5

    invoke-interface {v0, v5, v6}, Lcom/subgraph/orchid/Descriptor;->setLastListed(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 298
    .end local v0    # "d":Lcom/subgraph/orchid/Descriptor;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "oldRouterByIdentity":Ljava/util/Map;, "Ljava/util/Map<Lcom/subgraph/orchid/data/HexDigest;Lcom/subgraph/orchid/directory/RouterImpl;>;"
    .end local v4    # "status":Lcom/subgraph/orchid/RouterStatus;
    :pswitch_1
    :try_start_5
    sget-object v5, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    const-string v7, "Unable to verify signatures on consensus document, discarding..."

    invoke-virtual {v5, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 299
    monitor-exit v6

    goto/16 :goto_0

    .line 311
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 302
    :pswitch_2
    :try_start_7
    iput-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->consensusWaitingForCertificates:Lcom/subgraph/orchid/ConsensusDocument;

    .line 303
    iget-object v5, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->requiredCertificates:Ljava/util/Set;

    invoke-interface {p1}, Lcom/subgraph/orchid/ConsensusDocument;->getRequiredCertificates()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 304
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    .line 322
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "oldRouterByIdentity":Ljava/util/Map;, "Ljava/util/Map<Lcom/subgraph/orchid/data/HexDigest;Lcom/subgraph/orchid/directory/RouterImpl;>;"
    .restart local v4    # "status":Lcom/subgraph/orchid/RouterStatus;
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 328
    .end local v4    # "status":Lcom/subgraph/orchid/RouterStatus;
    :cond_5
    :try_start_8
    sget-object v5, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loaded "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByIdentity:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " routers from consensus document"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 329
    iput-object p1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    .line 331
    if-nez p2, :cond_6

    .line 332
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->storeCurrentConsensus()V

    .line 334
    :cond_6
    iget-object v5, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->consensusChangedManager:Lcom/subgraph/orchid/events/EventManager;

    new-instance v6, Lcom/subgraph/orchid/directory/DirectoryImpl$3;

    invoke-direct {v6, p0}, Lcom/subgraph/orchid/directory/DirectoryImpl$3;-><init>(Lcom/subgraph/orchid/directory/DirectoryImpl;)V

    invoke-virtual {v5, v6}, Lcom/subgraph/orchid/events/EventManager;->fireEvent(Lcom/subgraph/orchid/events/Event;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public addGuardEntry(Lcom/subgraph/orchid/GuardEntry;)V
    .locals 1
    .param p1, "entry"    # Lcom/subgraph/orchid/GuardEntry;

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->waitUntilLoaded()V

    .line 502
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->stateFile:Lcom/subgraph/orchid/directory/StateFile;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/directory/StateFile;->addGuardEntry(Lcom/subgraph/orchid/GuardEntry;)V

    .line 503
    return-void
.end method

.method public addRouterDescriptors(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/RouterDescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/RouterDescriptor;>;"
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->basicDescriptorCache:Lcom/subgraph/orchid/directory/DescriptorCache;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/directory/DescriptorCache;->addDescriptors(Ljava/util/List;)V

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->needRecalculateMinimumRouterInfo:Z

    .line 284
    return-void
.end method

.method public declared-synchronized addRouterMicrodescriptors(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/RouterMicrodescriptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 402
    .local p1, "microdescriptors":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/RouterMicrodescriptor;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->microdescriptorCache:Lcom/subgraph/orchid/directory/DescriptorCache;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/directory/DescriptorCache;->addDescriptors(Ljava/util/List;)V

    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->needRecalculateMinimumRouterInfo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    monitor-exit p0

    return-void

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->basicDescriptorCache:Lcom/subgraph/orchid/directory/DescriptorCache;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/DescriptorCache;->shutdown()V

    .line 161
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->microdescriptorCache:Lcom/subgraph/orchid/directory/DescriptorCache;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/DescriptorCache;->shutdown()V

    .line 162
    return-void
.end method

.method public createGuardEntryFor(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/GuardEntry;
    .locals 1
    .param p1, "router"    # Lcom/subgraph/orchid/Router;

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->waitUntilLoaded()V

    .line 487
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->stateFile:Lcom/subgraph/orchid/directory/StateFile;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/directory/StateFile;->createGuardEntryFor(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/GuardEntry;

    move-result-object v0

    return-object v0
.end method

.method public getAllRouters()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->waitUntilLoaded()V

    .line 480
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByIdentity:Ljava/util/Map;

    monitor-enter v1

    .line 481
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByIdentity:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBasicDescriptorFromCache(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/RouterDescriptor;
    .locals 1
    .param p1, "descriptorDigest"    # Lcom/subgraph/orchid/data/HexDigest;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->basicDescriptorCache:Lcom/subgraph/orchid/directory/DescriptorCache;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/directory/DescriptorCache;->getDescriptor(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/Descriptor;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/RouterDescriptor;

    return-object v0
.end method

.method public getCurrentConsensusDocument()Lcom/subgraph/orchid/ConsensusDocument;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->currentConsensus:Lcom/subgraph/orchid/ConsensusDocument;

    return-object v0
.end method

.method public getDirectoryAuthorities()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/subgraph/orchid/DirectoryServer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getInstance()Lcom/subgraph/orchid/directory/TrustedAuthorities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getAuthorityServers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGuardEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/GuardEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->waitUntilLoaded()V

    .line 492
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->stateFile:Lcom/subgraph/orchid/directory/StateFile;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/StateFile;->getGuardEntries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMicrodescriptorFromCache(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/RouterMicrodescriptor;
    .locals 1
    .param p1, "descriptorDigest"    # Lcom/subgraph/orchid/data/HexDigest;

    .prologue
    .line 506
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->microdescriptorCache:Lcom/subgraph/orchid/directory/DescriptorCache;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/directory/DescriptorCache;->getDescriptor(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/Descriptor;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/RouterMicrodescriptor;

    return-object v0
.end method

.method public getRandomDirectoryAuthority()Lcom/subgraph/orchid/DirectoryServer;
    .locals 4

    .prologue
    .line 220
    invoke-static {}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getInstance()Lcom/subgraph/orchid/directory/TrustedAuthorities;

    move-result-object v2

    invoke-virtual {v2}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getAuthorityServers()Ljava/util/List;

    move-result-object v1

    .line 221
    .local v1, "servers":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/DirectoryServer;>;"
    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/subgraph/orchid/crypto/TorRandom;->nextInt(I)I

    move-result v0

    .line 222
    .local v0, "idx":I
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/DirectoryServer;

    return-object v2
.end method

.method public getRequiredCertificates()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->requiredCertificates:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getRouterByIdentity(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/Router;
    .locals 2
    .param p1, "identity"    # Lcom/subgraph/orchid/data/HexDigest;

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->waitUntilLoaded()V

    .line 461
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByIdentity:Ljava/util/Map;

    monitor-enter v1

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByIdentity:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/Router;

    monitor-exit v1

    return-object v0

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRouterByName(Ljava/lang/String;)Lcom/subgraph/orchid/Router;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 444
    const-string v3, "Unnamed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 456
    :goto_0
    return-object v2

    .line 447
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x24

    if-ne v3, v4, :cond_1

    .line 449
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/subgraph/orchid/data/HexDigest;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    .line 450
    .local v1, "identity":Lcom/subgraph/orchid/data/HexDigest;
    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/directory/DirectoryImpl;->getRouterByIdentity(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/Router;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 451
    .end local v1    # "identity":Lcom/subgraph/orchid/data/HexDigest;
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 455
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->waitUntilLoaded()V

    .line 456
    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByNickname:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/Router;

    goto :goto_0
.end method

.method public getRouterListByNames(Ljava/util/List;)Ljava/util/List;
    .locals 7
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

    .prologue
    .line 467
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->waitUntilLoaded()V

    .line 468
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v3, "routers":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 470
    .local v1, "n":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/subgraph/orchid/directory/DirectoryImpl;->getRouterByName(Ljava/lang/String;)Lcom/subgraph/orchid/Router;

    move-result-object v2

    .line 471
    .local v2, "r":Lcom/subgraph/orchid/Router;
    if-nez v2, :cond_0

    .line 472
    new-instance v4, Lcom/subgraph/orchid/TorException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find router named: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 473
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 475
    .end local v1    # "n":Ljava/lang/String;
    .end local v2    # "r":Lcom/subgraph/orchid/Router;
    :cond_1
    return-object v3
.end method

.method public declared-synchronized getRoutersWithDownloadableDescriptors()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->waitUntilLoaded()V

    .line 408
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v5, "routers":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    iget-object v7, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->routersByIdentity:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/subgraph/orchid/directory/RouterImpl;

    .line 410
    .local v4, "router":Lcom/subgraph/orchid/directory/RouterImpl;
    invoke-virtual {v4}, Lcom/subgraph/orchid/directory/RouterImpl;->isDescriptorDownloadable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 411
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 407
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "router":Lcom/subgraph/orchid/directory/RouterImpl;
    .end local v5    # "routers":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 414
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "routers":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/Router;>;"
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 415
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/Router;

    .line 416
    .local v0, "a":Lcom/subgraph/orchid/Router;
    iget-object v7, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/subgraph/orchid/crypto/TorRandom;->nextInt(I)I

    move-result v6

    .line 417
    .local v6, "swapIdx":I
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/Router;

    .line 418
    .local v1, "b":Lcom/subgraph/orchid/Router;
    invoke-interface {v5, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 419
    invoke-interface {v5, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 422
    .end local v0    # "a":Lcom/subgraph/orchid/Router;
    .end local v1    # "b":Lcom/subgraph/orchid/Router;
    .end local v6    # "swapIdx":I
    :cond_2
    monitor-exit p0

    return-object v5
.end method

.method public hasPendingConsensus()Z
    .locals 2

    .prologue
    .line 430
    invoke-static {}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getInstance()Lcom/subgraph/orchid/directory/TrustedAuthorities;

    move-result-object v1

    monitor-enter v1

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->consensusWaitingForCertificates:Lcom/subgraph/orchid/ConsensusDocument;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized haveMinimumRouterInfo()Z
    .locals 1

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->needRecalculateMinimumRouterInfo:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->checkMinimumRouterInfo()V

    .line 102
    :cond_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->haveMinimumRouterInfo:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadFromStore()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 124
    sget-object v1, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    const-string v2, "Loading cached network information from disk"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->loadLock:Ljava/lang/Object;

    monitor-enter v2

    .line 127
    :try_start_0
    iget-boolean v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->isLoaded:Z

    if-eqz v1, :cond_0

    .line 128
    monitor-exit v2

    .line 157
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v1}, Lcom/subgraph/orchid/TorConfig;->getUseMicrodescriptors()Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    move-result-object v1

    sget-object v3, Lcom/subgraph/orchid/TorConfig$AutoBoolValue;->FALSE:Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    if-eq v1, v3, :cond_1

    .line 131
    .local v0, "useMicrodescriptors":Z
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->last:J

    .line 132
    sget-object v1, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    const-string v3, "Loading certificates"

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->store:Lcom/subgraph/orchid/DirectoryStore;

    sget-object v3, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->CERTIFICATES:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    invoke-interface {v1, v3}, Lcom/subgraph/orchid/DirectoryStore;->loadCacheFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/DirectoryImpl;->loadCertificates(Ljava/nio/ByteBuffer;)V

    .line 134
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->logElapsed()V

    .line 136
    sget-object v1, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    const-string v3, "Loading consensus"

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 137
    iget-object v3, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->store:Lcom/subgraph/orchid/DirectoryStore;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->CONSENSUS_MICRODESC:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    :goto_2
    invoke-interface {v3, v1}, Lcom/subgraph/orchid/DirectoryStore;->loadCacheFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/DirectoryImpl;->loadConsensus(Ljava/nio/ByteBuffer;)V

    .line 138
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->logElapsed()V

    .line 140
    if-nez v0, :cond_3

    .line 141
    sget-object v1, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    const-string v3, "Loading descriptors"

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->basicDescriptorCache:Lcom/subgraph/orchid/directory/DescriptorCache;

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/DescriptorCache;->initialLoad()V

    .line 147
    :goto_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->needRecalculateMinimumRouterInfo:Z

    .line 148
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->logElapsed()V

    .line 150
    sget-object v1, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    const-string v3, "loading state file"

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->stateFile:Lcom/subgraph/orchid/directory/StateFile;

    iget-object v3, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->store:Lcom/subgraph/orchid/DirectoryStore;

    sget-object v4, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->STATE:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    invoke-interface {v3, v4}, Lcom/subgraph/orchid/DirectoryStore;->loadCacheFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/subgraph/orchid/directory/StateFile;->parseBuffer(Ljava/nio/ByteBuffer;)V

    .line 152
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->logElapsed()V

    .line 154
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->isLoaded:Z

    .line 155
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->loadLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 156
    monitor-exit v2

    goto :goto_0

    .end local v0    # "useMicrodescriptors":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 130
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 137
    .restart local v0    # "useMicrodescriptors":Z
    :cond_2
    :try_start_1
    sget-object v1, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->CONSENSUS:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    goto :goto_2

    .line 144
    :cond_3
    sget-object v1, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    const-string v3, "Loading microdescriptor cache"

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->microdescriptorCache:Lcom/subgraph/orchid/directory/DescriptorCache;

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/DescriptorCache;->initialLoad()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public registerConsensusChangedHandler(Lcom/subgraph/orchid/events/EventHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/subgraph/orchid/events/EventHandler;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->consensusChangedManager:Lcom/subgraph/orchid/events/EventManager;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/events/EventManager;->addListener(Lcom/subgraph/orchid/events/EventHandler;)V

    .line 437
    return-void
.end method

.method public removeGuardEntry(Lcom/subgraph/orchid/GuardEntry;)V
    .locals 1
    .param p1, "entry"    # Lcom/subgraph/orchid/GuardEntry;

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DirectoryImpl;->waitUntilLoaded()V

    .line 497
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->stateFile:Lcom/subgraph/orchid/directory/StateFile;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/directory/StateFile;->removeGuardEntry(Lcom/subgraph/orchid/GuardEntry;)V

    .line 498
    return-void
.end method

.method public storeCertificates()V
    .locals 6

    .prologue
    .line 272
    invoke-static {}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getInstance()Lcom/subgraph/orchid/directory/TrustedAuthorities;

    move-result-object v4

    monitor-enter v4

    .line 273
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v0, "certs":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/KeyCertificate;>;"
    invoke-static {}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getInstance()Lcom/subgraph/orchid/directory/TrustedAuthorities;

    move-result-object v3

    invoke-virtual {v3}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getAuthorityServers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/DirectoryServer;

    .line 275
    .local v1, "ds":Lcom/subgraph/orchid/DirectoryServer;
    invoke-interface {v1}, Lcom/subgraph/orchid/DirectoryServer;->getCertificates()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 278
    .end local v0    # "certs":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/KeyCertificate;>;"
    .end local v1    # "ds":Lcom/subgraph/orchid/DirectoryServer;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 277
    .restart local v0    # "certs":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/KeyCertificate;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->store:Lcom/subgraph/orchid/DirectoryStore;

    sget-object v5, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->CERTIFICATES:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    invoke-interface {v3, v5, v0}, Lcom/subgraph/orchid/DirectoryStore;->writeDocumentList(Lcom/subgraph/orchid/DirectoryStore$CacheFile;Ljava/util/List;)V

    .line 278
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    return-void
.end method

.method public unregisterConsensusChangedHandler(Lcom/subgraph/orchid/events/EventHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/subgraph/orchid/events/EventHandler;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->consensusChangedManager:Lcom/subgraph/orchid/events/EventManager;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/events/EventManager;->removeListener(Lcom/subgraph/orchid/events/EventHandler;)V

    .line 441
    return-void
.end method

.method public waitUntilLoaded()V
    .locals 4

    .prologue
    .line 204
    iget-object v2, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->loadLock:Ljava/lang/Object;

    monitor-enter v2

    .line 205
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->isLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 207
    :try_start_1
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DirectoryImpl;->loadLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v1, Lcom/subgraph/orchid/directory/DirectoryImpl;->logger:Ljava/util/logging/Logger;

    const-string v3, "Thread interrupted while waiting for directory to load from disk"

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 213
    return-void
.end method
