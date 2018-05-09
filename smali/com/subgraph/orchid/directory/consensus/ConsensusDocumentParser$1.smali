.class Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$1;
.super Ljava/lang/Object;
.source "ConsensusDocumentParser.java"

# interfaces
.implements Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->createParsingHandler()Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$1;->this$0:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endOfDocument()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$1;->this$0:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;

    invoke-static {v0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->access$100(Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;)Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$1;->this$0:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;

    invoke-static {v1}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->access$000(Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;)Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    move-result-object v1

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->getRawDocument()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->setRawDocumentData(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$1;->this$0:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;

    invoke-static {v0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->access$200(Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;)Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$1;->this$0:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;

    invoke-static {v1}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->access$100(Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;)Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;->documentParsed(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$1;->this$0:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;

    invoke-static {v0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->access$000(Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;)Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    move-result-object v0

    const-string v1, "Finished parsing status document."

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->logDebug(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public parseKeywordLine()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$1;->this$0:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;

    invoke-static {v0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;->access$300(Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;)V

    .line 76
    return-void
.end method
