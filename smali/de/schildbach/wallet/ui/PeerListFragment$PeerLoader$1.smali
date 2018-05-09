.class Lde/schildbach/wallet/ui/PeerListFragment$PeerLoader$1;
.super Landroid/content/BroadcastReceiver;
.source "PeerListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/PeerListFragment$PeerLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/PeerListFragment$PeerLoader;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/PeerListFragment$PeerLoader;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lde/schildbach/wallet/ui/PeerListFragment$PeerLoader$1;->this$0:Lde/schildbach/wallet/ui/PeerListFragment$PeerLoader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 276
    :try_start_0
    iget-object v1, p0, Lde/schildbach/wallet/ui/PeerListFragment$PeerLoader$1;->this$0:Lde/schildbach/wallet/ui/PeerListFragment$PeerLoader;

    invoke-virtual {v1}, Lde/schildbach/wallet/ui/PeerListFragment$PeerLoader;->forceLoad()V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 280
    .local v0, "x":Ljava/util/concurrent/RejectedExecutionException;
    invoke-static {}, Lde/schildbach/wallet/ui/PeerListFragment;->access$700()Lorg/slf4j/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejected execution: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lde/schildbach/wallet/ui/PeerListFragment$PeerLoader$1;->this$0:Lde/schildbach/wallet/ui/PeerListFragment$PeerLoader;

    invoke-virtual {v3}, Lde/schildbach/wallet/ui/PeerListFragment$PeerLoader;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method
