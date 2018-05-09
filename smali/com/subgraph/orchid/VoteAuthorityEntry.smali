.class public interface abstract Lcom/subgraph/orchid/VoteAuthorityEntry;
.super Ljava/lang/Object;
.source "VoteAuthorityEntry.java"


# virtual methods
.method public abstract getAddress()Lcom/subgraph/orchid/data/IPv4Address;
.end method

.method public abstract getContact()Ljava/lang/String;
.end method

.method public abstract getDirectoryPort()I
.end method

.method public abstract getHostname()Ljava/lang/String;
.end method

.method public abstract getIdentity()Lcom/subgraph/orchid/data/HexDigest;
.end method

.method public abstract getNickname()Ljava/lang/String;
.end method

.method public abstract getRouterPort()I
.end method

.method public abstract getSignatures()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/directory/consensus/DirectorySignature;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVoteDigest()Lcom/subgraph/orchid/data/HexDigest;
.end method
