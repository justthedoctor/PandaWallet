.class public Lde/schildbach/wallet/ui/ScannerView;
.super Landroid/view/View;
.source "ScannerView.java"


# static fields
.field private static final DOT_OPACITY:I = 0xa0

.field private static final DOT_SIZE:I = 0x8

.field private static final DOT_TTL_MS:I = 0x1f4

.field private static final LASER_ANIMATION_DELAY_MS:J = 0x64L


# instance fields
.field private final dotPaint:Landroid/graphics/Paint;

.field private final dots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private frame:Landroid/graphics/Rect;

.field private framePreview:Landroid/graphics/Rect;

.field private final laserPaint:Landroid/graphics/Paint;

.field private final maskColor:I

.field private final maskPaint:Landroid/graphics/Paint;

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private final resultColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v5, 0x41000000    # 8.0f

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v3, Ljava/util/HashMap;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lde/schildbach/wallet/ui/ScannerView;->dots:Ljava/util/Map;

    .line 62
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/ScannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 63
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f080016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lde/schildbach/wallet/ui/ScannerView;->maskColor:I

    .line 64
    const v3, 0x7f080019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lde/schildbach/wallet/ui/ScannerView;->resultColor:I

    .line 65
    const v3, 0x7f080017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 66
    .local v1, "laserColor":I
    const v3, 0x7f080018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 68
    .local v0, "dotColor":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lde/schildbach/wallet/ui/ScannerView;->maskPaint:Landroid/graphics/Paint;

    .line 69
    iget-object v3, p0, Lde/schildbach/wallet/ui/ScannerView;->maskPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lde/schildbach/wallet/ui/ScannerView;->laserPaint:Landroid/graphics/Paint;

    .line 72
    iget-object v3, p0, Lde/schildbach/wallet/ui/ScannerView;->laserPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v3, p0, Lde/schildbach/wallet/ui/ScannerView;->laserPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    iget-object v3, p0, Lde/schildbach/wallet/ui/ScannerView;->laserPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lde/schildbach/wallet/ui/ScannerView;->dotPaint:Landroid/graphics/Paint;

    .line 77
    iget-object v3, p0, Lde/schildbach/wallet/ui/ScannerView;->dotPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iget-object v3, p0, Lde/schildbach/wallet/ui/ScannerView;->dotPaint:Landroid/graphics/Paint;

    const/16 v4, 0xa0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 79
    iget-object v3, p0, Lde/schildbach/wallet/ui/ScannerView;->dotPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    iget-object v3, p0, Lde/schildbach/wallet/ui/ScannerView;->dotPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    iget-object v3, p0, Lde/schildbach/wallet/ui/ScannerView;->dotPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    return-void
.end method


# virtual methods
.method public addDot(Lcom/google/zxing/ResultPoint;)V
    .locals 3
    .param p1, "dot"    # Lcom/google/zxing/ResultPoint;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 101
    iget-object v0, p0, Lde/schildbach/wallet/ui/ScannerView;->dots:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/ScannerView;->invalidate()V

    .line 104
    return-void
.end method

.method public drawResultBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 94
    iput-object p1, p0, Lde/schildbach/wallet/ui/ScannerView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 96
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/ScannerView;->invalidate()V

    .line 97
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 109
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/schildbach/wallet/ui/ScannerView;->frame:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 114
    .local v15, "now":J
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v20

    .line 115
    .local v20, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    .line 118
    .local v12, "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/schildbach/wallet/ui/ScannerView;->maskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v1, v0, Lde/schildbach/wallet/ui/ScannerView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lde/schildbach/wallet/ui/ScannerView;->resultColor:I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, v20

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lde/schildbach/wallet/ui/ScannerView;->frame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lde/schildbach/wallet/ui/ScannerView;->maskPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 120
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lde/schildbach/wallet/ui/ScannerView;->frame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lde/schildbach/wallet/ui/ScannerView;->frame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lde/schildbach/wallet/ui/ScannerView;->frame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lde/schildbach/wallet/ui/ScannerView;->maskPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/schildbach/wallet/ui/ScannerView;->frame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lde/schildbach/wallet/ui/ScannerView;->frame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    move/from16 v0, v20

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lde/schildbach/wallet/ui/ScannerView;->frame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lde/schildbach/wallet/ui/ScannerView;->maskPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 122
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lde/schildbach/wallet/ui/ScannerView;->frame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v3, v1

    move/from16 v0, v20

    int-to-float v4, v0

    int-to-float v5, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lde/schildbach/wallet/ui/ScannerView;->maskPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/schildbach/wallet/ui/ScannerView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 126
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/schildbach/wallet/ui/ScannerView;->resultBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/schildbach/wallet/ui/ScannerView;->frame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lde/schildbach/wallet/ui/ScannerView;->maskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 118
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lde/schildbach/wallet/ui/ScannerView;->maskColor:I

    goto/16 :goto_1

    .line 131
    :cond_2
    const-wide/16 v1, 0x258

    div-long v1, v15, v1

    const-wide/16 v3, 0x2

    rem-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    const/4 v14, 0x1

    .line 132
    .local v14, "laserPhase":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/schildbach/wallet/ui/ScannerView;->laserPaint:Landroid/graphics/Paint;

    if-eqz v14, :cond_4

    const/16 v1, 0xa0

    :goto_3
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 133
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/schildbach/wallet/ui/ScannerView;->frame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/schildbach/wallet/ui/ScannerView;->laserPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/schildbach/wallet/ui/ScannerView;->frame:Landroid/graphics/Rect;

    iget v10, v1, Landroid/graphics/Rect;->left:I

    .line 137
    .local v10, "frameLeft":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/schildbach/wallet/ui/ScannerView;->frame:Landroid/graphics/Rect;

    iget v11, v1, Landroid/graphics/Rect;->top:I

    .line 138
    .local v11, "frameTop":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/schildbach/wallet/ui/ScannerView;->frame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/schildbach/wallet/ui/ScannerView;->framePreview:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v18, v1, v2

    .line 139
    .local v18, "scaleX":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/schildbach/wallet/ui/ScannerView;->frame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lde/schildbach/wallet/ui/ScannerView;->framePreview:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v19, v1, v2

    .line 141
    .local v19, "scaleY":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/schildbach/wallet/ui/ScannerView;->dots:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/google/zxing/ResultPoint;Ljava/lang/Long;>;>;"
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 143
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 144
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/zxing/ResultPoint;Ljava/lang/Long;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v7, v15, v1

    .line 145
    .local v7, "age":J
    const-wide/16 v1, 0x1f4

    cmp-long v1, v7, v1

    if-gez v1, :cond_5

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Lde/schildbach/wallet/ui/ScannerView;->dotPaint:Landroid/graphics/Paint;

    const-wide/16 v2, 0x1f4

    sub-long/2addr v2, v7

    const-wide/16 v4, 0x100

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 149
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/zxing/ResultPoint;

    .line 150
    .local v17, "point":Lcom/google/zxing/ResultPoint;
    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    mul-float v1, v1, v18

    float-to-int v1, v1

    add-int/2addr v1, v10

    int-to-float v1, v1

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    mul-float v2, v2, v19

    float-to-int v2, v2

    add-int/2addr v2, v11

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lde/schildbach/wallet/ui/ScannerView;->dotPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 131
    .end local v7    # "age":J
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/zxing/ResultPoint;Ljava/lang/Long;>;"
    .end local v10    # "frameLeft":I
    .end local v11    # "frameTop":I
    .end local v13    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/google/zxing/ResultPoint;Ljava/lang/Long;>;>;"
    .end local v14    # "laserPhase":Z
    .end local v17    # "point":Lcom/google/zxing/ResultPoint;
    .end local v18    # "scaleX":F
    .end local v19    # "scaleY":F
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 132
    .restart local v14    # "laserPhase":Z
    :cond_4
    const/16 v1, 0xff

    goto/16 :goto_3

    .line 154
    .restart local v7    # "age":J
    .restart local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/zxing/ResultPoint;Ljava/lang/Long;>;"
    .restart local v10    # "frameLeft":I
    .restart local v11    # "frameTop":I
    .restart local v13    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/google/zxing/ResultPoint;Ljava/lang/Long;>;>;"
    .restart local v18    # "scaleX":F
    .restart local v19    # "scaleY":F
    :cond_5
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 159
    .end local v7    # "age":J
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/zxing/ResultPoint;Ljava/lang/Long;>;"
    :cond_6
    const-wide/16 v1, 0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lde/schildbach/wallet/ui/ScannerView;->postInvalidateDelayed(J)V

    goto/16 :goto_0
.end method

.method public setFraming(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "frame"    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "framePreview"    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 86
    iput-object p1, p0, Lde/schildbach/wallet/ui/ScannerView;->frame:Landroid/graphics/Rect;

    .line 87
    iput-object p2, p0, Lde/schildbach/wallet/ui/ScannerView;->framePreview:Landroid/graphics/Rect;

    .line 89
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/ScannerView;->invalidate()V

    .line 90
    return-void
.end method
