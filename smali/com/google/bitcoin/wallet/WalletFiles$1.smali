.class Lcom/google/bitcoin/wallet/WalletFiles$1;
.super Ljava/lang/Object;
.source "WalletFiles.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/wallet/WalletFiles;-><init>(Lcom/google/bitcoin/core/Wallet;Ljava/io/File;JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/wallet/WalletFiles;

.field final synthetic val$wallet:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/wallet/WalletFiles;Lcom/google/bitcoin/core/Wallet;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/bitcoin/wallet/WalletFiles$1;->this$0:Lcom/google/bitcoin/wallet/WalletFiles;

    iput-object p2, p0, Lcom/google/bitcoin/wallet/WalletFiles$1;->val$wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/google/bitcoin/wallet/WalletFiles$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 92
    iget-object v0, p0, Lcom/google/bitcoin/wallet/WalletFiles$1;->this$0:Lcom/google/bitcoin/wallet/WalletFiles;

    invoke-static {v0}, Lcom/google/bitcoin/wallet/WalletFiles;->access$000(Lcom/google/bitcoin/wallet/WalletFiles;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-object v4

    .line 96
    :cond_0
    invoke-static {}, Lcom/google/bitcoin/wallet/WalletFiles;->access$100()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Background saving wallet, last seen block is {}/{}"

    iget-object v2, p0, Lcom/google/bitcoin/wallet/WalletFiles$1;->val$wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Wallet;->getLastBlockSeenHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/bitcoin/wallet/WalletFiles$1;->val$wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Wallet;->getLastBlockSeenHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/google/bitcoin/wallet/WalletFiles$1;->this$0:Lcom/google/bitcoin/wallet/WalletFiles;

    invoke-static {v0}, Lcom/google/bitcoin/wallet/WalletFiles;->access$200(Lcom/google/bitcoin/wallet/WalletFiles;)V

    goto :goto_0
.end method
