.class public interface abstract Lcom/subgraph/orchid/GuardEntry;
.super Ljava/lang/Object;
.source "GuardEntry.java"


# virtual methods
.method public abstract clearDownSince()V
.end method

.method public abstract getCreatedTime()Ljava/util/Date;
.end method

.method public abstract getDownSince()Ljava/util/Date;
.end method

.method public abstract getIdentity()Ljava/lang/String;
.end method

.method public abstract getLastConnectAttempt()Ljava/util/Date;
.end method

.method public abstract getNickname()Ljava/lang/String;
.end method

.method public abstract getRouterForEntry()Lcom/subgraph/orchid/Router;
.end method

.method public abstract getUnlistedSince()Ljava/util/Date;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract isAdded()Z
.end method

.method public abstract markAsDown()V
.end method

.method public abstract testCurrentlyUsable()Z
.end method
