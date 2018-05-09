.class public interface abstract Lcom/subgraph/orchid/ConsensusDocument;
.super Ljava/lang/Object;
.source "ConsensusDocument.java"

# interfaces
.implements Lcom/subgraph/orchid/Document;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;,
        Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;,
        Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;
    }
.end annotation


# virtual methods
.method public abstract getBandwidthWeight(Ljava/lang/String;)I
.end method

.method public abstract getCircWindowParameter()I
.end method

.method public abstract getClientVersions()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConsensusMethod()I
.end method

.method public abstract getDistSeconds()I
.end method

.method public abstract getFlavor()Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;
.end method

.method public abstract getFreshUntilTime()Lcom/subgraph/orchid/data/Timestamp;
.end method

.method public abstract getRequiredCertificates()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRouterStatusEntries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/RouterStatus;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServerVersions()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSigningHash()Lcom/subgraph/orchid/data/HexDigest;
.end method

.method public abstract getSigningHash256()Lcom/subgraph/orchid/data/HexDigest;
.end method

.method public abstract getUseNTorHandshake()Z
.end method

.method public abstract getValidAfterTime()Lcom/subgraph/orchid/data/Timestamp;
.end method

.method public abstract getValidUntilTime()Lcom/subgraph/orchid/data/Timestamp;
.end method

.method public abstract getVoteSeconds()I
.end method

.method public abstract getWeightScaleParameter()I
.end method

.method public abstract isLive()Z
.end method

.method public abstract verifySignatures()Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;
.end method
