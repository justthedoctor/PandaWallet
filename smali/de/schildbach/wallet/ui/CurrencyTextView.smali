.class public final Lde/schildbach/wallet/ui/CurrencyTextView;
.super Landroid/widget/TextView;
.source "CurrencyTextView.java"


# instance fields
.field private alwaysSigned:Z

.field private amount:Ljava/math/BigInteger;

.field private insignificantRelativeSizeSpan:Landroid/text/style/RelativeSizeSpan;

.field private precision:I

.field private prefix:Ljava/lang/String;

.field private prefixColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private prefixRelativeSizeSpan:Landroid/text/style/RelativeSizeSpan;

.field private shift:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object v0, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->prefix:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->prefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 45
    iput-object v0, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->amount:Ljava/math/BigInteger;

    .line 46
    iput v1, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->precision:I

    .line 47
    iput v1, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->shift:I

    .line 48
    iput-boolean v1, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->alwaysSigned:Z

    .line 49
    iput-object v0, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->prefixRelativeSizeSpan:Landroid/text/style/RelativeSizeSpan;

    .line 50
    iput-object v0, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->insignificantRelativeSizeSpan:Landroid/text/style/RelativeSizeSpan;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-object v0, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->prefix:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->prefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 45
    iput-object v0, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->amount:Ljava/math/BigInteger;

    .line 46
    iput v1, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->precision:I

    .line 47
    iput v1, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->shift:I

    .line 48
    iput-boolean v1, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->alwaysSigned:Z

    .line 49
    iput-object v0, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->prefixRelativeSizeSpan:Landroid/text/style/RelativeSizeSpan;

    .line 50
    iput-object v0, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->insignificantRelativeSizeSpan:Landroid/text/style/RelativeSizeSpan;

    .line 60
    return-void
.end method

.method private updateView()V
    .locals 9

    .prologue
    const/16 v8, 0x21

    const/4 v7, 0x0

    .line 129
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->amount:Ljava/math/BigInteger;

    if-eqz v2, :cond_3

    .line 132
    iget-boolean v2, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->alwaysSigned:Z

    if-eqz v2, :cond_2

    .line 133
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->amount:Ljava/math/BigInteger;

    const-string v3, "+\u2009"

    const-string v4, "-\u2009"

    iget v5, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->precision:I

    iget v6, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->shift:I

    invoke-static {v2, v3, v4, v5, v6}, Lde/schildbach/wallet/util/GenericUtils;->formatValue(Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "s":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 138
    .local v1, "text":Landroid/text/Editable;
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->insignificantRelativeSizeSpan:Landroid/text/style/RelativeSizeSpan;

    invoke-static {v1, v2}, Lde/schildbach/wallet/util/WalletUtils;->formatSignificant(Landroid/text/Editable;Landroid/text/style/RelativeSizeSpan;)V

    .line 140
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->prefix:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 142
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->prefix:Ljava/lang/String;

    invoke-interface {v1, v7, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 143
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->prefixRelativeSizeSpan:Landroid/text/style/RelativeSizeSpan;

    if-eqz v2, :cond_0

    .line 144
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->prefixRelativeSizeSpan:Landroid/text/style/RelativeSizeSpan;

    iget-object v3, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {v1, v2, v7, v3, v8}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 145
    :cond_0
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->prefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    if-eqz v2, :cond_1

    .line 146
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->prefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->prefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {v1, v2, v7, v3, v8}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 154
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/CurrencyTextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    return-void

    .line 135
    .end local v1    # "text":Landroid/text/Editable;
    :cond_2
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->amount:Ljava/math/BigInteger;

    iget v3, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->precision:I

    iget v4, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->shift:I

    invoke-static {v2, v3, v4}, Lde/schildbach/wallet/util/GenericUtils;->formatValue(Ljava/math/BigInteger;II)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_0

    .line 151
    .end local v0    # "s":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "text":Landroid/text/Editable;
    goto :goto_1
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 120
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/CurrencyTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/CurrencyTextView;->setPrefixColor(I)V

    .line 121
    const v0, 0x3f59999a    # 0.85f

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/CurrencyTextView;->setInsignificantRelativeSize(F)V

    .line 122
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/CurrencyTextView;->setSingleLine()V

    .line 123
    return-void
.end method

.method public setAlwaysSigned(Z)V
    .locals 0
    .param p1, "alwaysSigned"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->alwaysSigned:Z

    .line 90
    invoke-direct {p0}, Lde/schildbach/wallet/ui/CurrencyTextView;->updateView()V

    .line 91
    return-void
.end method

.method public setAmount(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "amount"    # Ljava/math/BigInteger;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 76
    iput-object p1, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->amount:Ljava/math/BigInteger;

    .line 77
    invoke-direct {p0}, Lde/schildbach/wallet/ui/CurrencyTextView;->updateView()V

    .line 78
    return-void
.end method

.method public setInsignificantRelativeSize(F)V
    .locals 2
    .param p1, "insignificantRelativeSize"    # F

    .prologue
    const/4 v1, 0x0

    .line 103
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->prefixRelativeSizeSpan:Landroid/text/style/RelativeSizeSpan;

    .line 106
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->insignificantRelativeSizeSpan:Landroid/text/style/RelativeSizeSpan;

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_0
    iput-object v1, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->prefixRelativeSizeSpan:Landroid/text/style/RelativeSizeSpan;

    .line 111
    iput-object v1, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->insignificantRelativeSizeSpan:Landroid/text/style/RelativeSizeSpan;

    goto :goto_0
.end method

.method public setPrecision(II)V
    .locals 0
    .param p1, "precision"    # I
    .param p2, "shift"    # I

    .prologue
    .line 82
    iput p1, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->precision:I

    .line 83
    iput p2, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->shift:I

    .line 84
    invoke-direct {p0}, Lde/schildbach/wallet/ui/CurrencyTextView;->updateView()V

    .line 85
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x200a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->prefix:Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Lde/schildbach/wallet/ui/CurrencyTextView;->updateView()V

    .line 66
    return-void
.end method

.method public setPrefixColor(I)V
    .locals 1
    .param p1, "prefixColor"    # I

    .prologue
    .line 70
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/CurrencyTextView;->prefixColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 71
    invoke-direct {p0}, Lde/schildbach/wallet/ui/CurrencyTextView;->updateView()V

    .line 72
    return-void
.end method

.method public setStrikeThru(Z)V
    .locals 1
    .param p1, "strikeThru"    # Z

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/CurrencyTextView;->getPaintFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/CurrencyTextView;->setPaintFlags(I)V

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/CurrencyTextView;->getPaintFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x11

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/CurrencyTextView;->setPaintFlags(I)V

    goto :goto_0
.end method
