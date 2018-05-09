.class public Lcom/google/bitcoin/core/GetHeadersMessage;
.super Lcom/google/bitcoin/core/GetBlocksMessage;
.source "GetHeadersMessage.java"


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/util/List;Lcom/google/bitcoin/core/Sha256Hash;)V
    .locals 0
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p3, "stopHash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/NetworkParameters;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            ">;",
            "Lcom/google/bitcoin/core/Sha256Hash;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "locator":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Sha256Hash;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/bitcoin/core/GetBlocksMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/util/List;Lcom/google/bitcoin/core/Sha256Hash;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V
    .locals 0
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/bitcoin/core/GetBlocksMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 53
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 54
    check-cast v0, Lcom/google/bitcoin/core/GetHeadersMessage;

    .line 55
    .local v0, "other":Lcom/google/bitcoin/core/GetHeadersMessage;
    iget-wide v2, v0, Lcom/google/bitcoin/core/GetHeadersMessage;->version:J

    iget-wide v4, p0, Lcom/google/bitcoin/core/GetHeadersMessage;->version:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/bitcoin/core/GetHeadersMessage;->locator:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lcom/google/bitcoin/core/GetHeadersMessage;->locator:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/bitcoin/core/GetHeadersMessage;->locator:Ljava/util/List;

    iget-object v3, v0, Lcom/google/bitcoin/core/GetHeadersMessage;->locator:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/bitcoin/core/GetHeadersMessage;->stopHash:Lcom/google/bitcoin/core/Sha256Hash;

    iget-object v3, v0, Lcom/google/bitcoin/core/GetHeadersMessage;->stopHash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v2, v3}, Lcom/google/bitcoin/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 62
    iget-wide v3, p0, Lcom/google/bitcoin/core/GetHeadersMessage;->version:J

    long-to-int v3, v3

    const-string v4, "getheaders"

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int v1, v3, v4

    .line 63
    .local v1, "hashCode":I
    iget-object v3, p0, Lcom/google/bitcoin/core/GetHeadersMessage;->locator:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Sha256Hash;

    .local v0, "aLocator":Lcom/google/bitcoin/core/Sha256Hash;
    invoke-virtual {v0}, Lcom/google/bitcoin/core/Sha256Hash;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    goto :goto_0

    .line 64
    .end local v0    # "aLocator":Lcom/google/bitcoin/core/Sha256Hash;
    :cond_0
    iget-object v3, p0, Lcom/google/bitcoin/core/GetHeadersMessage;->stopHash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Sha256Hash;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    .line 65
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 39
    .local v0, "b":Ljava/lang/StringBuffer;
    const-string v3, "getheaders: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    iget-object v3, p0, Lcom/google/bitcoin/core/GetHeadersMessage;->locator:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/Sha256Hash;

    .line 41
    .local v1, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    invoke-virtual {v1}, Lcom/google/bitcoin/core/Sha256Hash;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 44
    .end local v1    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
