.class Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask$1$1;
.super Lde/schildbach/wallet/ui/InputParser$StreamInputParser;
.source "RequestPaymentRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask$1;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask$1;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Ljava/io/InputStream;

    .prologue
    .line 123
    iput-object p1, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask$1$1;->this$1:Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask$1;

    invoke-direct {p0, p2, p3}, Lde/schildbach/wallet/ui/InputParser$StreamInputParser;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method protected varargs error(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "messageResId"    # I
    .param p2, "messageArgs"    # [Ljava/lang/Object;

    .prologue
    .line 142
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask$1$1;->this$1:Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask$1;

    iget-object v0, v0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask$1;->this$0:Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask;

    invoke-virtual {v0, p1, p2}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask;->onFail(I[Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method protected handleDirectTransaction(Lcom/google/bitcoin/core/Transaction;)V
    .locals 1
    .param p1, "transaction"    # Lcom/google/bitcoin/core/Transaction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected handlePaymentIntent(Lde/schildbach/wallet/PaymentIntent;)V
    .locals 2
    .param p1, "paymentIntent"    # Lde/schildbach/wallet/PaymentIntent;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 127
    invoke-static {}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "received {} via http"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask$1$1;->this$1:Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask$1;

    iget-object v0, v0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask$1;->this$0:Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask;

    invoke-virtual {v0, p1}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask;->onPaymentIntent(Lde/schildbach/wallet/PaymentIntent;)V

    .line 130
    return-void
.end method
