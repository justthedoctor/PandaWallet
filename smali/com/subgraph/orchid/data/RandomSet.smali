.class public Lcom/subgraph/orchid/data/RandomSet;
.super Ljava/lang/Object;
.source "RandomSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final random:Ljava/security/SecureRandom;

.field private final set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    .local p0, "this":Lcom/subgraph/orchid/data/RandomSet;, "Lcom/subgraph/orchid/data/RandomSet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/data/RandomSet;->set:Ljava/util/Set;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/data/RandomSet;->list:Ljava/util/List;

    .line 21
    invoke-static {}, Lcom/subgraph/orchid/data/RandomSet;->createRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/data/RandomSet;->random:Ljava/security/SecureRandom;

    .line 22
    return-void
.end method

.method private static createRandom()Ljava/security/SecureRandom;
    .locals 2

    .prologue
    .line 26
    :try_start_0
    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/subgraph/orchid/data/RandomSet;, "Lcom/subgraph/orchid/data/RandomSet<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/subgraph/orchid/data/RandomSet;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/subgraph/orchid/data/RandomSet;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    const/4 v0, 0x1

    .line 37
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 50
    .local p0, "this":Lcom/subgraph/orchid/data/RandomSet;, "Lcom/subgraph/orchid/data/RandomSet<TE;>;"
    iget-object v0, p0, Lcom/subgraph/orchid/data/RandomSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 51
    iget-object v0, p0, Lcom/subgraph/orchid/data/RandomSet;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 42
    .local p0, "this":Lcom/subgraph/orchid/data/RandomSet;, "Lcom/subgraph/orchid/data/RandomSet<TE;>;"
    iget-object v0, p0, Lcom/subgraph/orchid/data/RandomSet;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getRandomElement()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/subgraph/orchid/data/RandomSet;, "Lcom/subgraph/orchid/data/RandomSet<TE;>;"
    iget-object v1, p0, Lcom/subgraph/orchid/data/RandomSet;->random:Ljava/security/SecureRandom;

    iget-object v2, p0, Lcom/subgraph/orchid/data/RandomSet;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    .line 69
    .local v0, "idx":I
    iget-object v1, p0, Lcom/subgraph/orchid/data/RandomSet;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/subgraph/orchid/data/RandomSet;, "Lcom/subgraph/orchid/data/RandomSet<TE;>;"
    iget-object v0, p0, Lcom/subgraph/orchid/data/RandomSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 55
    .local p0, "this":Lcom/subgraph/orchid/data/RandomSet;, "Lcom/subgraph/orchid/data/RandomSet<TE;>;"
    iget-object v0, p0, Lcom/subgraph/orchid/data/RandomSet;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/subgraph/orchid/data/RandomSet;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 57
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lcom/subgraph/orchid/data/RandomSet;, "Lcom/subgraph/orchid/data/RandomSet<TE;>;"
    iget-object v0, p0, Lcom/subgraph/orchid/data/RandomSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
