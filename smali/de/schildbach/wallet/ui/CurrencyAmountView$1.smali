.class Lde/schildbach/wallet/ui/CurrencyAmountView$1;
.super Landroid/view/View;
.source "CurrencyAmountView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/CurrencyAmountView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/CurrencyAmountView;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/CurrencyAmountView;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 118
    iput-object p1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView$1;->this$0:Lde/schildbach/wallet/ui/CurrencyAmountView;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "wMeasureSpec"    # I
    .param p2, "hMeasureSpec"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView$1;->this$0:Lde/schildbach/wallet/ui/CurrencyAmountView;

    invoke-static {v0}, Lde/schildbach/wallet/ui/CurrencyAmountView;->access$000(Lde/schildbach/wallet/ui/CurrencyAmountView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    iget-object v1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView$1;->this$0:Lde/schildbach/wallet/ui/CurrencyAmountView;

    invoke-static {v1}, Lde/schildbach/wallet/ui/CurrencyAmountView;->access$000(Lde/schildbach/wallet/ui/CurrencyAmountView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lde/schildbach/wallet/ui/CurrencyAmountView$1;->setMeasuredDimension(II)V

    .line 123
    return-void
.end method
