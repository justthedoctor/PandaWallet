.class Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader$DescriptorParseResult;
.super Ljava/lang/Object;
.source "HSDescriptorDownloader.java"

# interfaces
.implements Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DescriptorParseResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler",
        "<",
        "Lcom/subgraph/orchid/circuits/hs/HSDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field dd:Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;

.field descriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;)V
    .locals 0
    .param p1, "dd"    # Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader$DescriptorParseResult;->dd:Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;

    .line 118
    return-void
.end method


# virtual methods
.method public documentInvalid(Lcom/subgraph/orchid/circuits/hs/HSDescriptor;Ljava/lang/String;)V
    .locals 3
    .param p1, "document"    # Lcom/subgraph/orchid/circuits/hs/HSDescriptor;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-static {}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid HS descriptor document received from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader$DescriptorParseResult;->dd:Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;->getDirectory()Lcom/subgraph/orchid/Router;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for descriptor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader$DescriptorParseResult;->dd:Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;->getDescriptorId()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public bridge synthetic documentInvalid(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 112
    check-cast p1, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader$DescriptorParseResult;->documentInvalid(Lcom/subgraph/orchid/circuits/hs/HSDescriptor;Ljava/lang/String;)V

    return-void
.end method

.method public documentParsed(Lcom/subgraph/orchid/circuits/hs/HSDescriptor;)V
    .locals 0
    .param p1, "document"    # Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader$DescriptorParseResult;->descriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    .line 125
    return-void
.end method

.method public bridge synthetic documentParsed(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 112
    check-cast p1, Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader$DescriptorParseResult;->documentParsed(Lcom/subgraph/orchid/circuits/hs/HSDescriptor;)V

    return-void
.end method

.method getDescriptor()Lcom/subgraph/orchid/circuits/hs/HSDescriptor;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader$DescriptorParseResult;->descriptor:Lcom/subgraph/orchid/circuits/hs/HSDescriptor;

    return-object v0
.end method

.method public parsingError(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-static {}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse HS descriptor document received from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader$DescriptorParseResult;->dd:Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;->getDirectory()Lcom/subgraph/orchid/Router;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for descriptor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDownloader$DescriptorParseResult;->dd:Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;

    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;->getDescriptorId()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 133
    return-void
.end method
