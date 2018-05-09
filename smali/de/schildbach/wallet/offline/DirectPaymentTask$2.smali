.class Lde/schildbach/wallet/offline/DirectPaymentTask$2;
.super Ljava/lang/Object;
.source "DirectPaymentTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/offline/DirectPaymentTask;->onFail(I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/offline/DirectPaymentTask;

.field final synthetic val$messageArgs:[Ljava/lang/Object;

.field final synthetic val$messageResId:I


# direct methods
.method constructor <init>(Lde/schildbach/wallet/offline/DirectPaymentTask;I[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$2;->this$0:Lde/schildbach/wallet/offline/DirectPaymentTask;

    iput p2, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$2;->val$messageResId:I

    iput-object p3, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$2;->val$messageArgs:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$2;->this$0:Lde/schildbach/wallet/offline/DirectPaymentTask;

    invoke-static {v0}, Lde/schildbach/wallet/offline/DirectPaymentTask;->access$600(Lde/schildbach/wallet/offline/DirectPaymentTask;)Lde/schildbach/wallet/offline/DirectPaymentTask$ResultCallback;

    move-result-object v0

    iget v1, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$2;->val$messageResId:I

    iget-object v2, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$2;->val$messageArgs:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lde/schildbach/wallet/offline/DirectPaymentTask$ResultCallback;->onFail(I[Ljava/lang/Object;)V

    .line 315
    return-void
.end method
