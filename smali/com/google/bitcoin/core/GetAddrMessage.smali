.class public Lcom/google/bitcoin/core/GetAddrMessage;
.super Lcom/google/bitcoin/core/EmptyMessage;
.source "GetAddrMessage.java"


# static fields
.field private static final serialVersionUID:J = 0x561a9725a554cbbfL


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;)V
    .locals 0
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/EmptyMessage;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 28
    return-void
.end method
