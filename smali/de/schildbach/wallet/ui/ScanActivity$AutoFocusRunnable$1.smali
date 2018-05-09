.class Lde/schildbach/wallet/ui/ScanActivity$AutoFocusRunnable$1;
.super Ljava/lang/Object;
.source "ScanActivity.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/ScanActivity$AutoFocusRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/schildbach/wallet/ui/ScanActivity$AutoFocusRunnable;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/ScanActivity$AutoFocusRunnable;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lde/schildbach/wallet/ui/ScanActivity$AutoFocusRunnable$1;->this$1:Lde/schildbach/wallet/ui/ScanActivity$AutoFocusRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 285
    iget-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity$AutoFocusRunnable$1;->this$1:Lde/schildbach/wallet/ui/ScanActivity$AutoFocusRunnable;

    iget-object v0, v0, Lde/schildbach/wallet/ui/ScanActivity$AutoFocusRunnable;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    invoke-static {v0}, Lde/schildbach/wallet/ui/ScanActivity;->access$400(Lde/schildbach/wallet/ui/ScanActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lde/schildbach/wallet/ui/ScanActivity$AutoFocusRunnable$1;->this$1:Lde/schildbach/wallet/ui/ScanActivity$AutoFocusRunnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 286
    return-void
.end method
