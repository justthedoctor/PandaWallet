.class Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader$1;
.super Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;
.source "TransactionsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;JZZZ)V
    .locals 6
    .param p2, "x0"    # J
    .param p4, "x1"    # Z
    .param p5, "x2"    # Z
    .param p6, "x3"    # Z

    .prologue
    .line 435
    iput-object p1, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader$1;->this$0:Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;

    move-object v0, p0

    move-wide v1, p2

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;-><init>(JZZZ)V

    return-void
.end method


# virtual methods
.method public onThrottledWalletChanged()V
    .locals 4

    .prologue
    .line 441
    :try_start_0
    iget-object v1, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader$1;->this$0:Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;

    invoke-virtual {v1}, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;->forceLoad()V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :goto_0
    return-void

    .line 443
    :catch_0
    move-exception v0

    .line 445
    .local v0, "x":Ljava/util/concurrent/RejectedExecutionException;
    invoke-static {}, Lde/schildbach/wallet/ui/TransactionsListFragment;->access$500()Lorg/slf4j/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejected execution: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader$1;->this$0:Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;

    invoke-virtual {v3}, Lde/schildbach/wallet/ui/TransactionsListFragment$TransactionsLoader;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method
