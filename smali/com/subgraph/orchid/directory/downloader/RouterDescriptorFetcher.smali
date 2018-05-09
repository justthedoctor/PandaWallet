.class public Lcom/subgraph/orchid/directory/downloader/RouterDescriptorFetcher;
.super Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;
.source "RouterDescriptorFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/subgraph/orchid/directory/downloader/DocumentFetcher",
        "<",
        "Lcom/subgraph/orchid/RouterDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final fingerprints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "fingerprints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/subgraph/orchid/data/HexDigest;>;"
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/downloader/RouterDescriptorFetcher;->fingerprints:Ljava/util/List;

    .line 18
    return-void
.end method

.method private appendFingerprint(Ljava/lang/StringBuilder;Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fp"    # Lcom/subgraph/orchid/data/HexDigest;

    .prologue
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 34
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    :cond_0
    invoke-virtual {p2}, Lcom/subgraph/orchid/data/HexDigest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    return-void
.end method

.method private fingerprintsToRequestString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/subgraph/orchid/directory/downloader/RouterDescriptorFetcher;->fingerprints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/data/HexDigest;

    .line 28
    .local v0, "fp":Lcom/subgraph/orchid/data/HexDigest;
    invoke-direct {p0, v2, v0}, Lcom/subgraph/orchid/directory/downloader/RouterDescriptorFetcher;->appendFingerprint(Ljava/lang/StringBuilder;Lcom/subgraph/orchid/data/HexDigest;)V

    goto :goto_0

    .line 30
    .end local v0    # "fp":Lcom/subgraph/orchid/data/HexDigest;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method createParser(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/parsing/DocumentParser;
    .locals 2
    .param p1, "response"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lcom/subgraph/orchid/directory/parsing/DocumentParser",
            "<",
            "Lcom/subgraph/orchid/RouterDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    sget-object v0, Lcom/subgraph/orchid/directory/downloader/RouterDescriptorFetcher;->PARSER_FACTORY:Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;->createRouterDescriptorParser(Ljava/nio/ByteBuffer;Z)Lcom/subgraph/orchid/directory/parsing/DocumentParser;

    move-result-object v0

    return-object v0
.end method

.method getRequestPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/tor/server/d/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/RouterDescriptorFetcher;->fingerprintsToRequestString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
