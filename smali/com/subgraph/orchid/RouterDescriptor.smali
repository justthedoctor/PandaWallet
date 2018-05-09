.class public interface abstract Lcom/subgraph/orchid/RouterDescriptor;
.super Ljava/lang/Object;
.source "RouterDescriptor.java"

# interfaces
.implements Lcom/subgraph/orchid/Descriptor;


# virtual methods
.method public abstract allowsSingleHopExits()Z
.end method

.method public abstract cachesExtraInfo()Z
.end method

.method public abstract getAverageBandwidth()I
.end method

.method public abstract getBurstBandwidth()I
.end method

.method public abstract getContact()Ljava/lang/String;
.end method

.method public abstract getDirectoryPort()I
.end method

.method public abstract getExitPolicy()Lcom/subgraph/orchid/data/exitpolicy/ExitPolicy;
.end method

.method public abstract getExtraInfoDigest()Lcom/subgraph/orchid/data/HexDigest;
.end method

.method public abstract getFingerprint()Lcom/subgraph/orchid/data/HexDigest;
.end method

.method public abstract getIdentityKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
.end method

.method public abstract getNickname()Ljava/lang/String;
.end method

.method public abstract getObservedBandwidth()I
.end method

.method public abstract getPlatform()Ljava/lang/String;
.end method

.method public abstract getPublishedTime()Lcom/subgraph/orchid/data/Timestamp;
.end method

.method public abstract getUptime()I
.end method

.method public abstract isHibernating()Z
.end method

.method public abstract isHiddenServiceDirectory()Z
.end method

.method public abstract isNewerThan(Lcom/subgraph/orchid/RouterDescriptor;)Z
.end method

.method public abstract supportsEventDNS()Z
.end method
