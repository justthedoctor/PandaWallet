.class Lde/schildbach/wallet/ui/ScanActivity$1;
.super Ljava/lang/Object;
.source "ScanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/ScanActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/ScanActivity;

.field final synthetic val$keyCode:I


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/ScanActivity;I)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lde/schildbach/wallet/ui/ScanActivity$1;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    iput p2, p0, Lde/schildbach/wallet/ui/ScanActivity$1;->val$keyCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity$1;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    invoke-static {v0}, Lde/schildbach/wallet/ui/ScanActivity;->access$000(Lde/schildbach/wallet/ui/ScanActivity;)Lde/schildbach/wallet/camera/CameraManager;

    move-result-object v1

    iget v0, p0, Lde/schildbach/wallet/ui/ScanActivity$1;->val$keyCode:I

    const/16 v2, 0x18

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lde/schildbach/wallet/camera/CameraManager;->setTorch(Z)V

    .line 168
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
