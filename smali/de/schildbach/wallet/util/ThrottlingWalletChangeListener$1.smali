.class Lde/schildbach/wallet/util/ThrottlingWalletChangeListener$1;
.super Ljava/lang/Object;
.source "ThrottlingWalletChangeListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener$1;->this$0:Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener$1;->this$0:Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;

    invoke-static {v0}, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->access$000(Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 96
    iget-object v0, p0, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener$1;->this$0:Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;

    invoke-virtual {v0}, Lde/schildbach/wallet/util/ThrottlingWalletChangeListener;->onThrottledWalletChanged()V

    .line 97
    return-void
.end method
