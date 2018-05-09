.class Lde/schildbach/wallet/ui/WalletAddressesFragment$1;
.super Ljava/lang/Object;
.source "WalletAddressesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/WalletAddressesFragment;->handleAddAddress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/WalletAddressesFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/WalletAddressesFragment;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$1;->this$0:Lde/schildbach/wallet/ui/WalletAddressesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$1;->this$0:Lde/schildbach/wallet/ui/WalletAddressesFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/WalletAddressesFragment;->access$000(Lde/schildbach/wallet/ui/WalletAddressesFragment;)Lde/schildbach/wallet/WalletApplication;

    move-result-object v0

    invoke-virtual {v0}, Lde/schildbach/wallet/WalletApplication;->addNewKeyToWallet()V

    .line 164
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesFragment$1;->this$0:Lde/schildbach/wallet/ui/WalletAddressesFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/WalletAddressesFragment;->access$100(Lde/schildbach/wallet/ui/WalletAddressesFragment;)Lde/schildbach/wallet/ui/AddressBookActivity;

    move-result-object v0

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/AddressBookActivity;->updateFragments()V

    .line 165
    return-void
.end method
