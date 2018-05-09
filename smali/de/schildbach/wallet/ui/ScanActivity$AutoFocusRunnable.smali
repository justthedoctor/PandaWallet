.class final Lde/schildbach/wallet/ui/ScanActivity$AutoFocusRunnable;
.super Ljava/lang/Object;
.source "ScanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/ScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusRunnable"
.end annotation


# instance fields
.field private final camera:Landroid/hardware/Camera;

.field final synthetic this$0:Lde/schildbach/wallet/ui/ScanActivity;


# direct methods
.method public constructor <init>(Lde/schildbach/wallet/ui/ScanActivity;Landroid/hardware/Camera;)V
    .locals 0
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 272
    iput-object p1, p0, Lde/schildbach/wallet/ui/ScanActivity$AutoFocusRunnable;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p2, p0, Lde/schildbach/wallet/ui/ScanActivity$AutoFocusRunnable;->camera:Landroid/hardware/Camera;

    .line 274
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity$AutoFocusRunnable;->camera:Landroid/hardware/Camera;

    new-instance v1, Lde/schildbach/wallet/ui/ScanActivity$AutoFocusRunnable$1;

    invoke-direct {v1, p0}, Lde/schildbach/wallet/ui/ScanActivity$AutoFocusRunnable$1;-><init>(Lde/schildbach/wallet/ui/ScanActivity$AutoFocusRunnable;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 288
    return-void
.end method
