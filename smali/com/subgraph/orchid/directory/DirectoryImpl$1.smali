.class final Lcom/subgraph/orchid/directory/DirectoryImpl$1;
.super Lcom/subgraph/orchid/directory/DescriptorCache;
.source "DirectoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/directory/DirectoryImpl;->createMicrodescriptorCache(Lcom/subgraph/orchid/DirectoryStore;)Lcom/subgraph/orchid/directory/DescriptorCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/subgraph/orchid/directory/DescriptorCache",
        "<",
        "Lcom/subgraph/orchid/RouterMicrodescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/DirectoryStore;Lcom/subgraph/orchid/DirectoryStore$CacheFile;Lcom/subgraph/orchid/DirectoryStore$CacheFile;)V
    .locals 0
    .param p1, "x0"    # Lcom/subgraph/orchid/DirectoryStore;
    .param p2, "x1"    # Lcom/subgraph/orchid/DirectoryStore$CacheFile;
    .param p3, "x2"    # Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/subgraph/orchid/directory/DescriptorCache;-><init>(Lcom/subgraph/orchid/DirectoryStore;Lcom/subgraph/orchid/DirectoryStore$CacheFile;Lcom/subgraph/orchid/DirectoryStore$CacheFile;)V

    return-void
.end method


# virtual methods
.method protected createDocumentParser(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/parsing/DocumentParser;
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lcom/subgraph/orchid/directory/parsing/DocumentParser",
            "<",
            "Lcom/subgraph/orchid/RouterMicrodescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {}, Lcom/subgraph/orchid/directory/DirectoryImpl;->access$000()Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;->createRouterMicrodescriptorParser(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/parsing/DocumentParser;

    move-result-object v0

    return-object v0
.end method
