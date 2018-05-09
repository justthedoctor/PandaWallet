.class Lde/schildbach/wallet/ui/ScanActivity$4;
.super Ljava/lang/Object;
.source "ScanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/ScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/ScanActivity;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/ScanActivity;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lde/schildbach/wallet/ui/ScanActivity$4;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity$4;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    invoke-static {v0}, Lde/schildbach/wallet/ui/ScanActivity;->access$000(Lde/schildbach/wallet/ui/ScanActivity;)Lde/schildbach/wallet/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lde/schildbach/wallet/camera/CameraManager;->close()V

    .line 262
    iget-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity$4;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    invoke-static {v0}, Lde/schildbach/wallet/ui/ScanActivity;->access$400(Lde/schildbach/wallet/ui/ScanActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity$4;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    invoke-static {v0}, Lde/schildbach/wallet/ui/ScanActivity;->access$700(Lde/schildbach/wallet/ui/ScanActivity;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 264
    return-void
.end method
