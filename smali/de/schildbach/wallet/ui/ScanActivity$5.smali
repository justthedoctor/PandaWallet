.class Lde/schildbach/wallet/ui/ScanActivity$5;
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
.field private final hints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final reader:Lcom/google/zxing/qrcode/QRCodeReader;

.field final synthetic this$0:Lde/schildbach/wallet/ui/ScanActivity;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/ScanActivity;)V
    .locals 2

    .prologue
    .line 292
    iput-object p1, p0, Lde/schildbach/wallet/ui/ScanActivity$5;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Lcom/google/zxing/qrcode/QRCodeReader;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V

    iput-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity$5;->reader:Lcom/google/zxing/qrcode/QRCodeReader;

    .line 294
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity$5;->hints:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$800(Lde/schildbach/wallet/ui/ScanActivity$5;[B)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/ScanActivity$5;
    .param p1, "x1"    # [B

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lde/schildbach/wallet/ui/ScanActivity$5;->decode([B)V

    return-void
.end method

.method private decode([B)V
    .locals 13
    .param p1, "data"    # [B

    .prologue
    .line 311
    iget-object v1, p0, Lde/schildbach/wallet/ui/ScanActivity$5;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    invoke-static {v1}, Lde/schildbach/wallet/ui/ScanActivity;->access$000(Lde/schildbach/wallet/ui/ScanActivity;)Lde/schildbach/wallet/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lde/schildbach/wallet/camera/CameraManager;->buildLuminanceSource([B)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object v10

    .line 312
    .local v10, "source":Lcom/google/zxing/PlanarYUVLuminanceSource;
    new-instance v8, Lcom/google/zxing/BinaryBitmap;

    new-instance v1, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v1, v10}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v8, v1}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 316
    .local v8, "bitmap":Lcom/google/zxing/BinaryBitmap;
    :try_start_0
    iget-object v1, p0, Lde/schildbach/wallet/ui/ScanActivity$5;->hints:Ljava/util/Map;

    sget-object v2, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    new-instance v4, Lde/schildbach/wallet/ui/ScanActivity$5$2;

    invoke-direct {v4, p0}, Lde/schildbach/wallet/ui/ScanActivity$5$2;-><init>(Lde/schildbach/wallet/ui/ScanActivity$5;)V

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v1, p0, Lde/schildbach/wallet/ui/ScanActivity$5;->reader:Lcom/google/zxing/qrcode/QRCodeReader;

    iget-object v2, p0, Lde/schildbach/wallet/ui/ScanActivity$5;->hints:Ljava/util/Map;

    invoke-virtual {v1, v8, v2}, Lcom/google/zxing/qrcode/QRCodeReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v9

    .line 333
    .local v9, "scanResult":Lcom/google/zxing/Result;
    invoke-virtual {v10}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getThumbnailWidth()I

    move-result v3

    .line 334
    .local v3, "thumbnailWidth":I
    invoke-virtual {v10}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getThumbnailHeight()I

    move-result v7

    .line 335
    .local v7, "thumbnailHeight":I
    int-to-float v1, v3

    invoke-virtual {v10}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v11, v1, v2

    .line 337
    .local v11, "thumbnailScaleFactor":F
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 338
    .local v0, "thumbnailImage":Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Lcom/google/zxing/PlanarYUVLuminanceSource;->renderThumbnail()[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 340
    iget-object v1, p0, Lde/schildbach/wallet/ui/ScanActivity$5;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    new-instance v2, Lde/schildbach/wallet/ui/ScanActivity$5$3;

    invoke-direct {v2, p0, v9, v0, v11}, Lde/schildbach/wallet/ui/ScanActivity$5$3;-><init>(Lde/schildbach/wallet/ui/ScanActivity$5;Lcom/google/zxing/Result;Landroid/graphics/Bitmap;F)V

    invoke-virtual {v1, v2}, Lde/schildbach/wallet/ui/ScanActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    iget-object v1, p0, Lde/schildbach/wallet/ui/ScanActivity$5;->reader:Lcom/google/zxing/qrcode/QRCodeReader;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/QRCodeReader;->reset()V

    .line 358
    .end local v0    # "thumbnailImage":Landroid/graphics/Bitmap;
    .end local v3    # "thumbnailWidth":I
    .end local v7    # "thumbnailHeight":I
    .end local v9    # "scanResult":Lcom/google/zxing/Result;
    .end local v11    # "thumbnailScaleFactor":F
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v12

    .line 352
    .local v12, "x":Lcom/google/zxing/ReaderException;
    :try_start_1
    iget-object v1, p0, Lde/schildbach/wallet/ui/ScanActivity$5;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    invoke-static {v1}, Lde/schildbach/wallet/ui/ScanActivity;->access$400(Lde/schildbach/wallet/ui/ScanActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lde/schildbach/wallet/ui/ScanActivity$5;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    invoke-static {v2}, Lde/schildbach/wallet/ui/ScanActivity;->access$500(Lde/schildbach/wallet/ui/ScanActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    iget-object v1, p0, Lde/schildbach/wallet/ui/ScanActivity$5;->reader:Lcom/google/zxing/qrcode/QRCodeReader;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/QRCodeReader;->reset()V

    goto :goto_0

    .end local v12    # "x":Lcom/google/zxing/ReaderException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lde/schildbach/wallet/ui/ScanActivity$5;->reader:Lcom/google/zxing/qrcode/QRCodeReader;

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/QRCodeReader;->reset()V

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lde/schildbach/wallet/ui/ScanActivity$5;->this$0:Lde/schildbach/wallet/ui/ScanActivity;

    invoke-static {v0}, Lde/schildbach/wallet/ui/ScanActivity;->access$000(Lde/schildbach/wallet/ui/ScanActivity;)Lde/schildbach/wallet/camera/CameraManager;

    move-result-object v0

    new-instance v1, Lde/schildbach/wallet/ui/ScanActivity$5$1;

    invoke-direct {v1, p0}, Lde/schildbach/wallet/ui/ScanActivity$5$1;-><init>(Lde/schildbach/wallet/ui/ScanActivity$5;)V

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/camera/CameraManager;->requestPreviewFrame(Landroid/hardware/Camera$PreviewCallback;)V

    .line 307
    return-void
.end method
