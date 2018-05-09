.class Lde/schildbach/wallet/ui/SendCoinsFragment$8;
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
    .line 525
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$8;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 529
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$8;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$000(Lde/schildbach/wallet/ui/SendCoinsFragment;Z)V

    .line 530
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$8;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1800(Lde/schildbach/wallet/ui/SendCoinsFragment;)Z

    .line 532
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$8;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1900(Lde/schildbach/wallet/ui/SendCoinsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$8;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$2000(Lde/schildbach/wallet/ui/SendCoinsFragment;)V

    .line 536
    :goto_0
    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$8;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$500(Lde/schildbach/wallet/ui/SendCoinsFragment;)V

    goto :goto_0
.end method
