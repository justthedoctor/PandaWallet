.class Lde/schildbach/wallet/ui/ScanActivity$5$2;
.super Ljava/lang/Object;
.source "ScanActivity.java"

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/ScanActivity$5;->decode([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/schildbach/wallet/ui/ScanActivity$5;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/ScanActivity$5;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lde/schildbach/wallet/ui/ScanActivity$5$2;->this$1:Lde/schildbach/wallet/ui/ScanActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 2
    .param p1, "dot"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 321
    iget-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity$5$2;->this$1:Lde/schildbach/wallet/ui/ScanActivity$5;

    iget-object v0, v0, Lde/schildbach/wallet/ui/ScanActivity$5;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    new-instance v1, Lde/schildbach/wallet/ui/ScanActivity$5$2$1;

    invoke-direct {v1, p0, p1}, Lde/schildbach/wallet/ui/ScanActivity$5$2$1;-><init>(Lde/schildbach/wallet/ui/ScanActivity$5$2;Lcom/google/zxing/ResultPoint;)V

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/ScanActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 329
    return-void
.end method
