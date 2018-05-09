.class Lcom/google/bitcoin/core/Peer$PeerListenerRegistration;
.super Lcom/google/bitcoin/utils/ListenerRegistration;
.source "Peer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/Peer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PeerListenerRegistration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/bitcoin/utils/ListenerRegistration",
        "<",
        "Lcom/google/bitcoin/core/PeerEventListener;",
        ">;"
    }
.end annotation


# instance fields
.field callOnDisconnect:Z


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/PeerEventListener;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/bitcoin/core/PeerEventListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/google/bitcoin/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bitcoin/core/Peer$PeerListenerRegistration;->callOnDisconnect:Z

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/PeerEventListener;Ljava/util/concurrent/Executor;Z)V
    .locals 0
    .param p1, "listener"    # Lcom/google/bitcoin/core/PeerEventListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callOnDisconnect"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/google/bitcoin/core/Peer$PeerListenerRegistration;-><init>(Lcom/google/bitcoin/core/PeerEventListener;Ljava/util/concurrent/Executor;)V

    .line 73
    iput-boolean p3, p0, Lcom/google/bitcoin/core/Peer$PeerListenerRegistration;->callOnDisconnect:Z

    .line 74
    return-void
.end method
