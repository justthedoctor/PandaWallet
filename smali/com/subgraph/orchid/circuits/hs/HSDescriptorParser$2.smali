.class Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser$2;
.super Ljava/lang/Object;
.source "HSDescriptorParser.java"

# interfaces
.implements Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->processIntroductionPoints()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler",
        "<",
        "Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser$2;->this$0:Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public documentInvalid(Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;Ljava/lang/String;)V
    .locals 2
    .param p1, "document"    # Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-static {}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Invalid introduction point received"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public bridge synthetic documentInvalid(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 119
    check-cast p1, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser$2;->documentInvalid(Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;Ljava/lang/String;)V

    return-void
.end method

.method public documentParsed(Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;)V
    .locals 3
    .param p1, "document"    # Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    .prologue
    .line 122
    invoke-static {}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding intro point "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->getIdentity()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser$2;->this$0:Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;

    invoke-static {v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->access$200(Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;)Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;->addIntroductionPoint(Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;)V

    .line 124
    return-void
.end method

.method public bridge synthetic documentParsed(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 119
    check-cast p1, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser$2;->documentParsed(Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;)V

    return-void
.end method

.method public parsingError(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing introduction points: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 132
    return-void
.end method
