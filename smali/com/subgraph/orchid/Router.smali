.class public interface abstract Lcom/subgraph/orchid/Router;
.super Ljava/lang/Object;
.source "Router.java"


# virtual methods
.method public abstract exitPolicyAccepts(I)Z
.end method

.method public abstract exitPolicyAccepts(Lcom/subgraph/orchid/data/IPv4Address;I)Z
.end method

.method public abstract getAddress()Lcom/subgraph/orchid/data/IPv4Address;
.end method

.method public abstract getAverageBandwidth()I
.end method

.method public abstract getBurstBandwidth()I
.end method

.method public abstract getCountryCode()Ljava/lang/String;
.end method

.method public abstract getCurrentDescriptor()Lcom/subgraph/orchid/Descriptor;
.end method

.method public abstract getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;
.end method

.method public abstract getDirectoryPort()I
.end method

.method public abstract getEstimatedBandwidth()I
.end method

.method public abstract getFamilyMembers()Ljava/util/Set;
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

.method public abstract getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;
.end method

.method public abstract getIdentityKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
.end method

.method public abstract getMeasuredBandwidth()I
.end method

.method public abstract getMicrodescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;
.end method

.method public abstract getNTorOnionKey()[B
.end method

.method public abstract getNickname()Ljava/lang/String;
.end method

.method public abstract getObservedBandwidth()I
.end method

.method public abstract getOnionKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
.end method

.method public abstract getOnionPort()I
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract hasBandwidth()Z
.end method

.method public abstract isBadExit()Z
.end method

.method public abstract isDescriptorDownloadable()Z
.end method

.method public abstract isExit()Z
.end method

.method public abstract isFast()Z
.end method

.method public abstract isHSDirectory()Z
.end method

.method public abstract isHibernating()Z
.end method

.method public abstract isPossibleGuard()Z
.end method

.method public abstract isRunning()Z
.end method

.method public abstract isStable()Z
.end method

.method public abstract isValid()Z
.end method
