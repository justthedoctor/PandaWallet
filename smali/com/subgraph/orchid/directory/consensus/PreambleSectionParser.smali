.class public Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;
.super Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;
.source "PreambleSectionParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser$1;
    }
.end annotation


# static fields
.field private static final CURRENT_DOCUMENT_VERSION:I = 0x3


# instance fields
.field private isFirstLine:Z


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;)V
    .locals 1
    .param p1, "parser"    # Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;
    .param p2, "document"    # Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;-><init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->isFirstLine:Z

    .line 18
    return-void
.end method

.method private parseConsensusFlavor()V
    .locals 4

    .prologue
    .line 110
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "flavor":Ljava/lang/String;
    const-string v1, "ns"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    sget-object v2, Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;->NS:Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->setConsensusFlavor(Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;)V

    .line 118
    :goto_0
    return-void

    .line 113
    :cond_0
    const-string v1, "microdesc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    sget-object v2, Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;->MICRODESC:Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->setConsensusFlavor(Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown consensus flavor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->logWarn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseFirstLine(Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;)V
    .locals 4
    .param p1, "keyword"    # Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .prologue
    .line 95
    sget-object v1, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->NETWORK_STATUS_VERSION:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    if-eq p1, v1, :cond_0

    .line 96
    new-instance v1, Lcom/subgraph/orchid/TorParsingException;

    const-string v2, "network-status-version not found at beginning of consensus document as expected."

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseInteger()I

    move-result v0

    .line 100
    .local v0, "documentVersion":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 101
    new-instance v1, Lcom/subgraph/orchid/TorParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected consensus document version number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->argumentsRemaining()I

    move-result v1

    if-lez v1, :cond_2

    .line 104
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->parseConsensusFlavor()V

    .line 106
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->isFirstLine:Z

    .line 107
    return-void
.end method

.method private parseParams()V
    .locals 6

    .prologue
    .line 125
    iget-object v3, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v3}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->argumentsRemaining()I

    move-result v2

    .line 126
    .local v2, "remaining":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 127
    iget-object v3, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v3}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseParameter()Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;

    move-result-object v1

    .line 128
    .local v1, "p":Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;
    iget-object v3, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;->getValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->addParameter(Ljava/lang/String;I)V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "p":Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;
    :cond_0
    return-void
.end method

.method private parseVersions(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "versions"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private processKeyword(Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;)V
    .locals 6
    .param p1, "keyword"    # Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .prologue
    .line 42
    sget-object v3, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser$1;->$SwitchMap$com$subgraph$orchid$directory$consensus$DocumentKeyword:[I

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 44
    :pswitch_0
    new-instance v3, Lcom/subgraph/orchid/TorParsingException;

    const-string v4, "Network status version may only appear on the first line of status document"

    invoke-direct {v3, v4}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 46
    :pswitch_1
    iget-object v3, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v3}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "voteStatus":Ljava/lang/String;
    const-string v3, "consensus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 48
    new-instance v3, Lcom/subgraph/orchid/TorParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected vote-status type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 51
    .end local v2    # "voteStatus":Ljava/lang/String;
    :pswitch_2
    iget-object v3, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    iget-object v4, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v4}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseInteger()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->setConsensusMethod(I)V

    goto :goto_0

    .line 55
    :pswitch_3
    iget-object v3, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    iget-object v4, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v4}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseTimestamp()Lcom/subgraph/orchid/data/Timestamp;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->setValidAfter(Lcom/subgraph/orchid/data/Timestamp;)V

    goto :goto_0

    .line 59
    :pswitch_4
    iget-object v3, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    iget-object v4, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v4}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseTimestamp()Lcom/subgraph/orchid/data/Timestamp;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->setFreshUntil(Lcom/subgraph/orchid/data/Timestamp;)V

    goto :goto_0

    .line 63
    :pswitch_5
    iget-object v3, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    iget-object v4, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v4}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseTimestamp()Lcom/subgraph/orchid/data/Timestamp;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->setValidUntil(Lcom/subgraph/orchid/data/Timestamp;)V

    goto :goto_0

    .line 67
    :pswitch_6
    iget-object v3, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    iget-object v4, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v4}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseInteger()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->setVoteDelaySeconds(I)V

    .line 68
    iget-object v3, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    iget-object v4, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v4}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseInteger()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->setDistDelaySeconds(I)V

    goto :goto_0

    .line 72
    :pswitch_7
    iget-object v3, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v3}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->parseVersions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    .local v1, "version":Ljava/lang/String;
    iget-object v3, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    invoke-virtual {v3, v1}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->addClientVersion(Ljava/lang/String;)V

    goto :goto_1

    .line 76
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "version":Ljava/lang/String;
    :pswitch_8
    iget-object v3, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v3}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->parseVersions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 77
    .restart local v1    # "version":Ljava/lang/String;
    iget-object v3, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    invoke-virtual {v3, v1}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->addServerVersion(Ljava/lang/String;)V

    goto :goto_2

    .line 80
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "version":Ljava/lang/String;
    :goto_3
    :pswitch_9
    iget-object v3, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v3}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->argumentsRemaining()I

    move-result v3

    if-lez v3, :cond_0

    .line 81
    iget-object v3, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    iget-object v4, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v4}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->addKnownFlag(Ljava/lang/String;)V

    goto :goto_3

    .line 85
    :pswitch_a
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->parseParams()V

    goto/16 :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method getNextStateKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "dir-source"

    return-object v0
.end method

.method getSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    return-object v0
.end method

.method nextSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->AUTHORITY:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    return-object v0
.end method

.method parseLine(Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;)V
    .locals 1
    .param p1, "keyword"    # Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->isFirstLine:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->parseFirstLine(Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;)V

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/consensus/PreambleSectionParser;->processKeyword(Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;)V

    goto :goto_0
.end method
