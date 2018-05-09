.class final Lde/schildbach/wallet/ui/WalletDisclaimerFragment$BlockchainBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WalletDisclaimerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/WalletDisclaimerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BlockchainBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/WalletDisclaimerFragment;


# direct methods
.method private constructor <init>(Lde/schildbach/wallet/ui/WalletDisclaimerFragment;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment$BlockchainBroadcastReceiver;->this$0:Lde/schildbach/wallet/ui/WalletDisclaimerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lde/schildbach/wallet/ui/WalletDisclaimerFragment;Lde/schildbach/wallet/ui/WalletDisclaimerFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lde/schildbach/wallet/ui/WalletDisclaimerFragment;
    .param p2, "x1"    # Lde/schildbach/wallet/ui/WalletDisclaimerFragment$1;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lde/schildbach/wallet/ui/WalletDisclaimerFragment$BlockchainBroadcastReceiver;-><init>(Lde/schildbach/wallet/ui/WalletDisclaimerFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 159
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment$BlockchainBroadcastReceiver;->this$0:Lde/schildbach/wallet/ui/WalletDisclaimerFragment;

    const-string v1, "download"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->access$302(Lde/schildbach/wallet/ui/WalletDisclaimerFragment;I)I

    .line 161
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletDisclaimerFragment$BlockchainBroadcastReceiver;->this$0:Lde/schildbach/wallet/ui/WalletDisclaimerFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/WalletDisclaimerFragment;->access$400(Lde/schildbach/wallet/ui/WalletDisclaimerFragment;)V

    .line 162
    return-void
.end method
