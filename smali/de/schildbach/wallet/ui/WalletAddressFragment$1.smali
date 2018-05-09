.class Lde/schildbach/wallet/ui/WalletAddressFragment$1;
.super Ljava/lang/Object;
.source "WalletAddressFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/WalletAddressFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/WalletAddressFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/WalletAddressFragment;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletAddressFragment$1;->this$0:Lde/schildbach/wallet/ui/WalletAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressFragment$1;->this$0:Lde/schildbach/wallet/ui/WalletAddressFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/WalletAddressFragment;->access$000(Lde/schildbach/wallet/ui/WalletAddressFragment;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lde/schildbach/wallet/ui/AddressBookActivity;->start(Landroid/content/Context;Z)V

    .line 91
    return-void
.end method
