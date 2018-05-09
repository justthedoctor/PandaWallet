.class public abstract Lcom/google/bitcoin/core/ChildMessage;
.super Lcom/google/bitcoin/core/Message;
.source "ChildMessage.java"


# static fields
.field private static final serialVersionUID:J = -0x6a43880da3d4292bL


# instance fields
.field private parent:Lcom/google/bitcoin/core/Message;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/bitcoin/core/Message;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;)V
    .locals 0
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[BI)V
    .locals 0
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "msg"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BI)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[BII)V
    .locals 0
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "msg"    # [B
    .param p3, "offset"    # I
    .param p4, "protocolVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BII)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[BIILcom/google/bitcoin/core/Message;ZZI)V
    .locals 8
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "msg"    # [B
    .param p3, "offset"    # I
    .param p4, "protocolVersion"    # I
    .param p5, "parent"    # Lcom/google/bitcoin/core/Message;
    .param p6, "parseLazy"    # Z
    .param p7, "parseRetain"    # Z
    .param p8, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BIIZZI)V

    .line 45
    iput-object p5, p0, Lcom/google/bitcoin/core/ChildMessage;->parent:Lcom/google/bitcoin/core/Message;

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;[BILcom/google/bitcoin/core/Message;ZZI)V
    .locals 7
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "msg"    # [B
    .param p3, "offset"    # I
    .param p4, "parent"    # Lcom/google/bitcoin/core/Message;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "parseLazy"    # Z
    .param p6, "parseRetain"    # Z
    .param p7, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/bitcoin/core/Message;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BIZZI)V

    .line 55
    iput-object p4, p0, Lcom/google/bitcoin/core/ChildMessage;->parent:Lcom/google/bitcoin/core/Message;

    .line 56
    return-void
.end method


# virtual methods
.method protected adjustLength(I)V
    .locals 1
    .param p1, "adjustment"    # I

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/bitcoin/core/ChildMessage;->adjustLength(II)V

    .line 80
    return-void
.end method

.method protected adjustLength(II)V
    .locals 1
    .param p1, "newArraySize"    # I
    .param p2, "adjustment"    # I

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/google/bitcoin/core/Message;->adjustLength(II)V

    .line 84
    iget-object v0, p0, Lcom/google/bitcoin/core/ChildMessage;->parent:Lcom/google/bitcoin/core/Message;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/bitcoin/core/ChildMessage;->parent:Lcom/google/bitcoin/core/Message;

    invoke-virtual {v0, p1, p2}, Lcom/google/bitcoin/core/Message;->adjustLength(II)V

    .line 86
    :cond_0
    return-void
.end method

.method public setParent(Lcom/google/bitcoin/core/Message;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/bitcoin/core/Message;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/bitcoin/core/ChildMessage;->parent:Lcom/google/bitcoin/core/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/bitcoin/core/ChildMessage;->parent:Lcom/google/bitcoin/core/Message;

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/google/bitcoin/core/ChildMessage;->parent:Lcom/google/bitcoin/core/Message;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Message;->unCache()V

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/google/bitcoin/core/ChildMessage;->parent:Lcom/google/bitcoin/core/Message;

    .line 66
    return-void
.end method

.method protected unCache()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/google/bitcoin/core/Message;->unCache()V

    .line 74
    iget-object v0, p0, Lcom/google/bitcoin/core/ChildMessage;->parent:Lcom/google/bitcoin/core/Message;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/google/bitcoin/core/ChildMessage;->parent:Lcom/google/bitcoin/core/Message;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Message;->unCache()V

    .line 76
    :cond_0
    return-void
.end method
