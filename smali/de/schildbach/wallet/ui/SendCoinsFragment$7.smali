.class Lde/schildbach/wallet/ui/SendCoinsFragment$7;
.super Ljava/lang/Object;
.source "SendCoinsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 505
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$7;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 509
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$7;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$300(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/PaymentIntent;

    move-result-object v0

    invoke-virtual {v0}, Lde/schildbach/wallet/PaymentIntent;->isBluetoothPaymentUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$7;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1700(Lde/schildbach/wallet/ui/SendCoinsFragment;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$7;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lde/schildbach/wallet/ui/SendCoinsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 514
    :cond_0
    return-void
.end method
