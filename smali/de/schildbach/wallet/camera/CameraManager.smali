.class public final Lde/schildbach/wallet/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final MAX_FRAME_SIZE:I = 0x258

.field private static final MAX_PREVIEW_PIXELS:I = 0xe1000

.field private static final MIN_FRAME_SIZE:I = 0xf0

.field private static final MIN_PREVIEW_PIXELS:I = 0x24b80

.field private static final log:Lorg/slf4j/Logger;

.field private static final numPixelComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private camera:Landroid/hardware/Camera;

.field private cameraResolution:Landroid/hardware/Camera$Size;

.field private frame:Landroid/graphics/Rect;

.field private framePreview:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lde/schildbach/wallet/camera/CameraManager;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/camera/CameraManager;->log:Lorg/slf4j/Logger;

    .line 146
    new-instance v0, Lde/schildbach/wallet/camera/CameraManager$1;

    invoke-direct {v0}, Lde/schildbach/wallet/camera/CameraManager$1;-><init>()V

    sput-object v0, Lde/schildbach/wallet/camera/CameraManager;->numPixelComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findBestPreviewSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;)Landroid/hardware/Camera$Size;
    .locals 22
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "surfaceResolution"    # Landroid/graphics/Rect;

    .prologue
    .line 165
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 166
    new-instance v17, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v21

    invoke-direct/range {v17 .. v21}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local p1    # "surfaceResolution":Landroid/graphics/Rect;
    .local v17, "surfaceResolution":Landroid/graphics/Rect;
    move-object/from16 p1, v17

    .line 168
    .end local v17    # "surfaceResolution":Landroid/graphics/Rect;
    .restart local p1    # "surfaceResolution":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v14, v18, v19

    .line 170
    .local v14, "screenAspectRatio":F
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v10

    .line 171
    .local v10, "rawSupportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v10, :cond_2

    .line 172
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v15

    .line 207
    :cond_1
    :goto_0
    return-object v15

    .line 175
    :cond_2
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 176
    .local v16, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    sget-object v18, Lde/schildbach/wallet/camera/CameraManager;->numPixelComparator:Ljava/util/Comparator;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 178
    const/4 v3, 0x0

    .line 179
    .local v3, "bestSize":Landroid/hardware/Camera$Size;
    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 181
    .local v4, "diff":F
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/Camera$Size;

    .line 183
    .local v15, "supportedPreviewSize":Landroid/hardware/Camera$Size;
    iget v13, v15, Landroid/hardware/Camera$Size;->width:I

    .line 184
    .local v13, "realWidth":I
    iget v11, v15, Landroid/hardware/Camera$Size;->height:I

    .line 185
    .local v11, "realHeight":I
    mul-int v12, v13, v11

    .line 186
    .local v12, "realPixels":I
    const v18, 0x24b80

    move/from16 v0, v18

    if-lt v12, v0, :cond_3

    const v18, 0xe1000

    move/from16 v0, v18

    if-gt v12, v0, :cond_3

    .line 189
    if-ge v13, v11, :cond_5

    const/4 v6, 0x1

    .line 190
    .local v6, "isCandidatePortrait":Z
    :goto_2
    if-eqz v6, :cond_6

    move v8, v11

    .line 191
    .local v8, "maybeFlippedWidth":I
    :goto_3
    if-eqz v6, :cond_7

    move v7, v13

    .line 192
    .local v7, "maybeFlippedHeight":I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v18

    move/from16 v0, v18

    if-ne v8, v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v18

    move/from16 v0, v18

    if-eq v7, v0, :cond_1

    .line 195
    :cond_4
    int-to-float v0, v8

    move/from16 v18, v0

    int-to-float v0, v7

    move/from16 v19, v0

    div-float v2, v18, v19

    .line 196
    .local v2, "aspectRatio":F
    sub-float v18, v2, v14

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 197
    .local v9, "newDiff":F
    cmpg-float v18, v9, v4

    if-gez v18, :cond_3

    .line 199
    move-object v3, v15

    .line 200
    move v4, v9

    goto :goto_1

    .line 189
    .end local v2    # "aspectRatio":F
    .end local v6    # "isCandidatePortrait":Z
    .end local v7    # "maybeFlippedHeight":I
    .end local v8    # "maybeFlippedWidth":I
    .end local v9    # "newDiff":F
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .restart local v6    # "isCandidatePortrait":Z
    :cond_6
    move v8, v13

    .line 190
    goto :goto_3

    .restart local v8    # "maybeFlippedWidth":I
    :cond_7
    move v7, v11

    .line 191
    goto :goto_4

    .line 204
    .end local v6    # "isCandidatePortrait":Z
    .end local v8    # "maybeFlippedWidth":I
    .end local v11    # "realHeight":I
    .end local v12    # "realPixels":I
    .end local v13    # "realWidth":I
    .end local v15    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_8
    if-eqz v3, :cond_9

    move-object v15, v3

    .line 205
    goto :goto_0

    .line 207
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v15

    goto :goto_0
.end method

.method private static varargs findValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "valuesToFind"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 284
    .local v3, "valueToFind":Ljava/lang/String;
    invoke-interface {p0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    .end local v3    # "valueToFind":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 283
    .restart local v3    # "valueToFind":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    .end local v3    # "valueToFind":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static getTorchEnabled(Landroid/hardware/Camera;)Z
    .locals 4
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v2, 0x0

    .line 248
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 249
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz v1, :cond_1

    .line 251
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "flashMode":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v3, "on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "torch"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 255
    .end local v0    # "flashMode":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private static setDesiredCameraParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Size;Z)V
    .locals 8
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "cameraResolution"    # Landroid/hardware/Camera$Size;
    .param p2, "continuousAutoFocus"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 213
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 214
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_0

    .line 227
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    .line 218
    .local v2, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "continuous-picture"

    aput-object v4, v3, v5

    const-string v4, "continuous-video"

    aput-object v4, v3, v6

    const-string v4, "auto"

    aput-object v4, v3, v7

    const/4 v4, 0x3

    const-string v5, "macro"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lde/schildbach/wallet/camera/CameraManager;->findValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "focusMode":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 224
    :cond_1
    iget v3, p1, Landroid/hardware/Camera$Size;->width:I

    iget v4, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 226
    invoke-virtual {p0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 218
    .end local v0    # "focusMode":Ljava/lang/String;
    :cond_2
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "auto"

    aput-object v4, v3, v5

    const-string v4, "macro"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lde/schildbach/wallet/camera/CameraManager;->findValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static setTorchEnabled(Landroid/hardware/Camera;Z)V
    .locals 7
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "enabled"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 260
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 262
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    .line 263
    .local v2, "supportedFlashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 266
    if-eqz p1, :cond_1

    .line 267
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "torch"

    aput-object v4, v3, v5

    const-string v4, "on"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lde/schildbach/wallet/camera/CameraManager;->findValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "flashMode":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 275
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 279
    .end local v0    # "flashMode":Ljava/lang/String;
    :cond_0
    return-void

    .line 269
    :cond_1
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "off"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lde/schildbach/wallet/camera/CameraManager;->findValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "flashMode":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public buildLuminanceSource([B)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 9
    .param p1, "data"    # [B

    .prologue
    .line 236
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget-object v1, p0, Lde/schildbach/wallet/camera/CameraManager;->cameraResolution:Landroid/hardware/Camera$Size;

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v1, p0, Lde/schildbach/wallet/camera/CameraManager;->cameraResolution:Landroid/hardware/Camera$Size;

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    iget-object v1, p0, Lde/schildbach/wallet/camera/CameraManager;->framePreview:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lde/schildbach/wallet/camera/CameraManager;->framePreview:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lde/schildbach/wallet/camera/CameraManager;->framePreview:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v1, p0, Lde/schildbach/wallet/camera/CameraManager;->framePreview:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lde/schildbach/wallet/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lde/schildbach/wallet/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 142
    iget-object v0, p0, Lde/schildbach/wallet/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 144
    :cond_0
    return-void
.end method

.method public getFrame()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lde/schildbach/wallet/camera/CameraManager;->frame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFramePreview()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lde/schildbach/wallet/camera/CameraManager;->framePreview:Landroid/graphics/Rect;

    return-object v0
.end method

.method public open(Landroid/view/SurfaceHolder;Z)Landroid/hardware/Camera;
    .locals 24
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "continuousAutoFocus"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/schildbach/wallet/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/camera/CameraManager;->camera:Landroid/hardware/Camera;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 74
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    .line 75
    .local v3, "cameraCount":I
    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 78
    .local v4, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_0

    .line 80
    invoke-static {v6, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 81
    iget v0, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 83
    invoke-static {v6}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/schildbach/wallet/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 89
    .end local v3    # "cameraCount":I
    .end local v4    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    .end local v6    # "i":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/camera/CameraManager;->camera:Landroid/hardware/Camera;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/camera/CameraManager;->camera:Landroid/hardware/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    .line 93
    .local v8, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-interface/range {p1 .. p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v12

    .line 94
    .local v12, "surfaceFrame":Landroid/graphics/Rect;
    invoke-static {v8, v12}, Lde/schildbach/wallet/camera/CameraManager;->findBestPreviewSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Rect;)Landroid/hardware/Camera$Size;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/schildbach/wallet/camera/CameraManager;->cameraResolution:Landroid/hardware/Camera$Size;

    .line 96
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v14

    .line 97
    .local v14, "surfaceWidth":I
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v13

    .line 99
    .local v13, "surfaceHeight":I
    mul-int/lit8 v18, v14, 0x2

    div-int/lit8 v18, v18, 0x3

    mul-int/lit8 v19, v13, 0x2

    div-int/lit8 v19, v19, 0x3

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 100
    .local v10, "rawSize":I
    const/16 v18, 0xf0

    const/16 v19, 0x258

    move/from16 v0, v19

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 102
    .local v5, "frameSize":I
    sub-int v18, v14, v5

    div-int/lit8 v7, v18, 0x2

    .line 103
    .local v7, "leftOffset":I
    sub-int v18, v13, v5

    div-int/lit8 v15, v18, 0x2

    .line 104
    .local v15, "topOffset":I
    new-instance v18, Landroid/graphics/Rect;

    add-int v19, v7, v5

    add-int v20, v15, v5

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v7, v15, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/schildbach/wallet/camera/CameraManager;->frame:Landroid/graphics/Rect;

    .line 105
    new-instance v18, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/camera/CameraManager;->frame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/camera/CameraManager;->cameraResolution:Landroid/hardware/Camera$Size;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    div-int v19, v19, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/camera/CameraManager;->frame:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/camera/CameraManager;->cameraResolution:Landroid/hardware/Camera$Size;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    div-int v20, v20, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/camera/CameraManager;->frame:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/camera/CameraManager;->cameraResolution:Landroid/hardware/Camera$Size;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v22, v0

    mul-int v21, v21, v22

    div-int v21, v21, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/camera/CameraManager;->frame:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/camera/CameraManager;->cameraResolution:Landroid/hardware/Camera$Size;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    div-int v22, v22, v13

    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/schildbach/wallet/camera/CameraManager;->framePreview:Landroid/graphics/Rect;

    .line 108
    if-nez v8, :cond_3

    const/4 v11, 0x0

    .line 112
    .local v11, "savedParameters":Ljava/lang/String;
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/camera/CameraManager;->camera:Landroid/hardware/Camera;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/camera/CameraManager;->cameraResolution:Landroid/hardware/Camera$Size;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lde/schildbach/wallet/camera/CameraManager;->setDesiredCameraParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Size;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/camera/CameraManager;->camera:Landroid/hardware/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera;->startPreview()V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/camera/CameraManager;->camera:Landroid/hardware/Camera;

    move-object/from16 v18, v0

    return-object v18

    .line 78
    .end local v5    # "frameSize":I
    .end local v7    # "leftOffset":I
    .end local v8    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v10    # "rawSize":I
    .end local v11    # "savedParameters":Ljava/lang/String;
    .end local v12    # "surfaceFrame":Landroid/graphics/Rect;
    .end local v13    # "surfaceHeight":I
    .end local v14    # "surfaceWidth":I
    .end local v15    # "topOffset":I
    .restart local v3    # "cameraCount":I
    .restart local v4    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    .restart local v6    # "i":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 108
    .end local v3    # "cameraCount":I
    .end local v4    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    .end local v6    # "i":I
    .restart local v5    # "frameSize":I
    .restart local v7    # "leftOffset":I
    .restart local v8    # "parameters":Landroid/hardware/Camera$Parameters;
    .restart local v10    # "rawSize":I
    .restart local v12    # "surfaceFrame":Landroid/graphics/Rect;
    .restart local v13    # "surfaceHeight":I
    .restart local v14    # "surfaceWidth":I
    .restart local v15    # "topOffset":I
    :cond_3
    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 114
    .restart local v11    # "savedParameters":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 116
    .local v16, "x":Ljava/lang/RuntimeException;
    if-eqz v11, :cond_1

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/camera/CameraManager;->camera:Landroid/hardware/Camera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    .line 119
    .local v9, "parameters2":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v9, v11}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 122
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/camera/CameraManager;->camera:Landroid/hardware/Camera;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/camera/CameraManager;->camera:Landroid/hardware/Camera;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/camera/CameraManager;->cameraResolution:Landroid/hardware/Camera$Size;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lde/schildbach/wallet/camera/CameraManager;->setDesiredCameraParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Size;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 125
    :catch_1
    move-exception v17

    .line 127
    .local v17, "x2":Ljava/lang/RuntimeException;
    sget-object v18, Lde/schildbach/wallet/camera/CameraManager;->log:Lorg/slf4j/Logger;

    const-string v19, "problem setting camera parameters"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public requestPreviewFrame(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 231
    iget-object v0, p0, Lde/schildbach/wallet/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 232
    return-void
.end method

.method public setTorch(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 242
    iget-object v0, p0, Lde/schildbach/wallet/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-static {v0}, Lde/schildbach/wallet/camera/CameraManager;->getTorchEnabled(Landroid/hardware/Camera;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 243
    iget-object v0, p0, Lde/schildbach/wallet/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-static {v0, p1}, Lde/schildbach/wallet/camera/CameraManager;->setTorchEnabled(Landroid/hardware/Camera;Z)V

    .line 244
    :cond_0
    return-void
.end method
