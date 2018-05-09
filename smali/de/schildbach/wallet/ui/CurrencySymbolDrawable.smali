.class public final Lde/schildbach/wallet/ui/CurrencySymbolDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CurrencySymbolDrawable.java"


# instance fields
.field private final paint:Landroid/graphics/Paint;

.field private final symbol:Ljava/lang/String;

.field private final y:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FIF)V
    .locals 2
    .param p1, "symbol"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "textSize"    # F
    .param p3, "color"    # I
    .param p4, "y"    # F

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lde/schildbach/wallet/ui/CurrencySymbolDrawable;->paint:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencySymbolDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencySymbolDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencySymbolDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x200a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/CurrencySymbolDrawable;->symbol:Ljava/lang/String;

    .line 44
    iput p4, p0, Lde/schildbach/wallet/ui/CurrencySymbolDrawable;->y:F

    .line 45
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 50
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencySymbolDrawable;->symbol:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lde/schildbach/wallet/ui/CurrencySymbolDrawable;->y:F

    iget-object v3, p0, Lde/schildbach/wallet/ui/CurrencySymbolDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 51
    return-void
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencySymbolDrawable;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lde/schildbach/wallet/ui/CurrencySymbolDrawable;->symbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 68
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 73
    return-void
.end method
