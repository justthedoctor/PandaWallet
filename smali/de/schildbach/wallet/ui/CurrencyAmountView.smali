.class public final Lde/schildbach/wallet/ui/CurrencyAmountView;
.super Landroid/widget/FrameLayout;
.source "CurrencyAmountView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/schildbach/wallet/ui/CurrencyAmountView$TextViewListener;,
        Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;
    }
.end annotation


# instance fields
.field private amountSigned:Z

.field private contextButton:Landroid/view/View;

.field private contextButtonClickListener:Landroid/view/View$OnClickListener;

.field private contextButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private currencySymbolDrawable:Landroid/graphics/drawable/Drawable;

.field private deleteButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private final deleteClickListener:Landroid/view/View$OnClickListener;

.field private errorColor:I

.field private hintPrecision:I

.field private inputPrecision:I

.field private lessSignificantColor:I

.field private listener:Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;

.field private shift:I

.field private significantColor:I

.field private smallerInsignificant:Z

.field private textView:Landroid/widget/TextView;

.field private final textViewListener:Lde/schildbach/wallet/ui/CurrencyAmountView$TextViewListener;

.field private validateAmount:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 67
    iput v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->inputPrecision:I

    .line 68
    iput v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->hintPrecision:I

    .line 69
    iput v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->shift:I

    .line 70
    iput-boolean v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->amountSigned:Z

    .line 71
    iput-boolean v1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->smallerInsignificant:Z

    .line 72
    iput-boolean v1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->validateAmount:Z

    .line 301
    new-instance v0, Lde/schildbach/wallet/ui/CurrencyAmountView$2;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/CurrencyAmountView$2;-><init>(Lde/schildbach/wallet/ui/CurrencyAmountView;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->deleteClickListener:Landroid/view/View$OnClickListener;

    .line 366
    new-instance v0, Lde/schildbach/wallet/ui/CurrencyAmountView$TextViewListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lde/schildbach/wallet/ui/CurrencyAmountView$TextViewListener;-><init>(Lde/schildbach/wallet/ui/CurrencyAmountView;Lde/schildbach/wallet/ui/CurrencyAmountView$1;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textViewListener:Lde/schildbach/wallet/ui/CurrencyAmountView$TextViewListener;

    .line 82
    invoke-direct {p0, p1}, Lde/schildbach/wallet/ui/CurrencyAmountView;->init(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->inputPrecision:I

    .line 68
    iput v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->hintPrecision:I

    .line 69
    iput v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->shift:I

    .line 70
    iput-boolean v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->amountSigned:Z

    .line 71
    iput-boolean v1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->smallerInsignificant:Z

    .line 72
    iput-boolean v1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->validateAmount:Z

    .line 301
    new-instance v0, Lde/schildbach/wallet/ui/CurrencyAmountView$2;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/CurrencyAmountView$2;-><init>(Lde/schildbach/wallet/ui/CurrencyAmountView;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->deleteClickListener:Landroid/view/View$OnClickListener;

    .line 366
    new-instance v0, Lde/schildbach/wallet/ui/CurrencyAmountView$TextViewListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lde/schildbach/wallet/ui/CurrencyAmountView$TextViewListener;-><init>(Lde/schildbach/wallet/ui/CurrencyAmountView;Lde/schildbach/wallet/ui/CurrencyAmountView$1;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textViewListener:Lde/schildbach/wallet/ui/CurrencyAmountView$TextViewListener;

    .line 88
    invoke-direct {p0, p1}, Lde/schildbach/wallet/ui/CurrencyAmountView;->init(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lde/schildbach/wallet/ui/CurrencyAmountView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/CurrencyAmountView;

    .prologue
    .line 55
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lde/schildbach/wallet/ui/CurrencyAmountView;)Z
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/CurrencyAmountView;

    .prologue
    .line 55
    iget-boolean v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->smallerInsignificant:Z

    return v0
.end method

.method static synthetic access$300(Lde/schildbach/wallet/ui/CurrencyAmountView;)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/CurrencyAmountView;

    .prologue
    .line 55
    invoke-direct {p0}, Lde/schildbach/wallet/ui/CurrencyAmountView;->updateAppearance()V

    return-void
.end method

.method static synthetic access$400(Lde/schildbach/wallet/ui/CurrencyAmountView;)Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/CurrencyAmountView;

    .prologue
    .line 55
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->listener:Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;

    return-object v0
.end method

.method private static currencySymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "currencyCode"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 424
    :try_start_0
    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    .line 425
    .local v0, "currency":Ljava/util/Currency;
    invoke-virtual {v0}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 429
    .end local v0    # "currency":Ljava/util/Currency;
    .end local p0    # "currencyCode":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 427
    .restart local p0    # "currencyCode":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 429
    .local v1, "x":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->significantColor:I

    .line 95
    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->lessSignificantColor:I

    .line 96
    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->errorColor:I

    .line 97
    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->deleteButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 98
    return-void
.end method

.method private isValidAmount(Z)Z
    .locals 5
    .param p1, "zeroIsValid"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 275
    iget-object v4, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "amount":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 281
    iget v4, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->shift:I

    invoke-static {v0, v4}, Lde/schildbach/wallet/util/GenericUtils;->toNanoCoins(Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v1

    .line 284
    .local v1, "nanoCoins":Ljava/math/BigInteger;
    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-nez v4, :cond_1

    .line 298
    .end local v1    # "nanoCoins":Ljava/math/BigInteger;
    :cond_0
    :goto_0
    return v2

    .line 288
    .restart local v1    # "nanoCoins":Ljava/math/BigInteger;
    :cond_1
    sget-object v4, Lcom/google/bitcoin/core/Transaction;->MIN_NONDUST_OUTPUT:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-gez v4, :cond_0

    move v2, v3

    .line 289
    goto :goto_0

    .line 294
    .end local v1    # "nanoCoins":Ljava/math/BigInteger;
    :catch_0
    move-exception v2

    :cond_2
    move v2, v3

    .line 298
    goto :goto_0
.end method

.method private updateAppearance()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 313
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    .line 315
    .local v1, "enabled":Z
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->contextButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 317
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "amount":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 321
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    iget-object v3, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->currencySymbolDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->deleteButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 322
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->contextButton:Landroid/view/View;

    iget-object v3, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->deleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    :goto_0
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->contextButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 337
    iget-object v3, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    iget-boolean v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->validateAmount:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lde/schildbach/wallet/ui/CurrencyAmountView;->isValidAmount(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->significantColor:I

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    return-void

    .line 324
    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->contextButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 326
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    iget-object v3, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->currencySymbolDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->contextButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 327
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->contextButton:Landroid/view/View;

    iget-object v3, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->contextButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 331
    :cond_2
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    iget-object v3, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->currencySymbolDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 332
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->contextButton:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 337
    :cond_3
    iget v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->errorColor:I

    goto :goto_1
.end method


# virtual methods
.method public getAmount()Ljava/math/BigInteger;
    .locals 2
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lde/schildbach/wallet/ui/CurrencyAmountView;->isValidAmount(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->shift:I

    invoke-static {v0, v1}, Lde/schildbach/wallet/util/GenericUtils;->toNanoCoins(Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 103
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 105
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/CurrencyAmountView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 107
    .local v1, "context":Landroid/content/Context;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lde/schildbach/wallet/ui/CurrencyAmountView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    .line 108
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    const/16 v3, 0x2002

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 109
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    iget v3, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->lessSignificantColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 110
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 111
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 112
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setHint(Ljava/math/BigInteger;)V

    .line 113
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    instance-of v2, v2, Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setValidateAmount(Z)V

    .line 114
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    iget-object v3, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textViewListener:Lde/schildbach/wallet/ui/CurrencyAmountView$TextViewListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 115
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    iget-object v3, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textViewListener:Lde/schildbach/wallet/ui/CurrencyAmountView$TextViewListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 117
    new-instance v2, Lde/schildbach/wallet/ui/CurrencyAmountView$1;

    invoke-direct {v2, p0, v1}, Lde/schildbach/wallet/ui/CurrencyAmountView$1;-><init>(Lde/schildbach/wallet/ui/CurrencyAmountView;Landroid/content/Context;)V

    iput-object v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->contextButton:Landroid/view/View;

    .line 125
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 126
    .local v0, "chooseViewParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, 0x5

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 127
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->contextButton:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->contextButton:Landroid/view/View;

    invoke-virtual {p0, v2}, Lde/schildbach/wallet/ui/CurrencyAmountView;->addView(Landroid/view/View;)V

    .line 130
    invoke-direct {p0}, Lde/schildbach/wallet/ui/CurrencyAmountView;->updateAppearance()V

    .line 131
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 353
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 355
    check-cast v0, Landroid/os/Bundle;

    .line 356
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "super_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 357
    iget-object v1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    const-string v2, "child_textview"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 358
    const-string v1, "amount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setAmount(Ljava/math/BigInteger;Z)V

    .line 364
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 343
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 344
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "super_state"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 345
    const-string v1, "child_textview"

    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 346
    const-string v1, "amount"

    invoke-virtual {p0}, Lde/schildbach/wallet/ui/CurrencyAmountView;->getAmount()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 347
    return-object v0
.end method

.method public setAmount(Ljava/math/BigInteger;Z)V
    .locals 5
    .param p1, "amount"    # Ljava/math/BigInteger;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "fireListener"    # Z

    .prologue
    .line 216
    if-nez p2, :cond_0

    .line 217
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textViewListener:Lde/schildbach/wallet/ui/CurrencyAmountView$TextViewListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/CurrencyAmountView$TextViewListener;->setFire(Z)V

    .line 219
    :cond_0
    if-eqz p1, :cond_3

    .line 220
    iget-object v1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->amountSigned:Z

    if-eqz v0, :cond_2

    const-string v0, "+\u2009"

    const-string v2, "-\u2009"

    iget v3, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->inputPrecision:I

    iget v4, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->shift:I

    invoke-static {p1, v0, v2, v3, v4}, Lde/schildbach/wallet/util/GenericUtils;->formatValue(Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :goto_1
    if-nez p2, :cond_1

    .line 226
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textViewListener:Lde/schildbach/wallet/ui/CurrencyAmountView$TextViewListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/CurrencyAmountView$TextViewListener;->setFire(Z)V

    .line 227
    :cond_1
    return-void

    .line 220
    :cond_2
    iget v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->inputPrecision:I

    iget v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->shift:I

    invoke-static {p1, v0, v2}, Lde/schildbach/wallet/util/GenericUtils;->formatValue(Ljava/math/BigInteger;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_3
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setAmountSigned(Z)V
    .locals 0
    .param p1, "amountSigned"    # Z

    .prologue
    .line 179
    iput-boolean p1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->amountSigned:Z

    .line 180
    return-void
.end method

.method public setContextButton(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "contextButtonResId"    # I
    .param p2, "contextButtonClickListener"    # Landroid/view/View$OnClickListener;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 194
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/CurrencyAmountView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->contextButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 195
    iput-object p2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->contextButtonClickListener:Landroid/view/View$OnClickListener;

    .line 197
    invoke-direct {p0}, Lde/schildbach/wallet/ui/CurrencyAmountView;->updateAppearance()V

    .line 198
    return-void
.end method

.method public setCurrencySymbol(Ljava/lang/String;)V
    .locals 6
    .param p1, "currencyCode"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 135
    const-string v3, "PND"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/CurrencyAmountView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02007b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->currencySymbolDrawable:Landroid/graphics/drawable/Drawable;

    .line 159
    :goto_0
    invoke-direct {p0}, Lde/schildbach/wallet/ui/CurrencyAmountView;->updateAppearance()V

    .line 160
    return-void

    .line 139
    :cond_0
    const-string v3, "mPND"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/CurrencyAmountView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02007c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->currencySymbolDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 143
    :cond_1
    const-string v3, "\u00b5PND"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 145
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/CurrencyAmountView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02007d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->currencySymbolDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 147
    :cond_2
    if-eqz p1, :cond_4

    .line 149
    invoke-static {p1}, Lde/schildbach/wallet/ui/CurrencyAmountView;->currencySymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "currencySymbol":Ljava/lang/String;
    iget-object v3, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    .line 151
    .local v2, "textSize":F
    iget-boolean v3, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->smallerInsignificant:Z

    if-eqz v3, :cond_3

    const v3, 0x3f555555

    :goto_1
    mul-float v1, v2, v3

    .line 152
    .local v1, "smallerTextSize":F
    new-instance v3, Lde/schildbach/wallet/ui/CurrencySymbolDrawable;

    iget v4, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->lessSignificantColor:I

    const v5, 0x3ebd70a4    # 0.37f

    mul-float/2addr v5, v2

    invoke-direct {v3, v0, v1, v4, v5}, Lde/schildbach/wallet/ui/CurrencySymbolDrawable;-><init>(Ljava/lang/String;FIF)V

    iput-object v3, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->currencySymbolDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 151
    .end local v1    # "smallerTextSize":F
    :cond_3
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    .line 156
    .end local v0    # "currencySymbol":Ljava/lang/String;
    .end local v2    # "textSize":F
    :cond_4
    const/4 v3, 0x0

    iput-object v3, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->currencySymbolDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 242
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 244
    invoke-direct {p0}, Lde/schildbach/wallet/ui/CurrencyAmountView;->updateAppearance()V

    .line 245
    return-void
.end method

.method public setHint(Ljava/math/BigInteger;)V
    .locals 3
    .param p1, "amount"    # Ljava/math/BigInteger;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 231
    new-instance v0, Landroid/text/SpannableStringBuilder;

    if-eqz p1, :cond_0

    .end local p1    # "amount":Ljava/math/BigInteger;
    :goto_0
    iget v1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->hintPrecision:I

    iget v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->shift:I

    invoke-static {p1, v1, v2}, Lde/schildbach/wallet/util/GenericUtils;->formatValue(Ljava/math/BigInteger;II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 233
    .local v0, "hint":Landroid/text/SpannableStringBuilder;
    iget-boolean v1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->smallerInsignificant:Z

    if-eqz v1, :cond_1

    sget-object v1, Lde/schildbach/wallet/util/WalletUtils;->SMALLER_SPAN:Landroid/text/style/RelativeSizeSpan;

    :goto_1
    invoke-static {v0, v1}, Lde/schildbach/wallet/util/WalletUtils;->formatSignificant(Landroid/text/Editable;Landroid/text/style/RelativeSizeSpan;)V

    .line 234
    iget-object v1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 235
    return-void

    .line 231
    .end local v0    # "hint":Landroid/text/SpannableStringBuilder;
    .restart local p1    # "amount":Ljava/math/BigInteger;
    :cond_0
    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_0

    .line 233
    .end local p1    # "amount":Ljava/math/BigInteger;
    .restart local v0    # "hint":Landroid/text/SpannableStringBuilder;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setHintPrecision(I)V
    .locals 0
    .param p1, "hintPrecision"    # I

    .prologue
    .line 169
    iput p1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->hintPrecision:I

    .line 170
    return-void
.end method

.method public setInputPrecision(I)V
    .locals 0
    .param p1, "inputPrecision"    # I

    .prologue
    .line 164
    iput p1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->inputPrecision:I

    .line 165
    return-void
.end method

.method public setListener(Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 202
    iput-object p1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->listener:Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;

    .line 203
    return-void
.end method

.method public setNextFocusId(I)V
    .locals 1
    .param p1, "nextFocusId"    # I

    .prologue
    .line 269
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setNextFocusDownId(I)V

    .line 270
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lde/schildbach/wallet/util/GenericUtils;->setNextFocusForwardId(Landroid/view/View;I)V

    .line 271
    return-void
.end method

.method public setShift(I)V
    .locals 0
    .param p1, "shift"    # I

    .prologue
    .line 174
    iput p1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->shift:I

    .line 175
    return-void
.end method

.method public setSmallerInsignificant(Z)V
    .locals 0
    .param p1, "smallerInsignificant"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->smallerInsignificant:Z

    .line 185
    return-void
.end method

.method public setStrikeThru(Z)V
    .locals 2
    .param p1, "strikeThru"    # Z

    .prologue
    .line 256
    if-eqz p1, :cond_0

    .line 257
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 260
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    and-int/lit8 v1, v1, -0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 249
    iput p1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->significantColor:I

    .line 251
    invoke-direct {p0}, Lde/schildbach/wallet/ui/CurrencyAmountView;->updateAppearance()V

    .line 252
    return-void
.end method

.method public setValidateAmount(Z)V
    .locals 0
    .param p1, "validateAmount"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView;->validateAmount:Z

    .line 190
    return-void
.end method
