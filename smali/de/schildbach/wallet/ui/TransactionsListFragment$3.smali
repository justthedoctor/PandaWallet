.class Lde/schildbach/wallet/ui/TransactionsListFragment$3;
.super Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;
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
.method constructor <init>(Lde/schildbach/wallet/ui/TransactionsListFragment;J)V
    .locals 0
    .param p2, "x0"    # J

    .prologue
    .line 371
    iput-object p1, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$3;->this$0:Lde/schildbach/wallet/ui/TransactionsListFragment;

    invoke-direct {p0, p2, p3}, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onThrottledWalletChanged()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$3;->this$0:Lde/schildbach/wallet/ui/TransactionsListFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/TransactionsListFragment;->access$000(Lde/schildbach/wallet/ui/TransactionsListFragment;)Lde/schildbach/wallet/ui/TransactionsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/TransactionsListAdapter;->notifyDataSetChanged()V

    .line 376
    return-void
.end method
