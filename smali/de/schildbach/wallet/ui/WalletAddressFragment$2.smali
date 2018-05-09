.class Lde/schildbach/wallet/ui/WalletAddressFragment$2;
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
    .line 95
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletAddressFragment$2;->this$0:Lde/schildbach/wallet/ui/WalletAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressFragment$2;->this$0:Lde/schildbach/wallet/ui/WalletAddressFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/WalletAddressFragment;->access$100(Lde/schildbach/wallet/ui/WalletAddressFragment;)V

    .line 100
    return-void
.end method
