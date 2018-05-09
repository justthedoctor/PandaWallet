.class public abstract Lde/schildbach/wallet/offline/AcceptBluetoothThread$PaymentProtocolThread;
.super Lde/schildbach/wallet/offline/AcceptBluetoothThread;
.source "AcceptBluetoothThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/offline/AcceptBluetoothThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PaymentProtocolThread"
.end annotation


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 164
    sget-object v0, Lde/schildbach/wallet/util/Bluetooth;->BLUETOOTH_UUID_PAYMENT_PROTOCOL:Ljava/util/UUID;

    invoke-static {p1, v0}, Lde/schildbach/wallet/offline/AcceptBluetoothThread$PaymentProtocolThread;->listen(Landroid/bluetooth/BluetoothAdapter;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lde/schildbach/wallet/offline/AcceptBluetoothThread;-><init>(Landroid/bluetooth/BluetoothServerSocket;Lde/schildbach/wallet/offline/AcceptBluetoothThread$1;)V

    .line 165
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 170
    :cond_0
    :goto_0
    iget-object v12, p0, Lde/schildbach/wallet/offline/AcceptBluetoothThread$PaymentProtocolThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 172
    const/4 v9, 0x0

    .line 173
    .local v9, "socket":Landroid/bluetooth/BluetoothSocket;
    const/4 v2, 0x0

    .line 174
    .local v2, "is":Ljava/io/DataInputStream;
    const/4 v5, 0x0

    .line 179
    .local v5, "os":Ljava/io/DataOutputStream;
    :try_start_0
    iget-object v12, p0, Lde/schildbach/wallet/offline/AcceptBluetoothThread$PaymentProtocolThread;->listeningSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v9

    .line 181
    sget-object v12, Lde/schildbach/wallet/offline/AcceptBluetoothThread$PaymentProtocolThread;->log:Lorg/slf4j/Logger;

    const-string v13, "accepted payment protocol bluetooth connection"

    invoke-interface {v12, v13}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 183
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    .end local v2    # "is":Ljava/io/DataInputStream;
    .local v3, "is":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 186
    .end local v5    # "os":Ljava/io/DataOutputStream;
    .local v6, "os":Ljava/io/DataOutputStream;
    const/4 v0, 0x1

    .line 188
    .local v0, "ack":Z
    :try_start_2
    invoke-static {v3}, Lorg/bitcoin/protocols/payments/Protos$Payment;->parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v7

    .line 190
    .local v7, "payment":Lorg/bitcoin/protocols/payments/Protos$Payment;
    sget-object v12, Lde/schildbach/wallet/offline/AcceptBluetoothThread$PaymentProtocolThread;->log:Lorg/slf4j/Logger;

    const-string v13, "got payment message"

    invoke-interface {v12, v13}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 192
    invoke-static {v7}, Lde/schildbach/wallet/util/PaymentProtocol;->parsePaymentMessage(Lorg/bitcoin/protocols/payments/Protos$Payment;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/bitcoin/core/Transaction;

    .line 194
    .local v10, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {p0, v10}, Lde/schildbach/wallet/offline/AcceptBluetoothThread$PaymentProtocolThread;->handleTx(Lcom/google/bitcoin/core/Transaction;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 195
    const/4 v0, 0x0

    goto :goto_1

    .line 198
    .end local v10    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_2
    if-eqz v0, :cond_5

    const-string v4, "ack"

    .line 200
    .local v4, "memo":Ljava/lang/String;
    :goto_2
    sget-object v12, Lde/schildbach/wallet/offline/AcceptBluetoothThread$PaymentProtocolThread;->log:Lorg/slf4j/Logger;

    const-string v13, "sending {} via bluetooth"

    invoke-interface {v12, v13, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    invoke-static {v7, v4}, Lde/schildbach/wallet/util/PaymentProtocol;->createPaymentAck(Lorg/bitcoin/protocols/payments/Protos$Payment;Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v8

    .line 203
    .local v8, "paymentAck":Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    invoke-virtual {v8, v6}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->writeDelimitedTo(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 211
    if-eqz v6, :cond_3

    .line 215
    :try_start_3
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 223
    :cond_3
    :goto_3
    if-eqz v3, :cond_4

    .line 227
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 235
    :cond_4
    :goto_4
    if-eqz v9, :cond_c

    .line 239
    :try_start_5
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v5, v6

    .end local v6    # "os":Ljava/io/DataOutputStream;
    .restart local v5    # "os":Ljava/io/DataOutputStream;
    move-object v2, v3

    .line 244
    .end local v3    # "is":Ljava/io/DataInputStream;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    goto :goto_0

    .line 198
    .end local v2    # "is":Ljava/io/DataInputStream;
    .end local v4    # "memo":Ljava/lang/String;
    .end local v5    # "os":Ljava/io/DataOutputStream;
    .end local v8    # "paymentAck":Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .restart local v3    # "is":Ljava/io/DataInputStream;
    .restart local v6    # "os":Ljava/io/DataOutputStream;
    :cond_5
    :try_start_6
    const-string v4, "nack"
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    .line 241
    .restart local v4    # "memo":Ljava/lang/String;
    .restart local v8    # "paymentAck":Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    :catch_0
    move-exception v12

    move-object v5, v6

    .end local v6    # "os":Ljava/io/DataOutputStream;
    .restart local v5    # "os":Ljava/io/DataOutputStream;
    move-object v2, v3

    .line 244
    .end local v3    # "is":Ljava/io/DataInputStream;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    goto :goto_0

    .line 205
    .end local v0    # "ack":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "memo":Ljava/lang/String;
    .end local v7    # "payment":Lorg/bitcoin/protocols/payments/Protos$Payment;
    .end local v8    # "paymentAck":Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    :catch_1
    move-exception v11

    .line 207
    .local v11, "x":Ljava/io/IOException;
    :goto_5
    :try_start_7
    sget-object v12, Lde/schildbach/wallet/offline/AcceptBluetoothThread$PaymentProtocolThread;->log:Lorg/slf4j/Logger;

    const-string v13, "exception in bluetooth accept loop"

    invoke-interface {v12, v13, v11}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 211
    if-eqz v5, :cond_6

    .line 215
    :try_start_8
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 223
    :cond_6
    :goto_6
    if-eqz v2, :cond_7

    .line 227
    :try_start_9
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 235
    :cond_7
    :goto_7
    if-eqz v9, :cond_0

    .line 239
    :try_start_a
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_0

    .line 241
    :catch_2
    move-exception v12

    goto/16 :goto_0

    .line 211
    .end local v11    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_8
    if-eqz v5, :cond_8

    .line 215
    :try_start_b
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 223
    :cond_8
    :goto_9
    if-eqz v2, :cond_9

    .line 227
    :try_start_c
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 235
    :cond_9
    :goto_a
    if-eqz v9, :cond_a

    .line 239
    :try_start_d
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 244
    :cond_a
    :goto_b
    throw v12

    .line 217
    .end local v2    # "is":Ljava/io/DataInputStream;
    .end local v5    # "os":Ljava/io/DataOutputStream;
    .restart local v0    # "ack":Z
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "is":Ljava/io/DataInputStream;
    .restart local v4    # "memo":Ljava/lang/String;
    .restart local v6    # "os":Ljava/io/DataOutputStream;
    .restart local v7    # "payment":Lorg/bitcoin/protocols/payments/Protos$Payment;
    .restart local v8    # "paymentAck":Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    :catch_3
    move-exception v12

    goto :goto_3

    .line 229
    :catch_4
    move-exception v12

    goto :goto_4

    .line 217
    .end local v0    # "ack":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "is":Ljava/io/DataInputStream;
    .end local v4    # "memo":Ljava/lang/String;
    .end local v6    # "os":Ljava/io/DataOutputStream;
    .end local v7    # "payment":Lorg/bitcoin/protocols/payments/Protos$Payment;
    .end local v8    # "paymentAck":Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    .restart local v5    # "os":Ljava/io/DataOutputStream;
    .restart local v11    # "x":Ljava/io/IOException;
    :catch_5
    move-exception v12

    goto :goto_6

    .line 229
    :catch_6
    move-exception v12

    goto :goto_7

    .line 217
    .end local v11    # "x":Ljava/io/IOException;
    :catch_7
    move-exception v13

    goto :goto_9

    .line 229
    :catch_8
    move-exception v13

    goto :goto_a

    .line 241
    :catch_9
    move-exception v13

    goto :goto_b

    .line 248
    .end local v2    # "is":Ljava/io/DataInputStream;
    .end local v5    # "os":Ljava/io/DataOutputStream;
    .end local v9    # "socket":Landroid/bluetooth/BluetoothSocket;
    :cond_b
    return-void

    .line 211
    .restart local v3    # "is":Ljava/io/DataInputStream;
    .restart local v5    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "socket":Landroid/bluetooth/BluetoothSocket;
    :catchall_1
    move-exception v12

    move-object v2, v3

    .end local v3    # "is":Ljava/io/DataInputStream;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    goto :goto_8

    .end local v2    # "is":Ljava/io/DataInputStream;
    .end local v5    # "os":Ljava/io/DataOutputStream;
    .restart local v0    # "ack":Z
    .restart local v3    # "is":Ljava/io/DataInputStream;
    .restart local v6    # "os":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v12

    move-object v5, v6

    .end local v6    # "os":Ljava/io/DataOutputStream;
    .restart local v5    # "os":Ljava/io/DataOutputStream;
    move-object v2, v3

    .end local v3    # "is":Ljava/io/DataInputStream;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    goto :goto_8

    .line 205
    .end local v0    # "ack":Z
    .end local v2    # "is":Ljava/io/DataInputStream;
    .restart local v3    # "is":Ljava/io/DataInputStream;
    :catch_a
    move-exception v11

    move-object v2, v3

    .end local v3    # "is":Ljava/io/DataInputStream;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    goto :goto_5

    .end local v2    # "is":Ljava/io/DataInputStream;
    .end local v5    # "os":Ljava/io/DataOutputStream;
    .restart local v0    # "ack":Z
    .restart local v3    # "is":Ljava/io/DataInputStream;
    .restart local v6    # "os":Ljava/io/DataOutputStream;
    :catch_b
    move-exception v11

    move-object v5, v6

    .end local v6    # "os":Ljava/io/DataOutputStream;
    .restart local v5    # "os":Ljava/io/DataOutputStream;
    move-object v2, v3

    .end local v3    # "is":Ljava/io/DataInputStream;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    goto :goto_5

    .end local v2    # "is":Ljava/io/DataInputStream;
    .end local v5    # "os":Ljava/io/DataOutputStream;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "is":Ljava/io/DataInputStream;
    .restart local v4    # "memo":Ljava/lang/String;
    .restart local v6    # "os":Ljava/io/DataOutputStream;
    .restart local v7    # "payment":Lorg/bitcoin/protocols/payments/Protos$Payment;
    .restart local v8    # "paymentAck":Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    :cond_c
    move-object v5, v6

    .end local v6    # "os":Ljava/io/DataOutputStream;
    .restart local v5    # "os":Ljava/io/DataOutputStream;
    move-object v2, v3

    .end local v3    # "is":Ljava/io/DataInputStream;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    goto/16 :goto_0
.end method
