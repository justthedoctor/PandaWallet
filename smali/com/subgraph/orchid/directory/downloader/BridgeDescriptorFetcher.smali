.class public Lcom/subgraph/orchid/directory/downloader/BridgeDescriptorFetcher;
.super Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;
.source "BridgeDescriptorFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/subgraph/orchid/directory/downloader/DocumentFetcher",
        "<",
        "Lcom/subgraph/orchid/RouterDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;-><init>()V

    return-void
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
    .line 17
    sget-object v0, Lcom/subgraph/orchid/directory/downloader/BridgeDescriptorFetcher;->PARSER_FACTORY:Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;->createRouterDescriptorParser(Ljava/nio/ByteBuffer;Z)Lcom/subgraph/orchid/directory/parsing/DocumentParser;

    move-result-object v0

    return-object v0
.end method

.method getRequestPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const-string v0, "/tor/server/authority"

    return-object v0
.end method
