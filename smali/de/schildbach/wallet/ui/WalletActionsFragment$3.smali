.class Lde/schildbach/wallet/ui/WalletActionsFragment$3;
.super Ljava/lang/Object;
.source "WalletActionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/WalletActionsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/WalletActionsFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/WalletActionsFragment;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletActionsFragment$3;->this$0:Lde/schildbach/wallet/ui/WalletActionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletActionsFragment$3;->this$0:Lde/schildbach/wallet/ui/WalletActionsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/WalletActionsFragment;->access$000(Lde/schildbach/wallet/ui/WalletActionsFragment;)Lde/schildbach/wallet/ui/WalletActivity;

    move-result-object v0

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/WalletActivity;->handleScan()V

    .line 78
    return-void
.end method
