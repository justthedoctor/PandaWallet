.class Lcom/google/bitcoin/core/Wallet$11$1;
.super Ljava/lang/Object;
.source "Wallet.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/core/Wallet$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Lcom/google/bitcoin/core/Transaction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/bitcoin/core/Wallet$11;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/Wallet$11;)V
    .locals 0

    .prologue
    .line 3806
    iput-object p1, p0, Lcom/google/bitcoin/core/Wallet$11$1;->this$1:Lcom/google/bitcoin/core/Wallet$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 3814
    invoke-static {}, Lcom/google/bitcoin/core/Wallet;->access$900()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Failed to broadcast key rotation tx"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3815
    return-void
.end method

.method public onSuccess(Lcom/google/bitcoin/core/Transaction;)V
    .locals 2
    .param p1, "transaction"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 3809
    invoke-static {}, Lcom/google/bitcoin/core/Wallet;->access$900()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Successfully broadcast key rotation tx: {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3810
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3806
    check-cast p1, Lcom/google/bitcoin/core/Transaction;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/Wallet$11$1;->onSuccess(Lcom/google/bitcoin/core/Transaction;)V

    return-void
.end method
