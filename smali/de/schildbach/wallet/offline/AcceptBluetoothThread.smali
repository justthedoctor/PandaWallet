.class public abstract Lde/schildbach/wallet/offline/AcceptBluetoothThread;
.super Ljava/lang/Thread;
.source "AcceptBluetoothThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/schildbach/wallet/offline/AcceptBluetoothThread$1;,
        Lde/schildbach/wallet/offline/AcceptBluetoothThread$PaymentProtocolThread;,
        Lde/schildbach/wallet/offline/AcceptBluetoothThread$ClassicBluetoothThread;
    }
.end annotation


# static fields
.field protected static final log:Lorg/slf4j/Logger;


# instance fields
.field protected final listeningSocket:Landroid/bluetooth/BluetoothServerSocket;

.field protected final running:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lde/schildbach/wallet/offline/AcceptBluetoothThread;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/offline/AcceptBluetoothThread;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>(Landroid/bluetooth/BluetoothServerSocket;)V
    .locals 2
    .param p1, "listeningSocket"    # Landroid/bluetooth/BluetoothServerSocket;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lde/schildbach/wallet/offline/AcceptBluetoothThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    iput-object p1, p0, Lde/schildbach/wallet/offline/AcceptBluetoothThread;->listeningSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothServerSocket;Lde/schildbach/wallet/offline/AcceptBluetoothThread$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/bluetooth/BluetoothServerSocket;
    .param p2, "x1"    # Lde/schildbach/wallet/offline/AcceptBluetoothThread$1;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lde/schildbach/wallet/offline/AcceptBluetoothThread;-><init>(Landroid/bluetooth/BluetoothServerSocket;)V

    return-void
.end method

.method protected static listen(Landroid/bluetooth/BluetoothAdapter;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 2
    .param p0, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 269
    :try_start_0
    const-string v1, "Pandacoin Transaction Submission"

    invoke-virtual {p0, v1, p1}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 271
    :catch_0
    move-exception v0

    .line 273
    .local v0, "x":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected abstract handleTx(Lcom/google/bitcoin/core/Transaction;)Z
    .param p1    # Lcom/google/bitcoin/core/Transaction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public stopAccepting()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lde/schildbach/wallet/offline/AcceptBluetoothThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 257
    :try_start_0
    iget-object v0, p0, Lde/schildbach/wallet/offline/AcceptBluetoothThread;->listeningSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    goto :goto_0
.end method
