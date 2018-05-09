.class Lde/schildbach/wallet/ui/RequestCoinsFragment$4;
.super Ljava/lang/Object;
.source "RequestCoinsFragment.java"

# interfaces
.implements Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/RequestCoinsFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/RequestCoinsFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/RequestCoinsFragment;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment$4;->this$0:Lde/schildbach/wallet/ui/RequestCoinsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changed()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment$4;->this$0:Lde/schildbach/wallet/ui/RequestCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->access$300(Lde/schildbach/wallet/ui/RequestCoinsFragment;)V

    .line 235
    return-void
.end method

.method public focusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 240
    return-void
.end method
