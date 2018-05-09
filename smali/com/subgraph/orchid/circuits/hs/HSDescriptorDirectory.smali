.class public Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;
.super Ljava/lang/Object;
.source "HSDescriptorDirectory.java"


# instance fields
.field private final descriptorId:Lcom/subgraph/orchid/data/HexDigest;

.field private final directory:Lcom/subgraph/orchid/Router;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/data/HexDigest;Lcom/subgraph/orchid/Router;)V
    .locals 0
    .param p1, "descriptorId"    # Lcom/subgraph/orchid/data/HexDigest;
    .param p2, "directory"    # Lcom/subgraph/orchid/Router;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;->descriptorId:Lcom/subgraph/orchid/data/HexDigest;

    .line 13
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;->directory:Lcom/subgraph/orchid/Router;

    .line 14
    return-void
.end method


# virtual methods
.method getDescriptorId()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;->descriptorId:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method getDirectory()Lcom/subgraph/orchid/Router;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;->directory:Lcom/subgraph/orchid/Router;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;->descriptorId:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorDirectory;->directory:Lcom/subgraph/orchid/Router;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
