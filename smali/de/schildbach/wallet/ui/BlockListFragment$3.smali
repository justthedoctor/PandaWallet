.class Lde/schildbach/wallet/ui/BlockListFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "BlockListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/BlockListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/BlockListFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/BlockListFragment;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lde/schildbach/wallet/ui/BlockListFragment$3;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 228
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment$3;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/BlockListFragment;->access$400(Lde/schildbach/wallet/ui/BlockListFragment;)Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->notifyDataSetChanged()V

    .line 229
    return-void
.end method
