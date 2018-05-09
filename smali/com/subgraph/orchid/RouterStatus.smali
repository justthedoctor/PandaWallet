.class public interface abstract Lcom/subgraph/orchid/RouterStatus;
.super Ljava/lang/Object;
.source "RouterStatus.java"


# virtual methods
.method public abstract getAddress()Lcom/subgraph/orchid/data/IPv4Address;
.end method

.method public abstract getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;
.end method

.method public abstract getDirectoryPort()I
.end method

.method public abstract getEstimatedBandwidth()I
.end method

.method public abstract getExitPorts()Lcom/subgraph/orchid/data/exitpolicy/ExitPorts;
.end method

.method public abstract getIdentity()Lcom/subgraph/orchid/data/HexDigest;
.end method

.method public abstract getMeasuredBandwidth()I
.end method

.method public abstract getMicrodescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;
.end method

.method public abstract getNickname()Ljava/lang/String;
.end method

.method public abstract getPublicationTime()Lcom/subgraph/orchid/data/Timestamp;
.end method

.method public abstract getRouterPort()I
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract hasBandwidth()Z
.end method

.method public abstract hasFlag(Ljava/lang/String;)Z
.end method

.method public abstract isDirectory()Z
.end method
