.class Lde/schildbach/wallet/ui/ScanActivity$3;
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
    .line 212
    iput-object p1, p0, Lde/schildbach/wallet/ui/ScanActivity$3;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 218
    :try_start_0
    iget-object v7, p0, Lde/schildbach/wallet/ui/ScanActivity$3;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    invoke-static {v7}, Lde/schildbach/wallet/ui/ScanActivity;->access$000(Lde/schildbach/wallet/ui/ScanActivity;)Lde/schildbach/wallet/camera/CameraManager;

    move-result-object v8

    iget-object v7, p0, Lde/schildbach/wallet/ui/ScanActivity$3;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    invoke-static {v7}, Lde/schildbach/wallet/ui/ScanActivity;->access$100(Lde/schildbach/wallet/ui/ScanActivity;)Landroid/view/SurfaceHolder;

    move-result-object v9

    invoke-static {}, Lde/schildbach/wallet/ui/ScanActivity;->access$200()Z

    move-result v7

    if-nez v7, :cond_2

    move v7, v4

    :goto_0
    invoke-virtual {v8, v9, v7}, Lde/schildbach/wallet/camera/CameraManager;->open(Landroid/view/SurfaceHolder;Z)Landroid/hardware/Camera;

    move-result-object v0

    .line 220
    .local v0, "camera":Landroid/hardware/Camera;
    iget-object v7, p0, Lde/schildbach/wallet/ui/ScanActivity$3;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    invoke-static {v7}, Lde/schildbach/wallet/ui/ScanActivity;->access$000(Lde/schildbach/wallet/ui/ScanActivity;)Lde/schildbach/wallet/camera/CameraManager;

    move-result-object v7

    invoke-virtual {v7}, Lde/schildbach/wallet/camera/CameraManager;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    .line 221
    .local v2, "framingRect":Landroid/graphics/Rect;
    iget-object v7, p0, Lde/schildbach/wallet/ui/ScanActivity$3;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    invoke-static {v7}, Lde/schildbach/wallet/ui/ScanActivity;->access$000(Lde/schildbach/wallet/ui/ScanActivity;)Lde/schildbach/wallet/camera/CameraManager;

    move-result-object v7

    invoke-virtual {v7}, Lde/schildbach/wallet/camera/CameraManager;->getFramePreview()Landroid/graphics/Rect;

    move-result-object v3

    .line 223
    .local v3, "framingRectInPreview":Landroid/graphics/Rect;
    iget-object v7, p0, Lde/schildbach/wallet/ui/ScanActivity$3;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    new-instance v8, Lde/schildbach/wallet/ui/ScanActivity$3$1;

    invoke-direct {v8, p0, v2, v3}, Lde/schildbach/wallet/ui/ScanActivity$3$1;-><init>(Lde/schildbach/wallet/ui/ScanActivity$3;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v7, v8}, Lde/schildbach/wallet/ui/ScanActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 232
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "focusMode":Ljava/lang/String;
    const-string v7, "auto"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "macro"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 236
    .local v4, "nonContinuousAutoFocus":Z
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    .line 237
    iget-object v7, p0, Lde/schildbach/wallet/ui/ScanActivity$3;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    invoke-static {v7}, Lde/schildbach/wallet/ui/ScanActivity;->access$400(Lde/schildbach/wallet/ui/ScanActivity;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lde/schildbach/wallet/ui/ScanActivity$AutoFocusRunnable;

    iget-object v9, p0, Lde/schildbach/wallet/ui/ScanActivity$3;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    invoke-direct {v8, v9, v0}, Lde/schildbach/wallet/ui/ScanActivity$AutoFocusRunnable;-><init>(Lde/schildbach/wallet/ui/ScanActivity;Landroid/hardware/Camera;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    :cond_1
    iget-object v7, p0, Lde/schildbach/wallet/ui/ScanActivity$3;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    invoke-static {v7}, Lde/schildbach/wallet/ui/ScanActivity;->access$400(Lde/schildbach/wallet/ui/ScanActivity;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lde/schildbach/wallet/ui/ScanActivity$3;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    invoke-static {v8}, Lde/schildbach/wallet/ui/ScanActivity;->access$500(Lde/schildbach/wallet/ui/ScanActivity;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 251
    .end local v0    # "camera":Landroid/hardware/Camera;
    .end local v1    # "focusMode":Ljava/lang/String;
    .end local v2    # "framingRect":Landroid/graphics/Rect;
    .end local v3    # "framingRectInPreview":Landroid/graphics/Rect;
    .end local v4    # "nonContinuousAutoFocus":Z
    :goto_2
    return-void

    :cond_2
    move v7, v6

    .line 218
    goto :goto_0

    .restart local v0    # "camera":Landroid/hardware/Camera;
    .restart local v1    # "focusMode":Ljava/lang/String;
    .restart local v2    # "framingRect":Landroid/graphics/Rect;
    .restart local v3    # "framingRectInPreview":Landroid/graphics/Rect;
    :cond_3
    move v4, v6

    .line 233
    goto :goto_1

    .line 241
    .end local v0    # "camera":Landroid/hardware/Camera;
    .end local v1    # "focusMode":Ljava/lang/String;
    .end local v2    # "framingRect":Landroid/graphics/Rect;
    .end local v3    # "framingRectInPreview":Landroid/graphics/Rect;
    :catch_0
    move-exception v5

    .line 243
    .local v5, "x":Ljava/io/IOException;
    invoke-static {}, Lde/schildbach/wallet/ui/ScanActivity;->access$600()Lorg/slf4j/Logger;

    move-result-object v7

    const-string v8, "problem opening camera"

    invoke-interface {v7, v8, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    iget-object v7, p0, Lde/schildbach/wallet/ui/ScanActivity$3;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    invoke-virtual {v7, v6}, Lde/schildbach/wallet/ui/ScanActivity;->showDialog(I)V

    goto :goto_2

    .line 246
    .end local v5    # "x":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 248
    .local v5, "x":Ljava/lang/RuntimeException;
    invoke-static {}, Lde/schildbach/wallet/ui/ScanActivity;->access$600()Lorg/slf4j/Logger;

    move-result-object v7

    const-string v8, "problem opening camera"

    invoke-interface {v7, v8, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    iget-object v7, p0, Lde/schildbach/wallet/ui/ScanActivity$3;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    invoke-virtual {v7, v6}, Lde/schildbach/wallet/ui/ScanActivity;->showDialog(I)V

    goto :goto_2
.end method
