.class public interface abstract Lcom/subgraph/orchid/Descriptor;
.super Ljava/lang/Object;
.source "Descriptor.java"

# interfaces
.implements Lcom/subgraph/orchid/Document;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/Descriptor$CacheLocation;
    }
.end annotation


# virtual methods
.method public abstract exitPolicyAccepts(I)Z
.end method

.method public abstract exitPolicyAccepts(Lcom/subgraph/orchid/data/IPv4Address;I)Z
.end method

.method public abstract getAddress()Lcom/subgraph/orchid/data/IPv4Address;
.end method

.method public abstract getBodyLength()I
.end method

.method public abstract getCacheLocation()Lcom/subgraph/orchid/Descriptor$CacheLocation;
.end method

.method public abstract getDescriptorDigest()Lcom/subgraph/orchid/data/HexDigest;
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

.method public abstract getLastListed()J
.end method

.method public abstract getNTorOnionKey()[B
.end method

.method public abstract getOnionKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
.end method

.method public abstract getRouterPort()I
.end method

.method public abstract setCacheLocation(Lcom/subgraph/orchid/Descriptor$CacheLocation;)V
.end method

.method public abstract setLastListed(J)V
.end method
