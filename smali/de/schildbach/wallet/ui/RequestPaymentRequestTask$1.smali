.class Lde/schildbach/wallet/ui/RequestPaymentRequestTask$1;
.super Ljava/lang/Object;
.source "RequestPaymentRequestTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/RequestPaymentRequestTask;->onPaymentIntent(Lde/schildbach/wallet/PaymentIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/RequestPaymentRequestTask;

.field final synthetic val$paymentIntent:Lde/schildbach/wallet/PaymentIntent;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/RequestPaymentRequestTask;Lde/schildbach/wallet/PaymentIntent;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$1;->this$0:Lde/schildbach/wallet/ui/RequestPaymentRequestTask;

    iput-object p2, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$1;->val$paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$1;->this$0:Lde/schildbach/wallet/ui/RequestPaymentRequestTask;

    invoke-static {v0}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask;->access$400(Lde/schildbach/wallet/ui/RequestPaymentRequestTask;)Lde/schildbach/wallet/ui/RequestPaymentRequestTask$ResultCallback;

    move-result-object v0

    iget-object v1, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$1;->val$paymentIntent:Lde/schildbach/wallet/PaymentIntent;

    invoke-interface {v0, v1}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$ResultCallback;->onPaymentIntent(Lde/schildbach/wallet/PaymentIntent;)V

    .line 322
    return-void
.end method
