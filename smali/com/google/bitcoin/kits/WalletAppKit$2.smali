.class Lcom/google/bitcoin/kits/WalletAppKit$2;
.super Ljava/lang/Thread;
.source "WalletAppKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/kits/WalletAppKit;->installShutdownHook()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/kits/WalletAppKit;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/kits/WalletAppKit;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/google/bitcoin/kits/WalletAppKit$2;->this$0:Lcom/google/bitcoin/kits/WalletAppKit;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/kits/WalletAppKit$2;->this$0:Lcom/google/bitcoin/kits/WalletAppKit;

    invoke-virtual {v1}, Lcom/google/bitcoin/kits/WalletAppKit;->stopAsync()Lcom/google/common/util/concurrent/Service;

    .line 291
    iget-object v1, p0, Lcom/google/bitcoin/kits/WalletAppKit$2;->this$0:Lcom/google/bitcoin/kits/WalletAppKit;

    invoke-virtual {v1}, Lcom/google/bitcoin/kits/WalletAppKit;->awaitTerminated()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
