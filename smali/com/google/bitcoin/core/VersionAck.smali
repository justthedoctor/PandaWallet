.class public Lcom/google/bitcoin/core/VersionAck;
.super Lcom/google/bitcoin/core/EmptyMessage;
.source "VersionAck.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/bitcoin/core/EmptyMessage;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V
    .locals 0
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "payload"    # [B

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/bitcoin/core/EmptyMessage;-><init>()V

    .line 29
    return-void
.end method
