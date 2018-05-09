.class Lde/schildbach/wallet/offline/DirectPaymentTask$1;
.super Ljava/lang/Object;
.source "DirectPaymentTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/offline/DirectPaymentTask;->onResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/offline/DirectPaymentTask;

.field final synthetic val$ack:Z


# direct methods
.method constructor <init>(Lde/schildbach/wallet/offline/DirectPaymentTask;Z)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$1;->this$0:Lde/schildbach/wallet/offline/DirectPaymentTask;

    iput-boolean p2, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$1;->val$ack:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$1;->this$0:Lde/schildbach/wallet/offline/DirectPaymentTask;

    invoke-static {v0}, Lde/schildbach/wallet/offline/DirectPaymentTask;->access$600(Lde/schildbach/wallet/offline/DirectPaymentTask;)Lde/schildbach/wallet/offline/DirectPaymentTask$ResultCallback;

    move-result-object v0

    iget-boolean v1, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$1;->val$ack:Z

    invoke-interface {v0, v1}, Lde/schildbach/wallet/offline/DirectPaymentTask$ResultCallback;->onResult(Z)V

    .line 303
    return-void
.end method
