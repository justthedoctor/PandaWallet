.class Lde/schildbach/wallet/ui/ScanActivity$5$1;
.super Ljava/lang/Object;
.source "ScanActivity.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/ScanActivity$5;->run()V
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
    .line 300
    iput-object p1, p0, Lde/schildbach/wallet/ui/ScanActivity$5$1;->this$1:Lde/schildbach/wallet/ui/ScanActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 304
    iget-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity$5$1;->this$1:Lde/schildbach/wallet/ui/ScanActivity$5;

    invoke-static {v0, p1}, Lde/schildbach/wallet/ui/ScanActivity$5;->access$800(Lde/schildbach/wallet/ui/ScanActivity$5;[B)V

    .line 305
    return-void
.end method
