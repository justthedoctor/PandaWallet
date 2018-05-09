.class Lde/schildbach/wallet/offline/AcceptBluetoothService$4;
.super Landroid/content/BroadcastReceiver;
.source "AcceptBluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/offline/AcceptBluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/offline/AcceptBluetoothService;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/offline/AcceptBluetoothService;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService$4;->this$0:Lde/schildbach/wallet/offline/AcceptBluetoothService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 171
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 173
    .local v0, "state":I
    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 175
    :cond_0
    invoke-static {}, Lde/schildbach/wallet/offline/AcceptBluetoothService;->access$200()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "bluetooth was turned off, stopping service"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService$4;->this$0:Lde/schildbach/wallet/offline/AcceptBluetoothService;

    invoke-virtual {v1}, Lde/schildbach/wallet/offline/AcceptBluetoothService;->stopSelf()V

    .line 179
    :cond_1
    return-void
.end method
