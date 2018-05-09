.class Lde/schildbach/wallet/ui/CurrencyCalculatorLink$2;
.super Ljava/lang/Object;
.source "CurrencyCalculatorLink.java"

# interfaces
.implements Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/CurrencyCalculatorLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/CurrencyCalculatorLink;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink$2;->this$0:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changed()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink$2;->this$0:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    invoke-static {v0}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->access$100(Lde/schildbach/wallet/ui/CurrencyCalculatorLink;)Lde/schildbach/wallet/ui/CurrencyAmountView;

    move-result-object v0

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/CurrencyAmountView;->getAmount()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink$2;->this$0:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->setExchangeDirection(Z)V

    .line 76
    :goto_0
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink$2;->this$0:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    invoke-static {v0}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->access$200(Lde/schildbach/wallet/ui/CurrencyCalculatorLink;)Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink$2;->this$0:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    invoke-static {v0}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->access$200(Lde/schildbach/wallet/ui/CurrencyCalculatorLink;)Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;->changed()V

    .line 78
    :cond_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink$2;->this$0:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    invoke-static {v0}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->access$000(Lde/schildbach/wallet/ui/CurrencyCalculatorLink;)Lde/schildbach/wallet/ui/CurrencyAmountView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setHint(Ljava/math/BigInteger;)V

    goto :goto_0
.end method

.method public focusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 83
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink$2;->this$0:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    invoke-static {v0}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->access$200(Lde/schildbach/wallet/ui/CurrencyCalculatorLink;)Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink$2;->this$0:Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    invoke-static {v0}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->access$200(Lde/schildbach/wallet/ui/CurrencyCalculatorLink;)Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;->focusChanged(Z)V

    .line 85
    :cond_0
    return-void
.end method
