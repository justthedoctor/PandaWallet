.class Lde/schildbach/wallet/ui/TransactionsListFragment$1;
.super Landroid/database/ContentObserver;
.source "TransactionsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/TransactionsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/TransactionsListFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/TransactionsListFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 130
    iput-object p1, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$1;->this$0:Lde/schildbach/wallet/ui/TransactionsListFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 134
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$1;->this$0:Lde/schildbach/wallet/ui/TransactionsListFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/TransactionsListFragment;->access$000(Lde/schildbach/wallet/ui/TransactionsListFragment;)Lde/schildbach/wallet/ui/TransactionsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/TransactionsListAdapter;->clearLabelCache()V

    .line 135
    return-void
.end method
