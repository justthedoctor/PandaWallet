.class final Lde/schildbach/wallet/ui/ExchangeRatesFragment$BlockchainBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExchangeRatesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/ExchangeRatesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BlockchainBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/ExchangeRatesFragment;


# direct methods
.method private constructor <init>(Lde/schildbach/wallet/ui/ExchangeRatesFragment;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$BlockchainBroadcastReceiver;->this$0:Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lde/schildbach/wallet/ui/ExchangeRatesFragment;Lde/schildbach/wallet/ui/ExchangeRatesFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lde/schildbach/wallet/ui/ExchangeRatesFragment;
    .param p2, "x1"    # Lde/schildbach/wallet/ui/ExchangeRatesFragment$1;

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lde/schildbach/wallet/ui/ExchangeRatesFragment$BlockchainBroadcastReceiver;-><init>(Lde/schildbach/wallet/ui/ExchangeRatesFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 234
    iget-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$BlockchainBroadcastReceiver;->this$0:Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    const-string v1, "replaying"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->access$302(Lde/schildbach/wallet/ui/ExchangeRatesFragment;Z)Z

    .line 236
    iget-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$BlockchainBroadcastReceiver;->this$0:Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->access$400(Lde/schildbach/wallet/ui/ExchangeRatesFragment;)V

    .line 237
    return-void
.end method
