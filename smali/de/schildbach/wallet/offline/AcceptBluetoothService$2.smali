.class Lde/schildbach/wallet/offline/AcceptBluetoothService$2;
.super Lde/schildbach/wallet/offline/AcceptBluetoothThread$PaymentProtocolThread;
.source "AcceptBluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/offline/AcceptBluetoothService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/offline/AcceptBluetoothService;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/offline/AcceptBluetoothService;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0
    .param p2, "x0"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 105
    iput-object p1, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService$2;->this$0:Lde/schildbach/wallet/offline/AcceptBluetoothService;

    invoke-direct {p0, p2}, Lde/schildbach/wallet/offline/AcceptBluetoothThread$PaymentProtocolThread;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    return-void
.end method


# virtual methods
.method public handleTx(Lcom/google/bitcoin/core/Transaction;)Z
    .locals 1
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 109
    iget-object v0, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService$2;->this$0:Lde/schildbach/wallet/offline/AcceptBluetoothService;

    invoke-static {v0, p1}, Lde/schildbach/wallet/offline/AcceptBluetoothService;->access$000(Lde/schildbach/wallet/offline/AcceptBluetoothService;Lcom/google/bitcoin/core/Transaction;)Z

    move-result v0

    return v0
.end method
