.class public interface abstract Lcom/google/bitcoin/core/PeerFilterProvider;
.super Ljava/lang/Object;
.source "PeerFilterProvider.java"


# virtual methods
.method public abstract getBloomFilter(IDJ)Lcom/google/bitcoin/core/BloomFilter;
.end method

.method public abstract getBloomFilterElementCount()I
.end method

.method public abstract getEarliestKeyCreationTime()J
.end method

.method public abstract isRequiringUpdateAllBloomFilter()Z
.end method
