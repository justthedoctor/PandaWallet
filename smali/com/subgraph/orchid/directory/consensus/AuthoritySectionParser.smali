.class public Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;
.super Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;
.source "AuthoritySectionParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser$1;
    }
.end annotation


# instance fields
.field private currentEntry:Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;)V
    .locals 1
    .param p1, "parser"    # Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;
    .param p2, "document"    # Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;-><init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;)V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;

    .line 12
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->startEntry()V

    .line 13
    return-void
.end method

.method private addCurrentEntry()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->addVoteAuthorityEntry(Lcom/subgraph/orchid/VoteAuthorityEntry;)V

    .line 39
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->startEntry()V

    .line 40
    return-void
.end method

.method private parseDirSource()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->setNickname(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseHexDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->setIdentity(Lcom/subgraph/orchid/data/HexDigest;)V

    .line 45
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->setHostname(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->setAddress(Lcom/subgraph/orchid/data/IPv4Address;)V

    .line 47
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parsePort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->setDirectoryPort(I)V

    .line 48
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parsePort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->setRouterPort(I)V

    .line 49
    return-void
.end method

.method private startEntry()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;

    invoke-direct {v0}, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;

    .line 35
    return-void
.end method


# virtual methods
.method getNextStateKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "r"

    return-object v0
.end method

.method getSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->AUTHORITY:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    return-object v0
.end method

.method nextSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->ROUTER_STATUS:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    return-object v0
.end method

.method parseLine(Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;)V
    .locals 2
    .param p1, "keyword"    # Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .prologue
    .line 17
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser$1;->$SwitchMap$com$subgraph$orchid$directory$consensus$DocumentKeyword:[I

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 31
    :goto_0
    return-void

    .line 19
    :pswitch_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->parseDirSource()V

    goto :goto_0

    .line 22
    :pswitch_1
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseConcatenatedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->setContact(Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :pswitch_2
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->currentEntry:Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseHexDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/VoteAuthorityEntryImpl;->setVoteDigest(Lcom/subgraph/orchid/data/HexDigest;)V

    .line 26
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;->addCurrentEntry()V

    goto :goto_0

    .line 17
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
