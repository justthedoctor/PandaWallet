.class Lde/schildbach/wallet/offline/AcceptBluetoothService$5;
.super Ljava/lang/Object;
.source "AcceptBluetoothService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 183
    iput-object p1, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService$5;->this$0:Lde/schildbach/wallet/offline/AcceptBluetoothService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 187
    invoke-static {}, Lde/schildbach/wallet/offline/AcceptBluetoothService;->access$200()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "timeout expired, stopping service"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService$5;->this$0:Lde/schildbach/wallet/offline/AcceptBluetoothService;

    invoke-virtual {v0}, Lde/schildbach/wallet/offline/AcceptBluetoothService;->stopSelf()V

    .line 190
    return-void
.end method
