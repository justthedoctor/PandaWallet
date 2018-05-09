.class Lde/schildbach/wallet/ui/WalletBalanceLoader$1;
.super Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;
.source "WalletBalanceLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/WalletBalanceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/WalletBalanceLoader;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/WalletBalanceLoader;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletBalanceLoader$1;->this$0:Lde/schildbach/wallet/ui/WalletBalanceLoader;

    invoke-direct {p0}, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onThrottledWalletChanged()V
    .locals 4

    .prologue
    .line 86
    :try_start_0
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletBalanceLoader$1;->this$0:Lde/schildbach/wallet/ui/WalletBalanceLoader;

    invoke-virtual {v1}, Lde/schildbach/wallet/ui/WalletBalanceLoader;->forceLoad()V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 90
    .local v0, "x":Ljava/util/concurrent/RejectedExecutionException;
    invoke-static {}, Lde/schildbach/wallet/ui/WalletBalanceLoader;->access$000()Lorg/slf4j/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejected execution: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lde/schildbach/wallet/ui/WalletBalanceLoader$1;->this$0:Lde/schildbach/wallet/ui/WalletBalanceLoader;

    invoke-virtual {v3}, Lde/schildbach/wallet/ui/WalletBalanceLoader;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method
