.class public Lde/schildbach/wallet/util/ViewPagerTabs;
.super Landroid/view/View;
.source "ViewPagerTabs.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private final labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxWidth:I

.field private pageOffset:F

.field private pagePosition:I

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/schildbach/wallet/util/ViewPagerTabs;->labels:Ljava/util/List;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lde/schildbach/wallet/util/ViewPagerTabs;->paint:Landroid/graphics/Paint;

    .line 45
    iput v1, p0, Lde/schildbach/wallet/util/ViewPagerTabs;->maxWidth:I

    .line 48
    iput v1, p0, Lde/schildbach/wallet/util/ViewPagerTabs;->pagePosition:I

    .line 49
    iput v3, p0, Lde/schildbach/wallet/util/ViewPagerTabs;->pageOffset:F

    .line 82
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lde/schildbach/wallet/util/ViewPagerTabs;->path:Landroid/graphics/Path;

    .line 55
    invoke-virtual {p0, v4}, Lde/schildbach/wallet/util/ViewPagerTabs;->setSaveEnabled(Z)V

    .line 57
    iget-object v0, p0, Lde/schildbach/wallet/util/ViewPagerTabs;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lde/schildbach/wallet/util/ViewPagerTabs;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 58
    iget-object v0, p0, Lde/schildbach/wallet/util/ViewPagerTabs;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v0, p0, Lde/schildbach/wallet/util/ViewPagerTabs;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object v0, p0, Lde/schildbach/wallet/util/ViewPagerTabs;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 61
    return-void
.end method


# virtual methods
.method public varargs addTabLabels([I)V
    .locals 9
    .param p1, "labelResId"    # [I

    .prologue
    .line 65
    invoke-virtual {p0}, Lde/schildbach/wallet/util/ViewPagerTabs;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 67
    .local v1, "context":Landroid/content/Context;
    iget-object v7, p0, Lde/schildbach/wallet/util/ViewPagerTabs;->paint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 69
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget v5, v0, v2

    .line 71
    .local v5, "resId":I
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "label":Ljava/lang/String;
    iget-object v7, p0, Lde/schildbach/wallet/util/ViewPagerTabs;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v6, v7

    .line 75
    .local v6, "width":I
    iget v7, p0, Lde/schildbach/wallet/util/ViewPagerTabs;->maxWidth:I

    if-le v6, v7, :cond_0

    .line 76
    iput v6, p0, Lde/schildbach/wallet/util/ViewPagerTabs;->maxWidth:I

    .line 78
    :cond_0
    iget-object v7, p0, Lde/schildbach/wallet/util/ViewPagerTabs;->labels:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v3    # "label":Ljava/lang/String;
    .end local v5    # "resId":I
    .end local v6    # "width":I
    :cond_1
    return-void
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lde/schildbach/wallet/util/ViewPagerTabs;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 165
    iget-object v0, p0, Lde/schildbach/wallet/util/ViewPagerTabs;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v0, v0

    iget-object v1, p0, Lde/schildbach/wallet/util/ViewPagerTabs;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lde/schildbach/wallet/util/ViewPagerTabs;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lde/schildbach/wallet/util/ViewPagerTabs;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 87
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Lde/schildbach/wallet/util/ViewPagerTabs;->getWidth()I

    move-result v16

    .line 90
    .local v16, "viewWidth":I
    div-int/lit8 v15, v16, 0x2

    .line 91
    .local v15, "viewHalfWidth":I
    invoke-virtual/range {p0 .. p0}, Lde/schildbach/wallet/util/ViewPagerTabs;->getHeight()I

    move-result v14

    .line 93
    .local v14, "viewBottom":I
    invoke-virtual/range {p0 .. p0}, Lde/schildbach/wallet/util/ViewPagerTabs;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    .line 94
    .local v3, "density":F
    const/high16 v19, 0x42000000    # 32.0f

    mul-float v13, v19, v3

    .line 96
    .local v13, "spacing":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/util/ViewPagerTabs;->path:Landroid/graphics/Path;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Path;->reset()V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/util/ViewPagerTabs;->path:Landroid/graphics/Path;

    move-object/from16 v19, v0

    int-to-float v0, v15

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    const/high16 v22, 0x40a00000    # 5.0f

    mul-float v22, v22, v3

    sub-float v21, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Path;->moveTo(FF)V

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/util/ViewPagerTabs;->path:Landroid/graphics/Path;

    move-object/from16 v19, v0

    int-to-float v0, v15

    move/from16 v20, v0

    const/high16 v21, 0x40a00000    # 5.0f

    mul-float v21, v21, v3

    add-float v20, v20, v21

    int-to-float v0, v14

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Path;->lineTo(FF)V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/util/ViewPagerTabs;->path:Landroid/graphics/Path;

    move-object/from16 v19, v0

    int-to-float v0, v15

    move/from16 v20, v0

    const/high16 v21, 0x40a00000    # 5.0f

    mul-float v21, v21, v3

    sub-float v20, v20, v21

    int-to-float v0, v14

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Path;->lineTo(FF)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/util/ViewPagerTabs;->path:Landroid/graphics/Path;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Path;->close()V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/util/ViewPagerTabs;->paint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/util/ViewPagerTabs;->path:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/util/ViewPagerTabs;->paint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/util/ViewPagerTabs;->paint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    sget-object v20, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 106
    invoke-virtual/range {p0 .. p0}, Lde/schildbach/wallet/util/ViewPagerTabs;->getPaddingTop()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/util/ViewPagerTabs;->paint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v20, v0

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    add-float v18, v19, v20

    .line 108
    .local v18, "y":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/util/ViewPagerTabs;->labels:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v4, v0, :cond_4

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/util/ViewPagerTabs;->labels:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 112
    .local v5, "label":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/util/ViewPagerTabs;->paint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/schildbach/wallet/util/ViewPagerTabs;->pagePosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v4, v0, :cond_0

    sget-object v19, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/util/ViewPagerTabs;->paint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/schildbach/wallet/util/ViewPagerTabs;->pagePosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v4, v0, :cond_1

    const/high16 v19, -0x1000000

    :goto_2
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    int-to-float v0, v15

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/schildbach/wallet/util/ViewPagerTabs;->maxWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v20, v20, v13

    int-to-float v0, v4

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/schildbach/wallet/util/ViewPagerTabs;->pageOffset:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    mul-float v20, v20, v21

    add-float v17, v19, v20

    .line 116
    .local v17, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/util/ViewPagerTabs;->paint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    .line 117
    .local v12, "labelWidth":F
    const/high16 v19, 0x40000000    # 2.0f

    div-float v6, v12, v19

    .line 119
    .local v6, "labelHalfWidth":F
    sub-float v7, v17, v6

    .line 120
    .local v7, "labelLeft":F
    const/16 v19, 0x0

    cmpl-float v19, v7, v19

    if-ltz v19, :cond_2

    const/high16 v10, 0x3f800000    # 1.0f

    .line 122
    .local v10, "labelVisibleLeft":F
    :goto_3
    add-float v8, v17, v6

    .line 123
    .local v8, "labelRight":F
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    cmpg-float v19, v8, v19

    if-gez v19, :cond_3

    const/high16 v11, 0x3f800000    # 1.0f

    .line 125
    .local v11, "labelVisibleRight":F
    :goto_4
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 127
    .local v9, "labelVisible":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/util/ViewPagerTabs;->paint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/high16 v20, 0x437f0000    # 255.0f

    mul-float v20, v20, v9

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/util/ViewPagerTabs;->paint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v5, v7, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 112
    .end local v6    # "labelHalfWidth":F
    .end local v7    # "labelLeft":F
    .end local v8    # "labelRight":F
    .end local v9    # "labelVisible":F
    .end local v10    # "labelVisibleLeft":F
    .end local v11    # "labelVisibleRight":F
    .end local v12    # "labelWidth":F
    .end local v17    # "x":F
    :cond_0
    sget-object v19, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto/16 :goto_1

    .line 113
    :cond_1
    const v19, -0xbbbbbc

    goto :goto_2

    .line 120
    .restart local v6    # "labelHalfWidth":F
    .restart local v7    # "labelLeft":F
    .restart local v12    # "labelWidth":F
    .restart local v17    # "x":F
    :cond_2
    const/high16 v19, 0x3f800000    # 1.0f

    neg-float v0, v7

    move/from16 v20, v0

    div-float v20, v20, v12

    sub-float v10, v19, v20

    goto :goto_3

    .line 123
    .restart local v8    # "labelRight":F
    .restart local v10    # "labelVisibleLeft":F
    :cond_3
    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v8, v20

    div-float v20, v20, v12

    sub-float v11, v19, v20

    goto :goto_4

    .line 131
    .end local v5    # "label":Ljava/lang/String;
    .end local v6    # "labelHalfWidth":F
    .end local v7    # "labelLeft":F
    .end local v8    # "labelRight":F
    .end local v10    # "labelVisibleLeft":F
    .end local v12    # "labelWidth":F
    .end local v17    # "x":F
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, -0x80000000

    .line 136
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 137
    .local v4, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 140
    .local v5, "widthSize":I
    if-ne v4, v8, :cond_0

    .line 141
    move v3, v5

    .line 147
    .local v3, "width":I
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 148
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 151
    .local v2, "heightSize":I
    if-ne v1, v8, :cond_2

    .line 152
    move v0, v2

    .line 158
    .local v0, "height":I
    :goto_1
    invoke-virtual {p0, v3, v0}, Lde/schildbach/wallet/util/ViewPagerTabs;->setMeasuredDimension(II)V

    .line 159
    return-void

    .line 142
    .end local v0    # "height":I
    .end local v1    # "heightMode":I
    .end local v2    # "heightSize":I
    .end local v3    # "width":I
    :cond_0
    if-ne v4, v7, :cond_1

    .line 143
    invoke-virtual {p0}, Lde/schildbach/wallet/util/ViewPagerTabs;->getMeasuredWidth()I

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .restart local v3    # "width":I
    goto :goto_0

    .line 145
    .end local v3    # "width":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "width":I
    goto :goto_0

    .line 153
    .restart local v1    # "heightMode":I
    .restart local v2    # "heightSize":I
    :cond_2
    if-ne v1, v7, :cond_3

    .line 154
    invoke-virtual {p0}, Lde/schildbach/wallet/util/ViewPagerTabs;->getSuggestedMinimumHeight()I

    move-result v6

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_1

    .line 156
    .end local v0    # "height":I
    :cond_3
    invoke-virtual {p0}, Lde/schildbach/wallet/util/ViewPagerTabs;->getSuggestedMinimumHeight()I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 185
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 171
    int-to-float v0, p1

    add-float/2addr v0, p2

    iput v0, p0, Lde/schildbach/wallet/util/ViewPagerTabs;->pageOffset:F

    .line 172
    invoke-virtual {p0}, Lde/schildbach/wallet/util/ViewPagerTabs;->invalidate()V

    .line 173
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 178
    iput p1, p0, Lde/schildbach/wallet/util/ViewPagerTabs;->pagePosition:I

    .line 179
    invoke-virtual {p0}, Lde/schildbach/wallet/util/ViewPagerTabs;->invalidate()V

    .line 180
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 200
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 202
    check-cast v0, Landroid/os/Bundle;

    .line 203
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "page_position"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lde/schildbach/wallet/util/ViewPagerTabs;->pagePosition:I

    .line 204
    const-string v1, "page_offset"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lde/schildbach/wallet/util/ViewPagerTabs;->pageOffset:F

    .line 205
    const-string v1, "super_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 210
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 190
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 191
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "super_state"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 192
    const-string v1, "page_position"

    iget v2, p0, Lde/schildbach/wallet/util/ViewPagerTabs;->pagePosition:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    const-string v1, "page_offset"

    iget v2, p0, Lde/schildbach/wallet/util/ViewPagerTabs;->pageOffset:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 194
    return-object v0
.end method
