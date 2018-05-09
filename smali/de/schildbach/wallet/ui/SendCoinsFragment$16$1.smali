.class Lde/schildbach/wallet/ui/SendCoinsFragment$16$1;
.super Ljava/lang/Object;
.source "SendCoinsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/SendCoinsFragment$16;->onFail(I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$16;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/SendCoinsFragment$16;)V
    .locals 0

    .prologue
    .line 1384
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$16$1;->this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1388
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$16$1;->this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$16;

    iget-object v0, v0, Lde/schildbach/wallet/ui/SendCoinsFragment$16;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$16$1;->this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$16;

    iget-object v1, v1, Lde/schildbach/wallet/ui/SendCoinsFragment$16;->val$paymentRequestUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$3200(Lde/schildbach/wallet/ui/SendCoinsFragment;Ljava/lang/String;)V

    .line 1389
    return-void
.end method
