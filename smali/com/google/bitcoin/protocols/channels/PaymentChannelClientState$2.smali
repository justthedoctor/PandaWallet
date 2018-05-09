.class Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$2;
.super Ljava/lang/Object;
.source "PaymentChannelClientState.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->watchCloseConfirmations()V
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
.field final synthetic this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$2;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 210
    invoke-static {p1}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 211
    return-void
.end method

.method public onSuccess(Lcom/google/bitcoin/core/Transaction;)V
    .locals 1
    .param p1, "result"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$2;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->access$600(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;)V

    .line 206
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 202
    check-cast p1, Lcom/google/bitcoin/core/Transaction;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$2;->onSuccess(Lcom/google/bitcoin/core/Transaction;)V

    return-void
.end method
