.class Lde/schildbach/wallet/ui/SendCoinsFragment$1;
.super Ljava/lang/Object;
.source "SendCoinsFragment.java"

# interfaces
.implements Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/SendCoinsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/SendCoinsFragment;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$1;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changed()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$1;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1000(Lde/schildbach/wallet/ui/SendCoinsFragment;)V

    .line 284
    return-void
.end method

.method public focusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 289
    return-void
.end method
