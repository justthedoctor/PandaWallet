.class public final Lde/schildbach/wallet/ui/ScanActivity;
.super Landroid/app/Activity;
.source "ScanActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/schildbach/wallet/ui/ScanActivity$AutoFocusRunnable;
    }
.end annotation


# static fields
.field private static final AUTO_FOCUS_INTERVAL_MS:J = 0x9c4L

.field private static final DIALOG_CAMERA_PROBLEM:I = 0x0

.field private static DISABLE_CONTINUOUS_AUTOFOCUS:Z = false

.field public static final INTENT_EXTRA_RESULT:Ljava/lang/String; = "result"

.field private static final VIBRATE_DURATION:J = 0x32L

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private cameraHandler:Landroid/os/Handler;

.field private final cameraManager:Lde/schildbach/wallet/camera/CameraManager;

.field private cameraThread:Landroid/os/HandlerThread;

.field private final closeRunnable:Ljava/lang/Runnable;

.field private final fetchAndDecodeRunnable:Ljava/lang/Runnable;

.field private final openRunnable:Ljava/lang/Runnable;

.field private scannerView:Lde/schildbach/wallet/ui/ScannerView;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-I9100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SGH-T989"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SGH-T989D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SAMSUNG-SGH-I727"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-I9300"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-N7000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lde/schildbach/wallet/ui/ScanActivity;->DISABLE_CONTINUOUS_AUTOFOCUS:Z

    .line 89
    const-class v0, Lde/schildbach/wallet/ui/ScanActivity;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/ui/ScanActivity;->log:Lorg/slf4j/Logger;

    return-void

    .line 82
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    new-instance v0, Lde/schildbach/wallet/camera/CameraManager;

    invoke-direct {v0}, Lde/schildbach/wallet/camera/CameraManager;-><init>()V

    iput-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity;->cameraManager:Lde/schildbach/wallet/camera/CameraManager;

    .line 211
    new-instance v0, Lde/schildbach/wallet/ui/ScanActivity$3;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/ScanActivity$3;-><init>(Lde/schildbach/wallet/ui/ScanActivity;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity;->openRunnable:Ljava/lang/Runnable;

    .line 254
    new-instance v0, Lde/schildbach/wallet/ui/ScanActivity$4;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/ScanActivity$4;-><init>(Lde/schildbach/wallet/ui/ScanActivity;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity;->closeRunnable:Ljava/lang/Runnable;

    .line 291
    new-instance v0, Lde/schildbach/wallet/ui/ScanActivity$5;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/ScanActivity$5;-><init>(Lde/schildbach/wallet/ui/ScanActivity;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity;->fetchAndDecodeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lde/schildbach/wallet/ui/ScanActivity;)Lde/schildbach/wallet/camera/CameraManager;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/ScanActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity;->cameraManager:Lde/schildbach/wallet/camera/CameraManager;

    return-object v0
.end method

.method static synthetic access$100(Lde/schildbach/wallet/ui/ScanActivity;)Landroid/view/SurfaceHolder;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/ScanActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lde/schildbach/wallet/ui/ScanActivity;->DISABLE_CONTINUOUS_AUTOFOCUS:Z

    return v0
.end method

.method static synthetic access$300(Lde/schildbach/wallet/ui/ScanActivity;)Lde/schildbach/wallet/ui/ScannerView;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/ScanActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity;->scannerView:Lde/schildbach/wallet/ui/ScannerView;

    return-object v0
.end method

.method static synthetic access$400(Lde/schildbach/wallet/ui/ScanActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/ScanActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity;->cameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lde/schildbach/wallet/ui/ScanActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/ScanActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity;->fetchAndDecodeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lde/schildbach/wallet/ui/ScanActivity;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$700(Lde/schildbach/wallet/ui/ScanActivity;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/ScanActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity;->cameraThread:Landroid/os/HandlerThread;

    return-object v0
.end method


# virtual methods
.method public handleResult(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;F)V
    .locals 11
    .param p1, "scanResult"    # Lcom/google/zxing/Result;
    .param p2, "thumbnailImage"    # Landroid/graphics/Bitmap;
    .param p3, "thumbnailScaleFactor"    # F

    .prologue
    .line 178
    iget-object v8, p0, Lde/schildbach/wallet/ui/ScanActivity;->vibrator:Landroid/os/Vibrator;

    const-wide/16 v9, 0x32

    invoke-virtual {v8, v9, v10}, Landroid/os/Vibrator;->vibrate(J)V

    .line 181
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    .line 182
    .local v6, "points":[Lcom/google/zxing/ResultPoint;
    if-eqz v6, :cond_0

    array-length v8, v6

    if-lez v8, :cond_0

    .line 184
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 185
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08001a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 188
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 189
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, p3, p3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 190
    move-object v0, v6

    .local v0, "arr$":[Lcom/google/zxing/ResultPoint;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 191
    .local v5, "point":Lcom/google/zxing/ResultPoint;
    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    invoke-virtual {v1, v8, v9, v4}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    .end local v0    # "arr$":[Lcom/google/zxing/ResultPoint;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "point":Lcom/google/zxing/ResultPoint;
    :cond_0
    iget-object v8, p0, Lde/schildbach/wallet/ui/ScanActivity;->scannerView:Lde/schildbach/wallet/ui/ScannerView;

    invoke-virtual {v8, p2}, Lde/schildbach/wallet/ui/ScannerView;->drawResultBitmap(Landroid/graphics/Bitmap;)V

    .line 196
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 197
    .local v7, "result":Landroid/content/Intent;
    const-string v8, "result"

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const/4 v8, -0x1

    invoke-virtual {p0, v8, v7}, Lde/schildbach/wallet/ui/ScanActivity;->setResult(ILandroid/content/Intent;)V

    .line 201
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    new-instance v9, Lde/schildbach/wallet/ui/ScanActivity$2;

    invoke-direct {v9, p0}, Lde/schildbach/wallet/ui/ScanActivity$2;-><init>(Lde/schildbach/wallet/ui/ScanActivity;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 209
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/ScanActivity;->setResult(I)V

    .line 148
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/ScanActivity;->finish()V

    .line 149
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/ScanActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity;->vibrator:Landroid/os/Vibrator;

    .line 98
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/ScanActivity;->setContentView(I)V

    .line 100
    const v0, 0x7f06005a

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/ScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/schildbach/wallet/ui/ScannerView;

    iput-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity;->scannerView:Lde/schildbach/wallet/ui/ScannerView;

    .line 101
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 364
    if-nez p1, :cond_0

    .line 366
    const v1, 0x7f0b00b2

    invoke-static {p0, v1}, Lde/schildbach/wallet/ui/DialogBuilder;->warn(Landroid/content/Context;I)Lde/schildbach/wallet/ui/DialogBuilder;

    move-result-object v0

    .line 367
    .local v0, "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    const v1, 0x7f0b00b3

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/DialogBuilder;->setMessage(I)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 368
    new-instance v1, Lde/schildbach/wallet/ui/ScanActivity$6;

    invoke-direct {v1, p0}, Lde/schildbach/wallet/ui/ScanActivity$6;-><init>(Lde/schildbach/wallet/ui/ScanActivity;)V

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/DialogBuilder;->singleDismissButton(Landroid/content/DialogInterface$OnClickListener;)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 376
    new-instance v1, Lde/schildbach/wallet/ui/ScanActivity$7;

    invoke-direct {v1, p0}, Lde/schildbach/wallet/ui/ScanActivity$7;-><init>(Lde/schildbach/wallet/ui/ScanActivity;)V

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/DialogBuilder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 385
    invoke-virtual {v0}, Lde/schildbach/wallet/ui/DialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 389
    .end local v0    # "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 154
    sparse-switch p1, :sswitch_data_0

    .line 173
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 162
    :sswitch_1
    iget-object v1, p0, Lde/schildbach/wallet/ui/ScanActivity;->cameraHandler:Landroid/os/Handler;

    new-instance v2, Lde/schildbach/wallet/ui/ScanActivity$1;

    invoke-direct {v2, p0, p1}, Lde/schildbach/wallet/ui/ScanActivity$1;-><init>(Lde/schildbach/wallet/ui/ScanActivity;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 154
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity;->cameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lde/schildbach/wallet/ui/ScanActivity;->closeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    iget-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 142
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 108
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "cameraThread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lde/schildbach/wallet/ui/ScanActivity;->cameraThread:Landroid/os/HandlerThread;

    .line 109
    iget-object v1, p0, Lde/schildbach/wallet/ui/ScanActivity;->cameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lde/schildbach/wallet/ui/ScanActivity;->cameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lde/schildbach/wallet/ui/ScanActivity;->cameraHandler:Landroid/os/Handler;

    .line 112
    const v1, 0x7f060059

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/ScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 113
    .local v0, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lde/schildbach/wallet/ui/ScanActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 114
    iget-object v1, p0, Lde/schildbach/wallet/ui/ScanActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 115
    iget-object v1, p0, Lde/schildbach/wallet/ui/ScanActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 116
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 132
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 121
    iget-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity;->cameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lde/schildbach/wallet/ui/ScanActivity;->openRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 127
    return-void
.end method
