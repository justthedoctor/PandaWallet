.class final Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;
.super Lcom/google/bitcoin/core/AbstractPeerEventListener;
.source "BlockchainServiceImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/service/BlockchainServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PeerConnectivityListener"
.end annotation


# instance fields
.field private peerCount:I

.field private stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;


# direct methods
.method public constructor <init>(Lde/schildbach/wallet/service/BlockchainServiceImpl;)V
    .locals 2

    .prologue
    .line 226
    iput-object p1, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-direct {p0}, Lcom/google/bitcoin/core/AbstractPeerEventListener;-><init>()V

    .line 223
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 227
    invoke-static {p1}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$500(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lde/schildbach/wallet/Configuration;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/schildbach/wallet/Configuration;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 228
    return-void
.end method

.method private changed(I)V
    .locals 2
    .param p1, "numPeers"    # I

    .prologue
    .line 262
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$400(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener$1;

    invoke-direct {v1, p0, p1}, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener$1;-><init>(Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public onPeerConnected(Lcom/google/bitcoin/core/Peer;I)V
    .locals 0
    .param p1, "peer"    # Lcom/google/bitcoin/core/Peer;
    .param p2, "peerCount"    # I

    .prologue
    .line 242
    iput p2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;->peerCount:I

    .line 243
    invoke-direct {p0, p2}, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;->changed(I)V

    .line 244
    return-void
.end method

.method public onPeerDisconnected(Lcom/google/bitcoin/core/Peer;I)V
    .locals 0
    .param p1, "peer"    # Lcom/google/bitcoin/core/Peer;
    .param p2, "peerCount"    # I

    .prologue
    .line 249
    iput p2, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;->peerCount:I

    .line 250
    invoke-direct {p0, p2}, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;->changed(I)V

    .line 251
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 256
    const-string v0, "connectivity_notification"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;->peerCount:I

    invoke-direct {p0, v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;->changed(I)V

    .line 258
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 234
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$500(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Lde/schildbach/wallet/Configuration;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/schildbach/wallet/Configuration;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 236
    iget-object v0, p0, Lde/schildbach/wallet/service/BlockchainServiceImpl$PeerConnectivityListener;->this$0:Lde/schildbach/wallet/service/BlockchainServiceImpl;

    invoke-static {v0}, Lde/schildbach/wallet/service/BlockchainServiceImpl;->access$600(Lde/schildbach/wallet/service/BlockchainServiceImpl;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 237
    return-void
.end method
