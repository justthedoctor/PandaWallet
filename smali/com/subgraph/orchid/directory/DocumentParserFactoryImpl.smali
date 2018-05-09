.class public Lcom/subgraph/orchid/directory/DocumentParserFactoryImpl;
.super Ljava/lang/Object;
.source "DocumentParserFactoryImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createConsensusDocumentParser(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/parsing/DocumentParser;
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lcom/subgraph/orchid/directory/parsing/DocumentParser",
            "<",
            "Lcom/subgraph/orchid/ConsensusDocument;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;

    new-instance v1, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;

    invoke-direct {v1, p1}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;-><init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;)V

    return-object v0
.end method

.method public createKeyCertificateParser(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/parsing/DocumentParser;
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lcom/subgraph/orchid/directory/parsing/DocumentParser",
            "<",
            "Lcom/subgraph/orchid/KeyCertificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;

    new-instance v1, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;

    invoke-direct {v1, p1}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateParser;-><init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;)V

    return-object v0
.end method

.method public createRouterDescriptorParser(Ljava/nio/ByteBuffer;Z)Lcom/subgraph/orchid/directory/parsing/DocumentParser;
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "verifySignatures"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Lcom/subgraph/orchid/directory/parsing/DocumentParser",
            "<",
            "Lcom/subgraph/orchid/RouterDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;

    new-instance v1, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;

    invoke-direct {v1, p1}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-direct {v0, v1, p2}, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;-><init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Z)V

    return-object v0
.end method

.method public createRouterMicrodescriptorParser(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/parsing/DocumentParser;
    .locals 2
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
    .line 28
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 29
    new-instance v0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;-><init>(Ljava/nio/ByteBuffer;)V

    .line 30
    .local v0, "dfp":Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;
    new-instance v1, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/directory/router/RouterMicrodescriptorParser;-><init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;)V

    return-object v1
.end method
