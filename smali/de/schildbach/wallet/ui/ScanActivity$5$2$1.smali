.class Lde/schildbach/wallet/ui/ScanActivity$5$2$1;
.super Ljava/lang/Object;
.source "ScanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/ScanActivity$5$2;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lde/schildbach/wallet/ui/ScanActivity$5$2;

.field final synthetic val$dot:Lcom/google/zxing/ResultPoint;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/ScanActivity$5$2;Lcom/google/zxing/ResultPoint;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lde/schildbach/wallet/ui/ScanActivity$5$2$1;->this$2:Lde/schildbach/wallet/ui/ScanActivity$5$2;

    iput-object p2, p0, Lde/schildbach/wallet/ui/ScanActivity$5$2$1;->val$dot:Lcom/google/zxing/ResultPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity$5$2$1;->this$2:Lde/schildbach/wallet/ui/ScanActivity$5$2;

    iget-object v0, v0, Lde/schildbach/wallet/ui/ScanActivity$5$2;->this$1:Lde/schildbach/wallet/ui/ScanActivity$5;

    iget-object v0, v0, Lde/schildbach/wallet/ui/ScanActivity$5;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    invoke-static {v0}, Lde/schildbach/wallet/ui/ScanActivity;->access$300(Lde/schildbach/wallet/ui/ScanActivity;)Lde/schildbach/wallet/ui/ScannerView;

    move-result-object v0

    iget-object v1, p0, Lde/schildbach/wallet/ui/ScanActivity$5$2$1;->val$dot:Lcom/google/zxing/ResultPoint;

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/ScannerView;->addDot(Lcom/google/zxing/ResultPoint;)V

    .line 327
    return-void
.end method
