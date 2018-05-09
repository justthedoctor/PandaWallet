.class public final Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;
.super Lde/schildbach/wallet/offline/DirectPaymentTask;
.source "DirectPaymentTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/offline/DirectPaymentTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BluetoothPaymentTask"
.end annotation


# instance fields
.field private final bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final bluetoothMac:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lde/schildbach/wallet/offline/DirectPaymentTask$ResultCallback;Landroid/bluetooth/BluetoothAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "backgroundHandler"    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "resultCallback"    # Lde/schildbach/wallet/offline/DirectPaymentTask$ResultCallback;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4, "bluetoothMac"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lde/schildbach/wallet/offline/DirectPaymentTask;-><init>(Landroid/os/Handler;Lde/schildbach/wallet/offline/DirectPaymentTask$ResultCallback;)V

    .line 198
    iput-object p3, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 199
    iput-object p4, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;->bluetoothMac:Ljava/lang/String;

    .line 200
    return-void
.end method

.method static synthetic access$400(Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;

    .prologue
    .line 188
    iget-object v0, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;->bluetoothMac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;

    .prologue
    .line 188
    iget-object v0, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method


# virtual methods
.method public send(Lorg/bitcoin/protocols/payments/Protos$Payment;)V
    .locals 2
    .param p1, "payment"    # Lorg/bitcoin/protocols/payments/Protos$Payment;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 205
    invoke-static {p0}, Lde/schildbach/wallet/offline/DirectPaymentTask;->access$300(Lde/schildbach/wallet/offline/DirectPaymentTask;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask$1;

    invoke-direct {v1, p0, p1}, Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask$1;-><init>(Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;Lorg/bitcoin/protocols/payments/Protos$Payment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 290
    return-void
.end method
