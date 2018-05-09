.class final Lde/schildbach/wallet/ui/WalletBalanceFragment$BlockchainBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WalletBalanceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/WalletBalanceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BlockchainBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/WalletBalanceFragment;


# direct methods
.method private constructor <init>(Lde/schildbach/wallet/ui/WalletBalanceFragment;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment$BlockchainBroadcastReceiver;->this$0:Lde/schildbach/wallet/ui/WalletBalanceFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lde/schildbach/wallet/ui/WalletBalanceFragment;Lde/schildbach/wallet/ui/WalletBalanceFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lde/schildbach/wallet/ui/WalletBalanceFragment;
    .param p2, "x1"    # Lde/schildbach/wallet/ui/WalletBalanceFragment$1;

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lde/schildbach/wallet/ui/WalletBalanceFragment$BlockchainBroadcastReceiver;-><init>(Lde/schildbach/wallet/ui/WalletBalanceFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 264
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment$BlockchainBroadcastReceiver;->this$0:Lde/schildbach/wallet/ui/WalletBalanceFragment;

    const-string v1, "download"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/WalletBalanceFragment;->access$102(Lde/schildbach/wallet/ui/WalletBalanceFragment;I)I

    .line 265
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment$BlockchainBroadcastReceiver;->this$0:Lde/schildbach/wallet/ui/WalletBalanceFragment;

    const-string v0, "best_chain_date"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    invoke-static {v1, v0}, Lde/schildbach/wallet/ui/WalletBalanceFragment;->access$202(Lde/schildbach/wallet/ui/WalletBalanceFragment;Ljava/util/Date;)Ljava/util/Date;

    .line 266
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment$BlockchainBroadcastReceiver;->this$0:Lde/schildbach/wallet/ui/WalletBalanceFragment;

    const-string v1, "replaying"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/WalletBalanceFragment;->access$302(Lde/schildbach/wallet/ui/WalletBalanceFragment;Z)Z

    .line 268
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment$BlockchainBroadcastReceiver;->this$0:Lde/schildbach/wallet/ui/WalletBalanceFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/WalletBalanceFragment;->access$400(Lde/schildbach/wallet/ui/WalletBalanceFragment;)V

    .line 269
    return-void
.end method
