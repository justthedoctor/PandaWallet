.class public final Lde/schildbach/wallet/offline/AcceptBluetoothService;
.super Landroid/app/Service;
.source "AcceptBluetoothService.java"


# static fields
.field private static final TIMEOUT_MS:J = 0x493e0L

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private application:Lde/schildbach/wallet/WalletApplication;

.field private final bluetoothStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private classicThread:Lde/schildbach/wallet/offline/AcceptBluetoothThread;

.field private final handler:Landroid/os/Handler;

.field private paymentProtocolThread:Lde/schildbach/wallet/offline/AcceptBluetoothThread;

.field private serviceCreatedAt:J

.field private final timeoutRunnable:Ljava/lang/Runnable;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;

.field private wallet:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lde/schildbach/wallet/offline/AcceptBluetoothService;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->handler:Landroid/os/Handler;

    .line 166
    new-instance v0, Lde/schildbach/wallet/offline/AcceptBluetoothService$4;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/offline/AcceptBluetoothService$4;-><init>(Lde/schildbach/wallet/offline/AcceptBluetoothService;)V

    iput-object v0, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->bluetoothStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 182
    new-instance v0, Lde/schildbach/wallet/offline/AcceptBluetoothService$5;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/offline/AcceptBluetoothService$5;-><init>(Lde/schildbach/wallet/offline/AcceptBluetoothService;)V

    iput-object v0, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->timeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lde/schildbach/wallet/offline/AcceptBluetoothService;Lcom/google/bitcoin/core/Transaction;)Z
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/offline/AcceptBluetoothService;
    .param p1, "x1"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lde/schildbach/wallet/offline/AcceptBluetoothService;->handleTx(Lcom/google/bitcoin/core/Transaction;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lde/schildbach/wallet/offline/AcceptBluetoothService;)Lde/schildbach/wallet/WalletApplication;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/offline/AcceptBluetoothService;

    .prologue
    .line 44
    iget-object v0, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->application:Lde/schildbach/wallet/WalletApplication;

    return-object v0
.end method

.method static synthetic access$200()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method private handleTx(Lcom/google/bitcoin/core/Transaction;)Z
    .locals 4
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 117
    sget-object v1, Lde/schildbach/wallet/offline/AcceptBluetoothService;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " arrived via blueooth"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 121
    :try_start_0
    iget-object v1, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v1, p1}, Lcom/google/bitcoin/core/Wallet;->isTransactionRelevant(Lcom/google/bitcoin/core/Transaction;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->wallet:Lcom/google/bitcoin/core/Wallet;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/google/bitcoin/core/Wallet;->receivePending(Lcom/google/bitcoin/core/Transaction;Ljava/util/List;)V

    .line 125
    iget-object v1, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->handler:Landroid/os/Handler;

    new-instance v2, Lde/schildbach/wallet/offline/AcceptBluetoothService$3;

    invoke-direct {v2, p0, p1}, Lde/schildbach/wallet/offline/AcceptBluetoothService$3;-><init>(Lde/schildbach/wallet/offline/AcceptBluetoothService;Lcom/google/bitcoin/core/Transaction;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    :goto_0
    const/4 v1, 0x1

    .line 146
    :goto_1
    return v1

    .line 136
    :cond_0
    sget-object v1, Lde/schildbach/wallet/offline/AcceptBluetoothService;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " irrelevant"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 143
    .local v0, "x":Lcom/google/bitcoin/core/VerificationException;
    sget-object v1, Lde/schildbach/wallet/offline/AcceptBluetoothService;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot verify tx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " received via bluetooth"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->serviceCreatedAt:J

    .line 79
    sget-object v2, Lde/schildbach/wallet/offline/AcceptBluetoothService;->log:Lorg/slf4j/Logger;

    const-string v3, ".onCreate()"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 81
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 83
    invoke-virtual {p0}, Lde/schildbach/wallet/offline/AcceptBluetoothService;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lde/schildbach/wallet/WalletApplication;

    iput-object v2, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->application:Lde/schildbach/wallet/WalletApplication;

    .line 84
    iget-object v2, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v2}, Lde/schildbach/wallet/WalletApplication;->getWallet()Lcom/google/bitcoin/core/Wallet;

    move-result-object v2

    iput-object v2, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 86
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 88
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lde/schildbach/wallet/offline/AcceptBluetoothService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 89
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lde/schildbach/wallet/offline/AcceptBluetoothService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bluetooth transaction submission"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 90
    iget-object v2, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 92
    iget-object v2, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->bluetoothStateChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lde/schildbach/wallet/offline/AcceptBluetoothService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    new-instance v2, Lde/schildbach/wallet/offline/AcceptBluetoothService$1;

    invoke-direct {v2, p0, v0}, Lde/schildbach/wallet/offline/AcceptBluetoothService$1;-><init>(Lde/schildbach/wallet/offline/AcceptBluetoothService;Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v2, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->classicThread:Lde/schildbach/wallet/offline/AcceptBluetoothThread;

    .line 102
    iget-object v2, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->classicThread:Lde/schildbach/wallet/offline/AcceptBluetoothThread;

    invoke-virtual {v2}, Lde/schildbach/wallet/offline/AcceptBluetoothThread;->start()V

    .line 104
    new-instance v2, Lde/schildbach/wallet/offline/AcceptBluetoothService$2;

    invoke-direct {v2, p0, v0}, Lde/schildbach/wallet/offline/AcceptBluetoothService$2;-><init>(Lde/schildbach/wallet/offline/AcceptBluetoothService;Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v2, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->paymentProtocolThread:Lde/schildbach/wallet/offline/AcceptBluetoothThread;

    .line 112
    iget-object v2, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->paymentProtocolThread:Lde/schildbach/wallet/offline/AcceptBluetoothThread;

    invoke-virtual {v2}, Lde/schildbach/wallet/offline/AcceptBluetoothThread;->start()V

    .line 113
    return-void
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    .line 152
    iget-object v0, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->paymentProtocolThread:Lde/schildbach/wallet/offline/AcceptBluetoothThread;

    invoke-virtual {v0}, Lde/schildbach/wallet/offline/AcceptBluetoothThread;->stopAccepting()V

    .line 153
    iget-object v0, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->classicThread:Lde/schildbach/wallet/offline/AcceptBluetoothThread;

    invoke-virtual {v0}, Lde/schildbach/wallet/offline/AcceptBluetoothThread;->stopAccepting()V

    .line 155
    iget-object v0, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->bluetoothStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/offline/AcceptBluetoothService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 157
    iget-object v0, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 159
    iget-object v0, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 161
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 163
    sget-object v0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service was up for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->serviceCreatedAt:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minutes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 70
    iget-object v0, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lde/schildbach/wallet/offline/AcceptBluetoothService;->timeoutRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    const/4 v0, 0x2

    return v0
.end method
