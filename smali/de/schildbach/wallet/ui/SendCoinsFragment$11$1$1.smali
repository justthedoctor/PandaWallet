.class Lde/schildbach/wallet/ui/SendCoinsFragment$11$1$1;
.super Ljava/lang/Object;
.source "SendCoinsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/SendCoinsFragment$11$1;->onFail(I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lde/schildbach/wallet/ui/SendCoinsFragment$11$1;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/SendCoinsFragment$11$1;)V
    .locals 0

    .prologue
    .line 909
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11$1$1;->this$2:Lde/schildbach/wallet/ui/SendCoinsFragment$11$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 913
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11$1$1;->this$2:Lde/schildbach/wallet/ui/SendCoinsFragment$11$1;

    iget-object v0, v0, Lde/schildbach/wallet/ui/SendCoinsFragment$11$1;->this$1:Lde/schildbach/wallet/ui/SendCoinsFragment$11;

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$11$1$1;->this$2:Lde/schildbach/wallet/ui/SendCoinsFragment$11$1;

    iget-object v1, v1, Lde/schildbach/wallet/ui/SendCoinsFragment$11$1;->val$payment:Lorg/bitcoin/protocols/payments/Protos$Payment;

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/SendCoinsFragment$11;->access$2700(Lde/schildbach/wallet/ui/SendCoinsFragment$11;Lorg/bitcoin/protocols/payments/Protos$Payment;)V

    .line 914
    return-void
.end method
