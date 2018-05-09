.class public abstract Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;
.super Ljava/lang/Object;
.source "ConsensusDocumentSectionParser.java"


# instance fields
.field protected final document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

.field protected final fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;)V
    .locals 0
    .param p1, "parser"    # Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;
    .param p2, "document"    # Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    .line 14
    iput-object p2, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;->document:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    .line 15
    return-void
.end method


# virtual methods
.method abstract getNextStateKeyword()Ljava/lang/String;
.end method

.method abstract getSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
.end method

.method abstract nextSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
.end method

.method parseKeywordLine()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
    .locals 3

    .prologue
    .line 18
    iget-object v2, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v2}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->getCurrentKeyword()Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "keywordString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;->getNextStateKeyword()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;->getNextStateKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;->nextSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    move-result-object v2

    .line 31
    :goto_0
    return-object v2

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;->getSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->findKeyword(Ljava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;)Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    move-result-object v0

    .line 28
    .local v0, "keyword":Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;
    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    invoke-virtual {v0, v2}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 29
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;->parseLine(Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;)V

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentSectionParser;->getSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    move-result-object v2

    goto :goto_0
.end method

.method abstract parseLine(Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;)V
.end method
