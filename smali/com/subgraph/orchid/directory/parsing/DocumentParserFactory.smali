.class public interface abstract Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;
.super Ljava/lang/Object;
.source "DocumentParserFactory.java"


# virtual methods
.method public abstract createConsensusDocumentParser(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/parsing/DocumentParser;
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
.end method

.method public abstract createKeyCertificateParser(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/parsing/DocumentParser;
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
.end method

.method public abstract createRouterDescriptorParser(Ljava/nio/ByteBuffer;Z)Lcom/subgraph/orchid/directory/parsing/DocumentParser;
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
.end method

.method public abstract createRouterMicrodescriptorParser(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/parsing/DocumentParser;
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
.end method
