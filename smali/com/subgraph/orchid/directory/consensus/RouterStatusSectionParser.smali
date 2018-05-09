.class public Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;
.super Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;
.source "RouterStatusSectionParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser$1;
    }
.end annotation


# instance fields
.field private currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;


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

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    .line 16
    return-void
.end method

.method private addCurrentEntry()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->assertCurrentEntry()V

    .line 53
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->addRouterStatusEntry(Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    .line 55
    return-void
.end method

.method private assertCurrentEntry()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/subgraph/orchid/TorParsingException;

    const-string v1, "Router status entry must begin with an \'r\' line"

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    return-void
.end method

.method private parseBandwidth()V
    .locals 4

    .prologue
    .line 86
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->argumentsRemaining()I

    move-result v1

    if-lez v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 89
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v2, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-interface {v2, v3}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseInteger(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->parseBandwidthItem(Ljava/lang/String;I)V

    goto :goto_0

    .line 91
    .end local v0    # "parts":[Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->getFlavor()Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    move-result-object v1

    sget-object v2, Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;->MICRODESC:Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    if-ne v1, v2, :cond_2

    .line 92
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->addCurrentEntry()V

    .line 94
    :cond_2
    return-void
.end method

.method private parseBandwidthItem(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 97
    const-string v0, "Bandwidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    invoke-virtual {v0, p2}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->setEstimatedBandwidth(I)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const-string v0, "Measured"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    invoke-virtual {v0, p2}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->setMeasuredBandwidth(I)V

    goto :goto_0
.end method

.method private parseBase64Digest()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseBase64Data()[B

    move-result-object v0

    invoke-static {v0}, Lcom/subgraph/orchid/data/HexDigest;->createFromDigestBytes([B)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    return-object v0
.end method

.method private parseFirstLine()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lcom/subgraph/orchid/TorParsingException;

    const-string v1, "Unterminated router status entry."

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    invoke-direct {v0}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    .line 61
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->setNickname(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->parseBase64Digest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->setIdentity(Lcom/subgraph/orchid/data/HexDigest;)V

    .line 63
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->getFlavor()Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    move-result-object v0

    sget-object v1, Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;->MICRODESC:Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    if-eq v0, v1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->parseBase64Digest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->setDigest(Lcom/subgraph/orchid/data/HexDigest;)V

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseTimestamp()Lcom/subgraph/orchid/data/Timestamp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->setPublicationTime(Lcom/subgraph/orchid/data/Timestamp;)V

    .line 67
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->setAddress(Lcom/subgraph/orchid/data/IPv4Address;)V

    .line 68
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parsePort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->setRouterPort(I)V

    .line 69
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parsePort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->setDirectoryPort(I)V

    .line 70
    return-void
.end method

.method private parseFlags()V
    .locals 2

    .prologue
    .line 77
    :goto_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->argumentsRemaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->addFlag(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method

.method private parseMicrodescriptorHash()V
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 117
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->getFlavor()Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    move-result-object v1

    sget-object v2, Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;->MICRODESC:Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    if-eq v1, v2, :cond_0

    .line 118
    new-instance v1, Lcom/subgraph/orchid/TorParsingException;

    const-string v2, "\'m\' line is invalid unless consensus flavor is microdesc"

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseBase64Data()[B

    move-result-object v0

    .line 121
    .local v0, "hashBytes":[B
    array-length v1, v0

    if-eq v1, v4, :cond_1

    .line 122
    new-instance v1, Lcom/subgraph/orchid/TorParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'m\' line has incorrect digest size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    invoke-static {v0}, Lcom/subgraph/orchid/data/HexDigest;->createFromDigestBytes([B)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->setMicrodescriptorDigest(Lcom/subgraph/orchid/data/HexDigest;)V

    .line 125
    return-void
.end method

.method private parsePortList()V
    .locals 3

    .prologue
    .line 104
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->getFlavor()Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    move-result-object v1

    sget-object v2, Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;->MICRODESC:Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    if-ne v1, v2, :cond_0

    .line 105
    new-instance v1, Lcom/subgraph/orchid/TorParsingException;

    const-string v2, "\'p\' line does not appear in consensus flavor \'microdesc\'"

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "arg":Ljava/lang/String;
    const-string v1, "accept"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v2}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->setAcceptedPorts(Ljava/lang/String;)V

    .line 113
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->addCurrentEntry()V

    .line 114
    return-void

    .line 110
    :cond_2
    const-string v1, "reject"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v2}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->setRejectedPorts(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseVersion()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseConcatenatedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;->setVersion(Ljava/lang/String;)V

    .line 83
    return-void
.end method


# virtual methods
.method getNextStateKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, "directory-footer"

    return-object v0
.end method

.method getSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->ROUTER_STATUS:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    return-object v0
.end method

.method nextSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->FOOTER:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    return-object v0
.end method

.method parseLine(Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;)V
    .locals 2
    .param p1, "keyword"    # Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .prologue
    .line 20
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->R:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->assertCurrentEntry()V

    .line 22
    :cond_0
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser$1;->$SwitchMap$com$subgraph$orchid$directory$consensus$DocumentKeyword:[I

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 44
    :goto_0
    return-void

    .line 24
    :pswitch_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->parseFirstLine()V

    goto :goto_0

    .line 27
    :pswitch_1
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->parseFlags()V

    goto :goto_0

    .line 30
    :pswitch_2
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->parseVersion()V

    goto :goto_0

    .line 33
    :pswitch_3
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->parseBandwidth()V

    goto :goto_0

    .line 36
    :pswitch_4
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->parsePortList()V

    goto :goto_0

    .line 39
    :pswitch_5
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/RouterStatusSectionParser;->parseMicrodescriptorHash()V

    goto :goto_0

    .line 22
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
