.class Lde/schildbach/wallet/ui/TransactionFragment$1;
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

.field final synthetic val$addressStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/TransactionFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lde/schildbach/wallet/ui/TransactionFragment$1;->this$0:Lde/schildbach/wallet/ui/TransactionFragment;

    iput-object p2, p0, Lde/schildbach/wallet/ui/TransactionFragment$1;->val$addressStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionFragment$1;->this$0:Lde/schildbach/wallet/ui/TransactionFragment;

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/TransactionFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lde/schildbach/wallet/ui/TransactionFragment$1;->val$addressStr:Ljava/lang/String;

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;->edit(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 178
    return-void
.end method
