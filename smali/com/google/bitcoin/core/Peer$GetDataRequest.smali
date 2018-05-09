.class Lcom/google/bitcoin/core/Peer$GetDataRequest;
.super Ljava/lang/Object;
.source "Peer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/Peer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetDataRequest"
.end annotation


# instance fields
.field future:Lcom/google/common/util/concurrent/SettableFuture;

.field hash:Lcom/google/bitcoin/core/Sha256Hash;

.field nonce:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/bitcoin/core/Peer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/bitcoin/core/Peer$1;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/google/bitcoin/core/Peer$GetDataRequest;-><init>()V

    return-void
.end method
