.class public final Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask;
.super Lde/schildbach/wallet/ui/RequestPaymentRequestTask;
.source "RequestPaymentRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/RequestPaymentRequestTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HttpRequestTask"
.end annotation


# instance fields
.field private final userAgent:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lde/schildbach/wallet/ui/RequestPaymentRequestTask$ResultCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "backgroundHandler"    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "resultCallback"    # Lde/schildbach/wallet/ui/RequestPaymentRequestTask$ResultCallback;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "userAgent"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask;-><init>(Landroid/os/Handler;Lde/schildbach/wallet/ui/RequestPaymentRequestTask$ResultCallback;)V

    .line 84
    iput-object p3, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask;->userAgent:Ljava/lang/String;

    .line 85
    return-void
.end method

.method static synthetic access$100(Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask;

    .prologue
    .line 74
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask;->userAgent:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public requestPaymentRequest(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 90
    invoke-static {p0}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask;->access$200(Lde/schildbach/wallet/ui/RequestPaymentRequestTask;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask$1;

    invoke-direct {v1, p0, p1}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask$1;-><init>(Lde/schildbach/wallet/ui/RequestPaymentRequestTask$HttpRequestTask;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    return-void
.end method
