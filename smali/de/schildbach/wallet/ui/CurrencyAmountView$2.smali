.class Lde/schildbach/wallet/ui/CurrencyAmountView$2;
.super Ljava/lang/Object;
.source "CurrencyAmountView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/CurrencyAmountView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/CurrencyAmountView;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/CurrencyAmountView;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lde/schildbach/wallet/ui/CurrencyAmountView$2;->this$0:Lde/schildbach/wallet/ui/CurrencyAmountView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 306
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView$2;->this$0:Lde/schildbach/wallet/ui/CurrencyAmountView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setAmount(Ljava/math/BigInteger;Z)V

    .line 307
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyAmountView$2;->this$0:Lde/schildbach/wallet/ui/CurrencyAmountView;

    invoke-static {v0}, Lde/schildbach/wallet/ui/CurrencyAmountView;->access$000(Lde/schildbach/wallet/ui/CurrencyAmountView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 308
    return-void
.end method
