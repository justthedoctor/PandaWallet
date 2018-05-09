.class Lcom/google/bitcoin/kits/WalletAppKit$1;
.super Lcom/google/common/util/concurrent/Service$Listener;
.source "WalletAppKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/kits/WalletAppKit;->startUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/kits/WalletAppKit;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/kits/WalletAppKit;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/google/bitcoin/kits/WalletAppKit$1;->this$0:Lcom/google/bitcoin/kits/WalletAppKit;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/Service$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "from"    # Lcom/google/common/util/concurrent/Service$State;
    .param p2, "failure"    # Ljava/lang/Throwable;

    .prologue
    .line 267
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public running()V
    .locals 2

    .prologue
    .line 261
    iget-object v1, p0, Lcom/google/bitcoin/kits/WalletAppKit$1;->this$0:Lcom/google/bitcoin/kits/WalletAppKit;

    iget-object v1, v1, Lcom/google/bitcoin/kits/WalletAppKit;->downloadListener:Lcom/google/bitcoin/core/PeerEventListener;

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/bitcoin/core/DownloadListener;

    invoke-direct {v0}, Lcom/google/bitcoin/core/DownloadListener;-><init>()V

    .line 262
    .local v0, "l":Lcom/google/bitcoin/core/PeerEventListener;
    :goto_0
    iget-object v1, p0, Lcom/google/bitcoin/kits/WalletAppKit$1;->this$0:Lcom/google/bitcoin/kits/WalletAppKit;

    iget-object v1, v1, Lcom/google/bitcoin/kits/WalletAppKit;->vPeerGroup:Lcom/google/bitcoin/core/PeerGroup;

    invoke-virtual {v1, v0}, Lcom/google/bitcoin/core/PeerGroup;->startBlockChainDownload(Lcom/google/bitcoin/core/PeerEventListener;)V

    .line 263
    return-void

    .line 261
    .end local v0    # "l":Lcom/google/bitcoin/core/PeerEventListener;
    :cond_0
    iget-object v1, p0, Lcom/google/bitcoin/kits/WalletAppKit$1;->this$0:Lcom/google/bitcoin/kits/WalletAppKit;

    iget-object v0, v1, Lcom/google/bitcoin/kits/WalletAppKit;->downloadListener:Lcom/google/bitcoin/core/PeerEventListener;

    goto :goto_0
.end method
