.class public Lcom/subgraph/orchid/directory/downloader/CertificateFetcher;
.super Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;
.source "CertificateFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/subgraph/orchid/directory/downloader/DocumentFetcher",
        "<",
        "Lcom/subgraph/orchid/KeyCertificate;",
        ">;"
    }
.end annotation


# instance fields
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


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "requiredCertificates":Ljava/util/Set;, "Ljava/util/Set<Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;>;"
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/DocumentFetcher;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/subgraph/orchid/directory/downloader/CertificateFetcher;->requiredCertificates:Ljava/util/Set;

    .line 16
    return-void
.end method

.method private getRequiredCertificatesRequestString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/subgraph/orchid/directory/downloader/CertificateFetcher;->requiredCertificates:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;

    .line 26
    .local v1, "rc":Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 27
    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    :cond_0
    invoke-interface {v1}, Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;->getAuthorityIdentity()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/subgraph/orchid/data/HexDigest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-interface {v1}, Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;->getSigningKey()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/subgraph/orchid/data/HexDigest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 33
    .end local v1    # "rc":Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method createParser(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/parsing/DocumentParser;
    .locals 1
    .param p1, "response"    # Ljava/nio/ByteBuffer;
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
    .line 38
    sget-object v0, Lcom/subgraph/orchid/directory/downloader/CertificateFetcher;->PARSER_FACTORY:Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;

    invoke-interface {v0, p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParserFactory;->createKeyCertificateParser(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/parsing/DocumentParser;

    move-result-object v0

    return-object v0
.end method

.method getRequestPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/tor/keys/fp-sk/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/CertificateFetcher;->getRequiredCertificatesRequestString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
