.class public final Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;
.super Lde/schildbach/wallet/offline/DirectPaymentTask;
.source "DirectPaymentTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/offline/DirectPaymentTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HttpPaymentTask"
.end annotation


# instance fields
.field private final url:Ljava/lang/String;

.field private final userAgent:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lde/schildbach/wallet/offline/DirectPaymentTask$ResultCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "backgroundHandler"    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "resultCallback"    # Lde/schildbach/wallet/offline/DirectPaymentTask$ResultCallback;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "url"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4, "userAgent"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lde/schildbach/wallet/offline/DirectPaymentTask;-><init>(Landroid/os/Handler;Lde/schildbach/wallet/offline/DirectPaymentTask$ResultCallback;)V

    .line 83
    iput-object p3, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;->url:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;->userAgent:Ljava/lang/String;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;

    .prologue
    .line 72
    iget-object v0, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;

    .prologue
    .line 72
    iget-object v0, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;->userAgent:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public send(Lorg/bitcoin/protocols/payments/Protos$Payment;)V
    .locals 2
    .param p1, "payment"    # Lorg/bitcoin/protocols/payments/Protos$Payment;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 90
    invoke-static {p0}, Lde/schildbach/wallet/offline/DirectPaymentTask;->access$300(Lde/schildbach/wallet/offline/DirectPaymentTask;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask$1;

    invoke-direct {v1, p0, p1}, Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask$1;-><init>(Lde/schildbach/wallet/offline/DirectPaymentTask$HttpPaymentTask;Lorg/bitcoin/protocols/payments/Protos$Payment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-void
.end method
