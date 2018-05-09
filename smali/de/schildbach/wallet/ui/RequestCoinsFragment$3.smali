.class Lde/schildbach/wallet/ui/RequestCoinsFragment$3;
.super Ljava/lang/Object;
.source "RequestCoinsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/RequestCoinsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/RequestCoinsFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/RequestCoinsFragment;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment$3;->this$0:Lde/schildbach/wallet/ui/RequestCoinsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 186
    invoke-static {}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment$3;->this$0:Lde/schildbach/wallet/ui/RequestCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->access$600(Lde/schildbach/wallet/ui/RequestCoinsFragment;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 188
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment$3;->this$0:Lde/schildbach/wallet/ui/RequestCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->access$600(Lde/schildbach/wallet/ui/RequestCoinsFragment;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment$3;->this$0:Lde/schildbach/wallet/ui/RequestCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->access$700(Lde/schildbach/wallet/ui/RequestCoinsFragment;)V

    .line 203
    :goto_0
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment$3;->this$0:Lde/schildbach/wallet/ui/RequestCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->access$300(Lde/schildbach/wallet/ui/RequestCoinsFragment;)V

    .line 204
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment$3;->this$0:Lde/schildbach/wallet/ui/RequestCoinsFragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lde/schildbach/wallet/ui/RequestCoinsFragment$3;->this$0:Lde/schildbach/wallet/ui/RequestCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/RequestCoinsFragment;->access$800(Lde/schildbach/wallet/ui/RequestCoinsFragment;)V

    goto :goto_0
.end method
