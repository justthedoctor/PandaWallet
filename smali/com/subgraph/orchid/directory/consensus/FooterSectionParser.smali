.class public Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;
.super Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;
.source "FooterSectionParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/directory/consensus/FooterSectionParser$1;
    }
.end annotation


# instance fields
.field private seenFirstSignature:Z


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;)V
    .locals 1
    .param p1, "parser"    # Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;
    .param p2, "document"    # Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;-><init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->seenFirstSignature:Z

    .line 16
    return-void
.end method

.method private doFirstSignature()V
    .locals 4

    .prologue
    .line 49
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->seenFirstSignature:Z

    .line 50
    iget-object v2, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v2}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->endSignedEntity()V

    .line 51
    iget-object v2, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v2}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->getSignatureMessageDigest()Lcom/subgraph/orchid/crypto/TorMessageDigest;

    move-result-object v0

    .line 52
    .local v0, "messageDigest":Lcom/subgraph/orchid/crypto/TorMessageDigest;
    const-string v2, "directory-signature "

    invoke-virtual {v0, v2}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update(Ljava/lang/String;)V

    .line 53
    iget-object v2, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->getHexDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->setSigningHash(Lcom/subgraph/orchid/data/HexDigest;)V

    .line 55
    iget-object v2, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v2}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->getSignatureMessageDigest256()Lcom/subgraph/orchid/crypto/TorMessageDigest;

    move-result-object v1

    .line 56
    .local v1, "messageDigest256":Lcom/subgraph/orchid/crypto/TorMessageDigest;
    const-string v2, "directory-signature "

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update(Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->getHexDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->setSigningHash256(Lcom/subgraph/orchid/data/HexDigest;)V

    .line 58
    return-void
.end method

.method private processBandwidthWeights()V
    .locals 6

    .prologue
    .line 79
    iget-object v3, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v3}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->argumentsRemaining()I

    move-result v2

    .line 80
    .local v2, "remaining":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 81
    iget-object v3, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v3}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseParameter()Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;

    move-result-object v1

    .line 82
    .local v1, "p":Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;
    iget-object v3, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;->getValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->addBandwidthWeight(Ljava/lang/String;I)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    .end local v1    # "p":Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;
    :cond_0
    return-void
.end method

.method private processSignature()V
    .locals 7

    .prologue
    .line 61
    iget-boolean v5, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->seenFirstSignature:Z

    if-nez v5, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->doFirstSignature()V

    .line 64
    :cond_0
    iget-object v5, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v5}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "s":Ljava/lang/String;
    const/4 v4, 0x0

    .line 67
    .local v4, "useSha256":Z
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x14

    if-ge v5, v6, :cond_1

    .line 68
    const-string v5, "sha256"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 69
    iget-object v5, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v5}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseHexDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    .line 73
    .local v0, "identity":Lcom/subgraph/orchid/data/HexDigest;
    :goto_0
    iget-object v5, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v5}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseHexDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v3

    .line 74
    .local v3, "signingKey":Lcom/subgraph/orchid/data/HexDigest;
    iget-object v5, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v5}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseSignature()Lcom/subgraph/orchid/crypto/TorSignature;

    move-result-object v2

    .line 75
    .local v2, "signature":Lcom/subgraph/orchid/crypto/TorSignature;
    iget-object v5, p0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    new-instance v6, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;

    invoke-direct {v6, v0, v3, v2, v4}, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;-><init>(Lcom/subgraph/orchid/data/HexDigest;Lcom/subgraph/orchid/data/HexDigest;Lcom/subgraph/orchid/crypto/TorSignature;Z)V

    invoke-virtual {v5, v6}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->addSignature(Lcom/subgraph/orchid/directory/consensus/DirectorySignature;)V

    .line 76
    return-void

    .line 71
    .end local v0    # "identity":Lcom/subgraph/orchid/data/HexDigest;
    .end local v2    # "signature":Lcom/subgraph/orchid/crypto/TorSignature;
    .end local v3    # "signingKey":Lcom/subgraph/orchid/data/HexDigest;
    :cond_1
    invoke-static {v1}, Lcom/subgraph/orchid/data/HexDigest;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    .restart local v0    # "identity":Lcom/subgraph/orchid/data/HexDigest;
    goto :goto_0
.end method


# virtual methods
.method getNextStateKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method getSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->FOOTER:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    return-object v0
.end method

.method nextSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->NO_SECTION:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    return-object v0
.end method

.method parseLine(Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;)V
    .locals 2
    .param p1, "keyword"    # Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .prologue
    .line 34
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser$1;->$SwitchMap$com$subgraph$orchid$directory$consensus$DocumentKeyword:[I

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 46
    :goto_0
    return-void

    .line 36
    :pswitch_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->processBandwidthWeights()V

    goto :goto_0

    .line 40
    :pswitch_1
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/FooterSectionParser;->processSignature()V

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
