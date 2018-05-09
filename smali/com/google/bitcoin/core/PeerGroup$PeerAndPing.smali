.class Lcom/google/bitcoin/core/PeerGroup$PeerAndPing;
.super Ljava/lang/Object;
.source "PeerGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/PeerGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PeerAndPing"
.end annotation


# instance fields
.field peer:Lcom/google/bitcoin/core/Peer;

.field pingTime:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/bitcoin/core/PeerGroup$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/bitcoin/core/PeerGroup$1;

    .prologue
    .line 1500
    invoke-direct {p0}, Lcom/google/bitcoin/core/PeerGroup$PeerAndPing;-><init>()V

    return-void
.end method
