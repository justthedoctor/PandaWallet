.class public abstract Lde/schildbach/wallet/ui/RequestPaymentRequestTask;
.super Ljava/lang/Object;
.source "RequestPaymentRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/schildbach/wallet/ui/RequestPaymentRequestTask$BluetoothRequestTask;,
        Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask;,
        Lde/schildbach/wallet/ui/RequestPaymentRequestTask$ResultCallback;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final backgroundHandler:Landroid/os/Handler;

.field private final callbackHandler:Landroid/os/Handler;

.field private final resultCallback:Lde/schildbach/wallet/ui/RequestPaymentRequestTask$ResultCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lde/schildbach/wallet/ui/RequestPaymentRequestTask$ResultCallback;)V
    .locals 2
    .param p1, "backgroundHandler"    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "resultCallback"    # Lde/schildbach/wallet/ui/RequestPaymentRequestTask$ResultCallback;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask;->backgroundHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask;->callbackHandler:Landroid/os/Handler;

    .line 71
    iput-object p2, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask;->resultCallback:Lde/schildbach/wallet/ui/RequestPaymentRequestTask$ResultCallback;

    .line 72
    return-void
.end method

.method static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lde/schildbach/wallet/ui/RequestPaymentRequestTask;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/RequestPaymentRequestTask;

    .prologue
    .line 52
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask;->backgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lde/schildbach/wallet/ui/RequestPaymentRequestTask;)Lde/schildbach/wallet/ui/RequestPaymentRequestTask$ResultCallback;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/RequestPaymentRequestTask;

    .prologue
    .line 52
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask;->resultCallback:Lde/schildbach/wallet/ui/RequestPaymentRequestTask$ResultCallback;

    return-object v0
.end method


# virtual methods
.method protected varargs onFail(I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "messageResId"    # I
    .param p2, "messageArgs"    # [Ljava/lang/Object;

    .prologue
    .line 328
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$2;

    invoke-direct {v1, p0, p1, p2}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$2;-><init>(Lde/schildbach/wallet/ui/RequestPaymentRequestTask;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 336
    return-void
.end method

.method protected onPaymentIntent(Lde/schildbach/wallet/PaymentIntent;)V
    .locals 2
    .param p1, "paymentIntent"    # Lde/schildbach/wallet/PaymentIntent;

    .prologue
    .line 316
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$1;

    invoke-direct {v1, p0, p1}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$1;-><init>(Lde/schildbach/wallet/ui/RequestPaymentRequestTask;Lde/schildbach/wallet/PaymentIntent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 324
    return-void
.end method

.method public abstract requestPaymentRequest(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method
