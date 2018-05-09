.class Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask$1;
.super Ljava/lang/Object;
.source "DirectPaymentTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;->send(Lorg/bitcoin/protocols/payments/Protos$Payment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;

.field final synthetic val$payment:Lorg/bitcoin/protocols/payments/Protos$Payment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;Lorg/bitcoin/protocols/payments/Protos$Payment;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask$1;->this$0:Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;

    iput-object p2, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask$1;->val$payment:Lorg/bitcoin/protocols/payments/Protos$Payment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v12, 0x1

    .line 210
    invoke-static {}, Lde/schildbach/wallet/offline/DirectPaymentTask;->access$100()Lorg/slf4j/Logger;

    move-result-object v9

    const-string v10, "trying to send tx via bluetooth {}"

    iget-object v11, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask$1;->this$0:Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;

    invoke-static {v11}, Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;->access$400(Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    iget-object v9, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask$1;->val$payment:Lorg/bitcoin/protocols/payments/Protos$Payment;

    invoke-virtual {v9}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getTransactionsCount()I

    move-result v9

    if-eq v9, v12, :cond_0

    .line 213
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "wrong transactions count"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 215
    :cond_0
    iget-object v9, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask$1;->this$0:Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;

    invoke-static {v9}, Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;->access$500(Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    iget-object v10, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask$1;->this$0:Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;

    invoke-static {v10}, Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;->access$400(Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lde/schildbach/wallet/util/Bluetooth;->decompressMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 217
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const/4 v7, 0x0

    .line 218
    .local v7, "socket":Landroid/bluetooth/BluetoothSocket;
    const/4 v4, 0x0

    .line 219
    .local v4, "os":Ljava/io/DataOutputStream;
    const/4 v2, 0x0

    .line 223
    .local v2, "is":Ljava/io/DataInputStream;
    :try_start_0
    sget-object v9, Lde/schildbach/wallet/util/Bluetooth;->BLUETOOTH_UUID_PAYMENT_PROTOCOL:Ljava/util/UUID;

    invoke-virtual {v1, v9}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v7

    .line 224
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 226
    invoke-static {}, Lde/schildbach/wallet/offline/DirectPaymentTask;->access$100()Lorg/slf4j/Logger;

    move-result-object v9

    const-string v10, "connected to payment protocol {}"

    iget-object v11, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask$1;->this$0:Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;

    invoke-static {v11}, Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;->access$400(Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .end local v2    # "is":Ljava/io/DataInputStream;
    .local v3, "is":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 231
    .end local v4    # "os":Ljava/io/DataOutputStream;
    .local v5, "os":Ljava/io/DataOutputStream;
    :try_start_2
    iget-object v9, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask$1;->val$payment:Lorg/bitcoin/protocols/payments/Protos$Payment;

    invoke-virtual {v9, v5}, Lorg/bitcoin/protocols/payments/Protos$Payment;->writeDelimitedTo(Ljava/io/OutputStream;)V

    .line 232
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 234
    invoke-static {}, Lde/schildbach/wallet/offline/DirectPaymentTask;->access$100()Lorg/slf4j/Logger;

    move-result-object v9

    const-string v10, "tx sent via bluetooth"

    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 236
    invoke-static {v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v6

    .line 238
    .local v6, "paymentAck":Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    const-string v9, "ack"

    invoke-static {v6}, Lde/schildbach/wallet/util/PaymentProtocol;->parsePaymentAck(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 240
    .local v0, "ack":Z
    invoke-static {}, Lde/schildbach/wallet/offline/DirectPaymentTask;->access$100()Lorg/slf4j/Logger;

    move-result-object v10

    const-string v11, "received {} via bluetooth"

    if-eqz v0, :cond_4

    const-string v9, "ack"

    :goto_0
    invoke-interface {v10, v11, v9}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    iget-object v9, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask$1;->this$0:Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;

    invoke-virtual {v9, v0}, Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;->onResult(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 252
    if-eqz v5, :cond_1

    .line 256
    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 264
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 268
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 276
    :cond_2
    :goto_2
    if-eqz v7, :cond_a

    .line 280
    :try_start_5
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v2, v3

    .end local v3    # "is":Ljava/io/DataInputStream;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    move-object v4, v5

    .line 288
    .end local v0    # "ack":Z
    .end local v5    # "os":Ljava/io/DataOutputStream;
    .end local v6    # "paymentAck":Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .restart local v4    # "os":Ljava/io/DataOutputStream;
    :cond_3
    :goto_3
    return-void

    .line 240
    .end local v2    # "is":Ljava/io/DataInputStream;
    .end local v4    # "os":Ljava/io/DataOutputStream;
    .restart local v0    # "ack":Z
    .restart local v3    # "is":Ljava/io/DataInputStream;
    .restart local v5    # "os":Ljava/io/DataOutputStream;
    .restart local v6    # "paymentAck":Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    :cond_4
    :try_start_6
    const-string v9, "nack"
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    .line 282
    :catch_0
    move-exception v9

    move-object v2, v3

    .end local v3    # "is":Ljava/io/DataInputStream;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    move-object v4, v5

    .line 285
    .end local v5    # "os":Ljava/io/DataOutputStream;
    .restart local v4    # "os":Ljava/io/DataOutputStream;
    goto :goto_3

    .line 244
    .end local v0    # "ack":Z
    .end local v6    # "paymentAck":Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    :catch_1
    move-exception v8

    .line 246
    .local v8, "x":Ljava/io/IOException;
    :goto_4
    :try_start_7
    invoke-static {}, Lde/schildbach/wallet/offline/DirectPaymentTask;->access$100()Lorg/slf4j/Logger;

    move-result-object v9

    const-string v10, "problem sending"

    invoke-interface {v9, v10, v8}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    iget-object v9, p0, Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask$1;->this$0:Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;

    const v10, 0x7f0b0101

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Lde/schildbach/wallet/offline/DirectPaymentTask$BluetoothPaymentTask;->onFail(I[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 252
    if-eqz v4, :cond_5

    .line 256
    :try_start_8
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 264
    :cond_5
    :goto_5
    if-eqz v2, :cond_6

    .line 268
    :try_start_9
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 276
    :cond_6
    :goto_6
    if-eqz v7, :cond_3

    .line 280
    :try_start_a
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_3

    .line 282
    :catch_2
    move-exception v9

    goto :goto_3

    .line 252
    .end local v8    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_7
    if-eqz v4, :cond_7

    .line 256
    :try_start_b
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 264
    :cond_7
    :goto_8
    if-eqz v2, :cond_8

    .line 268
    :try_start_c
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 276
    :cond_8
    :goto_9
    if-eqz v7, :cond_9

    .line 280
    :try_start_d
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 285
    :cond_9
    :goto_a
    throw v9

    .line 258
    .end local v2    # "is":Ljava/io/DataInputStream;
    .end local v4    # "os":Ljava/io/DataOutputStream;
    .restart local v0    # "ack":Z
    .restart local v3    # "is":Ljava/io/DataInputStream;
    .restart local v5    # "os":Ljava/io/DataOutputStream;
    .restart local v6    # "paymentAck":Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    :catch_3
    move-exception v9

    goto :goto_1

    .line 270
    :catch_4
    move-exception v9

    goto :goto_2

    .line 258
    .end local v0    # "ack":Z
    .end local v3    # "is":Ljava/io/DataInputStream;
    .end local v5    # "os":Ljava/io/DataOutputStream;
    .end local v6    # "paymentAck":Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    .restart local v4    # "os":Ljava/io/DataOutputStream;
    .restart local v8    # "x":Ljava/io/IOException;
    :catch_5
    move-exception v9

    goto :goto_5

    .line 270
    :catch_6
    move-exception v9

    goto :goto_6

    .line 258
    .end local v8    # "x":Ljava/io/IOException;
    :catch_7
    move-exception v10

    goto :goto_8

    .line 270
    :catch_8
    move-exception v10

    goto :goto_9

    .line 282
    :catch_9
    move-exception v10

    goto :goto_a

    .line 252
    .end local v2    # "is":Ljava/io/DataInputStream;
    .restart local v3    # "is":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "is":Ljava/io/DataInputStream;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    goto :goto_7

    .end local v2    # "is":Ljava/io/DataInputStream;
    .end local v4    # "os":Ljava/io/DataOutputStream;
    .restart local v3    # "is":Ljava/io/DataInputStream;
    .restart local v5    # "os":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v9

    move-object v2, v3

    .end local v3    # "is":Ljava/io/DataInputStream;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    move-object v4, v5

    .end local v5    # "os":Ljava/io/DataOutputStream;
    .restart local v4    # "os":Ljava/io/DataOutputStream;
    goto :goto_7

    .line 244
    .end local v2    # "is":Ljava/io/DataInputStream;
    .restart local v3    # "is":Ljava/io/DataInputStream;
    :catch_a
    move-exception v8

    move-object v2, v3

    .end local v3    # "is":Ljava/io/DataInputStream;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    goto :goto_4

    .end local v2    # "is":Ljava/io/DataInputStream;
    .end local v4    # "os":Ljava/io/DataOutputStream;
    .restart local v3    # "is":Ljava/io/DataInputStream;
    .restart local v5    # "os":Ljava/io/DataOutputStream;
    :catch_b
    move-exception v8

    move-object v2, v3

    .end local v3    # "is":Ljava/io/DataInputStream;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    move-object v4, v5

    .end local v5    # "os":Ljava/io/DataOutputStream;
    .restart local v4    # "os":Ljava/io/DataOutputStream;
    goto :goto_4

    .end local v2    # "is":Ljava/io/DataInputStream;
    .end local v4    # "os":Ljava/io/DataOutputStream;
    .restart local v0    # "ack":Z
    .restart local v3    # "is":Ljava/io/DataInputStream;
    .restart local v5    # "os":Ljava/io/DataOutputStream;
    .restart local v6    # "paymentAck":Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    :cond_a
    move-object v2, v3

    .end local v3    # "is":Ljava/io/DataInputStream;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    move-object v4, v5

    .end local v5    # "os":Ljava/io/DataOutputStream;
    .restart local v4    # "os":Ljava/io/DataOutputStream;
    goto :goto_3
.end method
