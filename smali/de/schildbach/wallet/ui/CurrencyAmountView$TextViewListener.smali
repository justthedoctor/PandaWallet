.class final Lde/schildbach/wallet/ui/CurrencyAmountView$TextViewListener;
.super Ljava/lang/Object;
.source "CurrencyAmountView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/CurrencyAmountView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TextViewListener"
.end annotation


# instance fields
.field private fire:Z

.field final synthetic this$0:Lde/schildbach/wallet/ui/CurrencyAmountView;


# direct methods
.method private constructor <init>(Lde/schildbach/wallet/ui/CurrencyAmountView;)V
    .locals 1

    .prologue
    .line 368
    iput-object p1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView$TextViewListener;->this$0:Lde/schildbach/wallet/ui/CurrencyAmountView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView$TextViewListener;->fire:Z

    return-void
.end method

.method synthetic constructor <init>(Lde/schildbach/wallet/ui/CurrencyAmountView;Lde/schildbach/wallet/ui/CurrencyAmountView$1;)V
    .locals 0
    .param p1, "x0"    # Lde/schildbach/wallet/ui/CurrencyAmountView;
    .param p2, "x1"    # Lde/schildbach/wallet/ui/CurrencyAmountView$1;

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lde/schildbach/wallet/ui/CurrencyAmountView$TextViewListener;-><init>(Lde/schildbach/wallet/ui/CurrencyAmountView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 381
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "original":Ljava/lang/String;
    const/16 v2, 0x2c

    const/16 v3, 0x2e

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "replaced":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 385
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 386
    invoke-interface {p1, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 389
    :cond_0
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyAmountView$TextViewListener;->this$0:Lde/schildbach/wallet/ui/CurrencyAmountView;

    invoke-static {v2}, Lde/schildbach/wallet/ui/CurrencyAmountView;->access$200(Lde/schildbach/wallet/ui/CurrencyAmountView;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lde/schildbach/wallet/util/WalletUtils;->SMALLER_SPAN:Landroid/text/style/RelativeSizeSpan;

    :goto_0
    invoke-static {p1, v2}, Lde/schildbach/wallet/util/WalletUtils;->formatSignificant(Landroid/text/Editable;Landroid/text/style/RelativeSizeSpan;)V

    .line 390
    return-void

    .line 389
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 395
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 408
    if-nez p2, :cond_0

    .line 410
    iget-object v1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView$TextViewListener;->this$0:Lde/schildbach/wallet/ui/CurrencyAmountView;

    invoke-virtual {v1}, Lde/schildbach/wallet/ui/CurrencyAmountView;->getAmount()Ljava/math/BigInteger;

    move-result-object v0

    .line 411
    .local v0, "amount":Ljava/math/BigInteger;
    if-eqz v0, :cond_0

    .line 412
    iget-object v1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView$TextViewListener;->this$0:Lde/schildbach/wallet/ui/CurrencyAmountView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setAmount(Ljava/math/BigInteger;Z)V

    .line 415
    .end local v0    # "amount":Ljava/math/BigInteger;
    :cond_0
    iget-object v1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView$TextViewListener;->this$0:Lde/schildbach/wallet/ui/CurrencyAmountView;

    invoke-static {v1}, Lde/schildbach/wallet/ui/CurrencyAmountView;->access$400(Lde/schildbach/wallet/ui/CurrencyAmountView;)Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView$TextViewListener;->fire:Z

    if-eqz v1, :cond_1

    .line 416
    iget-object v1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView$TextViewListener;->this$0:Lde/schildbach/wallet/ui/CurrencyAmountView;

    invoke-static {v1}, Lde/schildbach/wallet/ui/CurrencyAmountView;->access$400(Lde/schildbach/wallet/ui/CurrencyAmountView;)Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;

    move-result-object v1

    invoke-interface {v1, p2}, Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;->focusChanged(Z)V

    .line 417
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 400
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView$TextViewListener;->this$0:Lde/schildbach/wallet/ui/CurrencyAmountView;

    invoke-static {v0}, Lde/schildbach/wallet/ui/CurrencyAmountView;->access$300(Lde/schildbach/wallet/ui/CurrencyAmountView;)V

    .line 401
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView$TextViewListener;->this$0:Lde/schildbach/wallet/ui/CurrencyAmountView;

    invoke-static {v0}, Lde/schildbach/wallet/ui/CurrencyAmountView;->access$400(Lde/schildbach/wallet/ui/CurrencyAmountView;)Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView$TextViewListener;->fire:Z

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView$TextViewListener;->this$0:Lde/schildbach/wallet/ui/CurrencyAmountView;

    invoke-static {v0}, Lde/schildbach/wallet/ui/CurrencyAmountView;->access$400(Lde/schildbach/wallet/ui/CurrencyAmountView;)Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;->changed()V

    .line 403
    :cond_0
    return-void
.end method

.method public setFire(Z)V
    .locals 0
    .param p1, "fire"    # Z

    .prologue
    .line 374
    iput-boolean p1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView$TextViewListener;->fire:Z

    .line 375
    return-void
.end method
