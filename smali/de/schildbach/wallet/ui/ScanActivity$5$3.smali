.class Lde/schildbach/wallet/ui/ScanActivity$5$3;
.super Ljava/lang/Object;
.source "ScanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$scanResult:Lcom/google/zxing/Result;

.field final synthetic val$thumbnailImage:Landroid/graphics/Bitmap;

.field final synthetic val$thumbnailScaleFactor:F


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/ScanActivity$5;Lcom/google/zxing/Result;Landroid/graphics/Bitmap;F)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lde/schildbach/wallet/ui/ScanActivity$5$3;->this$1:Lde/schildbach/wallet/ui/ScanActivity$5;

    iput-object p2, p0, Lde/schildbach/wallet/ui/ScanActivity$5$3;->val$scanResult:Lcom/google/zxing/Result;

    iput-object p3, p0, Lde/schildbach/wallet/ui/ScanActivity$5$3;->val$thumbnailImage:Landroid/graphics/Bitmap;

    iput p4, p0, Lde/schildbach/wallet/ui/ScanActivity$5$3;->val$thumbnailScaleFactor:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 345
    iget-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity$5$3;->this$1:Lde/schildbach/wallet/ui/ScanActivity$5;

    iget-object v0, v0, Lde/schildbach/wallet/ui/ScanActivity$5;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    iget-object v1, p0, Lde/schildbach/wallet/ui/ScanActivity$5$3;->val$scanResult:Lcom/google/zxing/Result;

    iget-object v2, p0, Lde/schildbach/wallet/ui/ScanActivity$5$3;->val$thumbnailImage:Landroid/graphics/Bitmap;

    iget v3, p0, Lde/schildbach/wallet/ui/ScanActivity$5$3;->val$thumbnailScaleFactor:F

    invoke-virtual {v0, v1, v2, v3}, Lde/schildbach/wallet/ui/ScanActivity;->handleResult(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;F)V

    .line 346
    return-void
.end method
