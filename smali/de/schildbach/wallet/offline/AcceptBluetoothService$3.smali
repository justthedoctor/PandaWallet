.class Lde/schildbach/wallet/offline/AcceptBluetoothService$3;
.super Ljava/lang/Object;
.source "AcceptBluetoothService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/offline/AcceptBluetoothService;->handleTx(Lcom/google/bitcoin/core/Transaction;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/offline/AcceptBluetoothService;

.field final synthetic val$tx:Lcom/google/bitcoin/core/Transaction;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/offline/AcceptBluetoothService;Lcom/google/bitcoin/core/Transaction;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService$3;->this$0:Lde/schildbach/wallet/offline/AcceptBluetoothService;

    iput-object p2, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService$3;->val$tx:Lcom/google/bitcoin/core/Transaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService$3;->this$0:Lde/schildbach/wallet/offline/AcceptBluetoothService;

    invoke-static {v0}, Lde/schildbach/wallet/offline/AcceptBluetoothService;->access$100(Lde/schildbach/wallet/offline/AcceptBluetoothService;)Lde/schildbach/wallet/WalletApplication;

    move-result-object v0

    iget-object v1, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService$3;->val$tx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/WalletApplication;->broadcastTransaction(Lcom/google/bitcoin/core/Transaction;)V

    .line 131
    return-void
.end method
