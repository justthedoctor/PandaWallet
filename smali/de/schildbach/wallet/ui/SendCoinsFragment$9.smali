.class Lde/schildbach/wallet/ui/SendCoinsFragment$9;
.super Ljava/lang/Object;
.source "SendCoinsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/SendCoinsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 543
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$9;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 547
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$9;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1300(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    move-result-object v0

    sget-object v1, Lde/schildbach/wallet/ui/SendCoinsFragment$State;->INPUT:Lde/schildbach/wallet/ui/SendCoinsFragment$State;

    if-ne v0, v1, :cond_0

    .line 548
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$9;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1400(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->setResult(I)V

    .line 550
    :cond_0
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$9;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1400(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    move-result-object v0

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->finish()V

    .line 551
    return-void
.end method
