.class Lde/schildbach/wallet/ui/RequestPaymentRequestTask$2;
.super Ljava/lang/Object;
.source "RequestPaymentRequestTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/RequestPaymentRequestTask;->onFail(I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/RequestPaymentRequestTask;

.field final synthetic val$messageArgs:[Ljava/lang/Object;

.field final synthetic val$messageResId:I


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/RequestPaymentRequestTask;I[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$2;->this$0:Lde/schildbach/wallet/ui/RequestPaymentRequestTask;

    iput p2, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$2;->val$messageResId:I

    iput-object p3, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$2;->val$messageArgs:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$2;->this$0:Lde/schildbach/wallet/ui/RequestPaymentRequestTask;

    invoke-static {v0}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask;->access$400(Lde/schildbach/wallet/ui/RequestPaymentRequestTask;)Lde/schildbach/wallet/ui/RequestPaymentRequestTask$ResultCallback;

    move-result-object v0

    iget v1, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$2;->val$messageResId:I

    iget-object v2, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$2;->val$messageArgs:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$ResultCallback;->onFail(I[Ljava/lang/Object;)V

    .line 334
    return-void
.end method
