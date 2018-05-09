.class public abstract Lde/schildbach/wallet/offline/DirectPaymentTask;
.super Ljava/lang/Object;
.source "DirectPaymentTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;,
        Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;,
        Lde/schildbach/wallet/offline/DirectPaymentTask$ResultCallback;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final backgroundHandler:Landroid/os/Handler;

.field private final callbackHandler:Landroid/os/Handler;

.field private final resultCallback:Lde/schildbach/wallet/offline/DirectPaymentTask$ResultCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lde/schildbach/wallet/offline/DirectPaymentTask;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/offline/DirectPaymentTask;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lde/schildbach/wallet/offline/DirectPaymentTask$ResultCallback;)V
    .locals 2
    .param p1, "backgroundHandler"    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "resultCallback"    # Lde/schildbach/wallet/offline/DirectPaymentTask$ResultCallback;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lde/schildbach/wallet/offline/DirectPaymentTask;->backgroundHandler:Landroid/os/Handler;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lde/schildbach/wallet/offline/DirectPaymentTask;->callbackHandler:Landroid/os/Handler;

    .line 69
    iput-object p2, p0, Lde/schildbach/wallet/offline/DirectPaymentTask;->resultCallback:Lde/schildbach/wallet/offline/DirectPaymentTask$ResultCallback;

    .line 70
    return-void
.end method

.method static synthetic access$100()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lde/schildbach/wallet/offline/DirectPaymentTask;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lde/schildbach/wallet/offline/DirectPaymentTask;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/offline/DirectPaymentTask;

    .prologue
    .line 50
    iget-object v0, p0, Lde/schildbach/wallet/offline/DirectPaymentTask;->backgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lde/schildbach/wallet/offline/DirectPaymentTask;)Lde/schildbach/wallet/offline/DirectPaymentTask$ResultCallback;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/offline/DirectPaymentTask;

    .prologue
    .line 50
    iget-object v0, p0, Lde/schildbach/wallet/offline/DirectPaymentTask;->resultCallback:Lde/schildbach/wallet/offline/DirectPaymentTask$ResultCallback;

    return-object v0
.end method


# virtual methods
.method protected varargs onFail(I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "messageResId"    # I
    .param p2, "messageArgs"    # [Ljava/lang/Object;

    .prologue
    .line 309
    iget-object v0, p0, Lde/schildbach/wallet/offline/DirectPaymentTask;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lde/schildbach/wallet/offline/DirectPaymentTask$2;

    invoke-direct {v1, p0, p1, p2}, Lde/schildbach/wallet/offline/DirectPaymentTask$2;-><init>(Lde/schildbach/wallet/offline/DirectPaymentTask;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 317
    return-void
.end method

.method protected onResult(Z)V
    .locals 2
    .param p1, "ack"    # Z

    .prologue
    .line 297
    iget-object v0, p0, Lde/schildbach/wallet/offline/DirectPaymentTask;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lde/schildbach/wallet/offline/DirectPaymentTask$1;

    invoke-direct {v1, p0, p1}, Lde/schildbach/wallet/offline/DirectPaymentTask$1;-><init>(Lde/schildbach/wallet/offline/DirectPaymentTask;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 305
    return-void
.end method

.method public abstract send(Lorg/bitcoin/protocols/payments/Protos$Payment;)V
    .param p1    # Lorg/bitcoin/protocols/payments/Protos$Payment;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method
