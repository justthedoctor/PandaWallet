.class public abstract Lde/schildbach/wallet/offline/AcceptBluetoothThread$ClassicBluetoothThread;
.super Lde/schildbach/wallet/offline/AcceptBluetoothThread;
.source "AcceptBluetoothThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/offline/AcceptBluetoothThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ClassicBluetoothThread"
.end annotation


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 66
    sget-object v0, Lde/schildbach/wallet/util/Bluetooth;->BLUETOOTH_UUID_CLASSIC:Ljava/util/UUID;

    invoke-static {p1, v0}, Lde/schildbach/wallet/offline/AcceptBluetoothThread$ClassicBluetoothThread;->listen(Landroid/bluetooth/BluetoothAdapter;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lde/schildbach/wallet/offline/AcceptBluetoothThread;-><init>(Landroid/bluetooth/BluetoothServerSocket;Lde/schildbach/wallet/offline/AcceptBluetoothThread$1;)V

    .line 67
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 72
    :cond_0
    :goto_0
    iget-object v12, p0, Lde/schildbach/wallet/offline/AcceptBluetoothThread$ClassicBluetoothThread;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 74
    const/4 v9, 0x0

    .line 75
    .local v9, "socket":Landroid/bluetooth/BluetoothSocket;
    const/4 v2, 0x0

    .line 76
    .local v2, "is":Ljava/io/DataInputStream;
    const/4 v7, 0x0

    .line 81
    .local v7, "os":Ljava/io/DataOutputStream;
    :try_start_0
    iget-object v12, p0, Lde/schildbach/wallet/offline/AcceptBluetoothThread$ClassicBluetoothThread;->listeningSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v9

    .line 83
    sget-object v12, Lde/schildbach/wallet/offline/AcceptBluetoothThread$ClassicBluetoothThread;->log:Lorg/slf4j/Logger;

    const-string v13, "accepted classic bluetooth connection"

    invoke-interface {v12, v13}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 85
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .end local v2    # "is":Ljava/io/DataInputStream;
    .local v3, "is":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    .end local v7    # "os":Ljava/io/DataOutputStream;
    .local v8, "os":Ljava/io/DataOutputStream;
    const/4 v0, 0x1

    .line 90
    .local v0, "ack":Z
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 92
    .local v6, "numMessages":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_2

    .line 94
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 95
    .local v5, "msgLength":I
    new-array v4, v5, [B

    .line 96
    .local v4, "msg":[B
    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 100
    :try_start_3
    new-instance v10, Lcom/google/bitcoin/core/Transaction;

    sget-object v12, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {v10, v12, v4}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    .line 102
    .local v10, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {p0, v10}, Lde/schildbach/wallet/offline/AcceptBluetoothThread$ClassicBluetoothThread;->handleTx(Lcom/google/bitcoin/core/Transaction;)Z
    :try_end_3
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v12

    if-nez v12, :cond_1

    .line 103
    const/4 v0, 0x0

    .line 92
    .end local v10    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 105
    :catch_0
    move-exception v11

    .line 107
    .local v11, "x":Lcom/google/bitcoin/core/ProtocolException;
    :try_start_4
    sget-object v12, Lde/schildbach/wallet/offline/AcceptBluetoothThread$ClassicBluetoothThread;->log:Lorg/slf4j/Logger;

    const-string v13, "cannot decode message received via bluetooth"

    invoke-interface {v12, v13, v11}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    const/4 v0, 0x0

    goto :goto_2

    .line 112
    .end local v4    # "msg":[B
    .end local v5    # "msgLength":I
    .end local v11    # "x":Lcom/google/bitcoin/core/ProtocolException;
    :cond_2
    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 120
    if-eqz v8, :cond_3

    .line 124
    :try_start_5
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 132
    :cond_3
    :goto_3
    if-eqz v3, :cond_4

    .line 136
    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 144
    :cond_4
    :goto_4
    if-eqz v9, :cond_b

    .line 148
    :try_start_7
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    move-object v7, v8

    .end local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v7    # "os":Ljava/io/DataOutputStream;
    move-object v2, v3

    .line 153
    .end local v3    # "is":Ljava/io/DataInputStream;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    goto :goto_0

    .line 150
    .end local v2    # "is":Ljava/io/DataInputStream;
    .end local v7    # "os":Ljava/io/DataOutputStream;
    .restart local v3    # "is":Ljava/io/DataInputStream;
    .restart local v8    # "os":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v12

    move-object v7, v8

    .end local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v7    # "os":Ljava/io/DataOutputStream;
    move-object v2, v3

    .line 153
    .end local v3    # "is":Ljava/io/DataInputStream;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    goto :goto_0

    .line 114
    .end local v0    # "ack":Z
    .end local v1    # "i":I
    .end local v6    # "numMessages":I
    :catch_2
    move-exception v11

    .line 116
    .local v11, "x":Ljava/io/IOException;
    :goto_5
    :try_start_8
    sget-object v12, Lde/schildbach/wallet/offline/AcceptBluetoothThread$ClassicBluetoothThread;->log:Lorg/slf4j/Logger;

    const-string v13, "exception in bluetooth accept loop"

    invoke-interface {v12, v13, v11}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 120
    if-eqz v7, :cond_5

    .line 124
    :try_start_9
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 132
    :cond_5
    :goto_6
    if-eqz v2, :cond_6

    .line 136
    :try_start_a
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 144
    :cond_6
    :goto_7
    if-eqz v9, :cond_0

    .line 148
    :try_start_b
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_0

    .line 150
    :catch_3
    move-exception v12

    goto/16 :goto_0

    .line 120
    .end local v11    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_8
    if-eqz v7, :cond_7

    .line 124
    :try_start_c
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 132
    :cond_7
    :goto_9
    if-eqz v2, :cond_8

    .line 136
    :try_start_d
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 144
    :cond_8
    :goto_a
    if-eqz v9, :cond_9

    .line 148
    :try_start_e
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 153
    :cond_9
    :goto_b
    throw v12

    .line 126
    .end local v2    # "is":Ljava/io/DataInputStream;
    .end local v7    # "os":Ljava/io/DataOutputStream;
    .restart local v0    # "ack":Z
    .restart local v1    # "i":I
    .restart local v3    # "is":Ljava/io/DataInputStream;
    .restart local v6    # "numMessages":I
    .restart local v8    # "os":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v12

    goto :goto_3

    .line 138
    :catch_5
    move-exception v12

    goto :goto_4

    .line 126
    .end local v0    # "ack":Z
    .end local v1    # "i":I
    .end local v3    # "is":Ljava/io/DataInputStream;
    .end local v6    # "numMessages":I
    .end local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    .restart local v7    # "os":Ljava/io/DataOutputStream;
    .restart local v11    # "x":Ljava/io/IOException;
    :catch_6
    move-exception v12

    goto :goto_6

    .line 138
    :catch_7
    move-exception v12

    goto :goto_7

    .line 126
    .end local v11    # "x":Ljava/io/IOException;
    :catch_8
    move-exception v13

    goto :goto_9

    .line 138
    :catch_9
    move-exception v13

    goto :goto_a

    .line 150
    :catch_a
    move-exception v13

    goto :goto_b

    .line 157
    .end local v2    # "is":Ljava/io/DataInputStream;
    .end local v7    # "os":Ljava/io/DataOutputStream;
    .end local v9    # "socket":Landroid/bluetooth/BluetoothSocket;
    :cond_a
    return-void

    .line 120
    .restart local v3    # "is":Ljava/io/DataInputStream;
    .restart local v7    # "os":Ljava/io/DataOutputStream;
    .restart local v9    # "socket":Landroid/bluetooth/BluetoothSocket;
    :catchall_1
    move-exception v12

    move-object v2, v3

    .end local v3    # "is":Ljava/io/DataInputStream;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    goto :goto_8

    .end local v2    # "is":Ljava/io/DataInputStream;
    .end local v7    # "os":Ljava/io/DataOutputStream;
    .restart local v0    # "ack":Z
    .restart local v3    # "is":Ljava/io/DataInputStream;
    .restart local v8    # "os":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v12

    move-object v7, v8

    .end local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v7    # "os":Ljava/io/DataOutputStream;
    move-object v2, v3

    .end local v3    # "is":Ljava/io/DataInputStream;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    goto :goto_8

    .line 114
    .end local v0    # "ack":Z
    .end local v2    # "is":Ljava/io/DataInputStream;
    .restart local v3    # "is":Ljava/io/DataInputStream;
    :catch_b
    move-exception v11

    move-object v2, v3

    .end local v3    # "is":Ljava/io/DataInputStream;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    goto :goto_5

    .end local v2    # "is":Ljava/io/DataInputStream;
    .end local v7    # "os":Ljava/io/DataOutputStream;
    .restart local v0    # "ack":Z
    .restart local v3    # "is":Ljava/io/DataInputStream;
    .restart local v8    # "os":Ljava/io/DataOutputStream;
    :catch_c
    move-exception v11

    move-object v7, v8

    .end local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v7    # "os":Ljava/io/DataOutputStream;
    move-object v2, v3

    .end local v3    # "is":Ljava/io/DataInputStream;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    goto :goto_5

    .end local v2    # "is":Ljava/io/DataInputStream;
    .end local v7    # "os":Ljava/io/DataOutputStream;
    .restart local v1    # "i":I
    .restart local v3    # "is":Ljava/io/DataInputStream;
    .restart local v6    # "numMessages":I
    .restart local v8    # "os":Ljava/io/DataOutputStream;
    :cond_b
    move-object v7, v8

    .end local v8    # "os":Ljava/io/DataOutputStream;
    .restart local v7    # "os":Ljava/io/DataOutputStream;
    move-object v2, v3

    .end local v3    # "is":Ljava/io/DataInputStream;
    .restart local v2    # "is":Ljava/io/DataInputStream;
    goto/16 :goto_0
.end method
