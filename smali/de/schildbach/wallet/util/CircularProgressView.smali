.class public Lde/schildbach/wallet/util/CircularProgressView;
.super Landroid/view/View;
.source "CircularProgressView.java"


# instance fields
.field private final fillPaint:Landroid/graphics/Paint;

.field private height:I

.field private maxProgress:I

.field private maxSize:I

.field private final path:Landroid/graphics/Path;

.field private progress:I

.field private size:I

.field private final strokePaint:Landroid/graphics/Paint;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput v3, p0, Lde/schildbach/wallet/util/CircularProgressView;->progress:I

    .line 38
    iput v3, p0, Lde/schildbach/wallet/util/CircularProgressView;->maxProgress:I

    .line 39
    iput v3, p0, Lde/schildbach/wallet/util/CircularProgressView;->size:I

    .line 40
    iput v3, p0, Lde/schildbach/wallet/util/CircularProgressView;->maxSize:I

    .line 41
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lde/schildbach/wallet/util/CircularProgressView;->path:Landroid/graphics/Path;

    .line 42
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lde/schildbach/wallet/util/CircularProgressView;->fillPaint:Landroid/graphics/Paint;

    .line 43
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lde/schildbach/wallet/util/CircularProgressView;->strokePaint:Landroid/graphics/Paint;

    .line 49
    invoke-virtual {p0}, Lde/schildbach/wallet/util/CircularProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 51
    .local v0, "density":F
    iget-object v1, p0, Lde/schildbach/wallet/util/CircularProgressView;->fillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v1, p0, Lde/schildbach/wallet/util/CircularProgressView;->fillPaint:Landroid/graphics/Paint;

    const-string v2, "#44ff44"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v1, p0, Lde/schildbach/wallet/util/CircularProgressView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    iget-object v1, p0, Lde/schildbach/wallet/util/CircularProgressView;->strokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v1, p0, Lde/schildbach/wallet/util/CircularProgressView;->strokePaint:Landroid/graphics/Paint;

    const v2, -0xbbbbbc

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v1, p0, Lde/schildbach/wallet/util/CircularProgressView;->strokePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget-object v1, p0, Lde/schildbach/wallet/util/CircularProgressView;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    return-void
.end method

.method private updatePath(II)V
    .locals 11
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 119
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    div-float v2, v5, v8

    .line 120
    .local v2, "maxAbsSize":F
    iget v5, p0, Lde/schildbach/wallet/util/CircularProgressView;->size:I

    iget v6, p0, Lde/schildbach/wallet/util/CircularProgressView;->maxSize:I

    if-ge v5, v6, :cond_0

    iget v5, p0, Lde/schildbach/wallet/util/CircularProgressView;->size:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    iget v6, p0, Lde/schildbach/wallet/util/CircularProgressView;->maxSize:I

    int-to-float v6, v6

    div-float v0, v5, v6

    .line 122
    .local v0, "absSize":F
    :goto_0
    iget-object v5, p0, Lde/schildbach/wallet/util/CircularProgressView;->path:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 124
    iget v5, p0, Lde/schildbach/wallet/util/CircularProgressView;->progress:I

    if-nez v5, :cond_1

    .line 126
    iget-object v5, p0, Lde/schildbach/wallet/util/CircularProgressView;->path:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 142
    :goto_1
    return-void

    .line 120
    .end local v0    # "absSize":F
    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v0, v2, v5

    goto :goto_0

    .line 128
    .restart local v0    # "absSize":F
    :cond_1
    iget v5, p0, Lde/schildbach/wallet/util/CircularProgressView;->progress:I

    iget v6, p0, Lde/schildbach/wallet/util/CircularProgressView;->maxProgress:I

    if-ge v5, v6, :cond_2

    .line 130
    iget v5, p0, Lde/schildbach/wallet/util/CircularProgressView;->progress:I

    mul-int/lit16 v5, v5, 0x168

    iget v6, p0, Lde/schildbach/wallet/util/CircularProgressView;->maxProgress:I

    div-int/2addr v5, v6

    int-to-float v1, v5

    .line 131
    .local v1, "angle":F
    int-to-float v5, p1

    div-float v3, v5, v8

    .line 132
    .local v3, "x":F
    int-to-float v5, p2

    div-float v4, v5, v8

    .line 134
    .local v4, "y":F
    iget-object v5, p0, Lde/schildbach/wallet/util/CircularProgressView;->path:Landroid/graphics/Path;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 135
    iget-object v5, p0, Lde/schildbach/wallet/util/CircularProgressView;->path:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/RectF;

    sub-float v7, v3, v0

    sub-float v8, v4, v0

    add-float v9, v3, v0

    add-float v10, v4, v0

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v7, 0x43870000    # 270.0f

    invoke-virtual {v5, v6, v7, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 136
    iget-object v5, p0, Lde/schildbach/wallet/util/CircularProgressView;->path:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    goto :goto_1

    .line 140
    .end local v1    # "angle":F
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_2
    iget-object v5, p0, Lde/schildbach/wallet/util/CircularProgressView;->path:Landroid/graphics/Path;

    int-to-float v6, p1

    div-float/2addr v6, v8

    int-to-float v7, p2

    div-float/2addr v7, v8

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v7, v0, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_1
.end method


# virtual methods
.method public getBaseline()I
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lde/schildbach/wallet/util/CircularProgressView;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 66
    iget-object v0, p0, Lde/schildbach/wallet/util/CircularProgressView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lde/schildbach/wallet/util/CircularProgressView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 67
    iget-object v0, p0, Lde/schildbach/wallet/util/CircularProgressView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lde/schildbach/wallet/util/CircularProgressView;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 68
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "wMeasureSpec"    # I
    .param p2, "hMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    .line 147
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 148
    .local v2, "wMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 150
    .local v3, "wSize":I
    if-ne v2, v6, :cond_2

    .line 151
    iput v3, p0, Lde/schildbach/wallet/util/CircularProgressView;->width:I

    .line 155
    :cond_0
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 156
    .local v0, "hMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 158
    .local v1, "hSize":I
    if-ne v0, v6, :cond_3

    .line 159
    iput v1, p0, Lde/schildbach/wallet/util/CircularProgressView;->height:I

    .line 163
    :cond_1
    :goto_1
    iget v4, p0, Lde/schildbach/wallet/util/CircularProgressView;->width:I

    iget v5, p0, Lde/schildbach/wallet/util/CircularProgressView;->height:I

    invoke-virtual {p0, v4, v5}, Lde/schildbach/wallet/util/CircularProgressView;->setMeasuredDimension(II)V

    .line 164
    return-void

    .line 152
    .end local v0    # "hMode":I
    .end local v1    # "hSize":I
    :cond_2
    if-ne v2, v5, :cond_0

    .line 153
    iget v4, p0, Lde/schildbach/wallet/util/CircularProgressView;->width:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lde/schildbach/wallet/util/CircularProgressView;->width:I

    goto :goto_0

    .line 160
    .restart local v0    # "hMode":I
    .restart local v1    # "hSize":I
    :cond_3
    if-ne v0, v5, :cond_1

    .line 161
    iget v4, p0, Lde/schildbach/wallet/util/CircularProgressView;->height:I

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lde/schildbach/wallet/util/CircularProgressView;->height:I

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lde/schildbach/wallet/util/CircularProgressView;->updatePath(II)V

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 115
    return-void
.end method

.method public setColors(II)V
    .locals 1
    .param p1, "fillColor"    # I
    .param p2, "strokeColor"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lde/schildbach/wallet/util/CircularProgressView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v0, p0, Lde/schildbach/wallet/util/CircularProgressView;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    invoke-virtual {p0}, Lde/schildbach/wallet/util/CircularProgressView;->postInvalidate()V

    .line 75
    return-void
.end method

.method public setMaxProgress(I)V
    .locals 2
    .param p1, "maxProgress"    # I

    .prologue
    .line 87
    iput p1, p0, Lde/schildbach/wallet/util/CircularProgressView;->maxProgress:I

    .line 89
    invoke-virtual {p0}, Lde/schildbach/wallet/util/CircularProgressView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lde/schildbach/wallet/util/CircularProgressView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lde/schildbach/wallet/util/CircularProgressView;->updatePath(II)V

    .line 90
    invoke-virtual {p0}, Lde/schildbach/wallet/util/CircularProgressView;->postInvalidate()V

    .line 91
    return-void
.end method

.method public setMaxSize(I)V
    .locals 2
    .param p1, "maxSize"    # I

    .prologue
    .line 103
    iput p1, p0, Lde/schildbach/wallet/util/CircularProgressView;->maxSize:I

    .line 105
    invoke-virtual {p0}, Lde/schildbach/wallet/util/CircularProgressView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lde/schildbach/wallet/util/CircularProgressView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lde/schildbach/wallet/util/CircularProgressView;->updatePath(II)V

    .line 106
    invoke-virtual {p0}, Lde/schildbach/wallet/util/CircularProgressView;->postInvalidate()V

    .line 107
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 79
    iput p1, p0, Lde/schildbach/wallet/util/CircularProgressView;->progress:I

    .line 81
    invoke-virtual {p0}, Lde/schildbach/wallet/util/CircularProgressView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lde/schildbach/wallet/util/CircularProgressView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lde/schildbach/wallet/util/CircularProgressView;->updatePath(II)V

    .line 82
    invoke-virtual {p0}, Lde/schildbach/wallet/util/CircularProgressView;->postInvalidate()V

    .line 83
    return-void
.end method

.method public setSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 95
    iput p1, p0, Lde/schildbach/wallet/util/CircularProgressView;->size:I

    .line 97
    invoke-virtual {p0}, Lde/schildbach/wallet/util/CircularProgressView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lde/schildbach/wallet/util/CircularProgressView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lde/schildbach/wallet/util/CircularProgressView;->updatePath(II)V

    .line 98
    invoke-virtual {p0}, Lde/schildbach/wallet/util/CircularProgressView;->postInvalidate()V

    .line 99
    return-void
.end method
