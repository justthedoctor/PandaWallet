.class Lde/schildbach/wallet/ui/TransactionFragment$3;
.super Ljava/lang/Object;
.source "TransactionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/TransactionFragment;->update(Lcom/google/bitcoin/core/Transaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/TransactionFragment;

.field final synthetic val$txHashString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/TransactionFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lde/schildbach/wallet/ui/TransactionFragment$3;->this$0:Lde/schildbach/wallet/ui/TransactionFragment;

    iput-object p2, p0, Lde/schildbach/wallet/ui/TransactionFragment$3;->val$txHashString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 245
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionFragment$3;->this$0:Lde/schildbach/wallet/ui/TransactionFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/TransactionFragment;->access$000(Lde/schildbach/wallet/ui/TransactionFragment;)Lde/schildbach/wallet/util/AbstractClipboardManager;

    move-result-object v0

    const-string v1, "transaction"

    iget-object v2, p0, Lde/schildbach/wallet/ui/TransactionFragment$3;->val$txHashString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lde/schildbach/wallet/util/AbstractClipboardManager;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionFragment$3;->this$0:Lde/schildbach/wallet/ui/TransactionFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/TransactionFragment;->access$100(Lde/schildbach/wallet/ui/TransactionFragment;)Lde/schildbach/wallet/ui/AbstractWalletActivity;

    move-result-object v0

    const v1, 0x7f0b0087

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->toast(I[Ljava/lang/Object;)V

    .line 247
    return-void
.end method
