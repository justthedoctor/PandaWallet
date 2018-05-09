.class Lde/schildbach/wallet/ui/RequestPaymentRequestTask$BluetoothRequestTask$1;
.super Ljava/lang/Object;
.source "RequestPaymentRequestTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/RequestPaymentRequestTask$BluetoothRequestTask;->requestPaymentRequest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/RequestPaymentRequestTask$BluetoothRequestTask;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/RequestPaymentRequestTask$BluetoothRequestTask;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$BluetoothRequestTask$1;->this$0:Lde/schildbach/wallet/ui/RequestPaymentRequestTask$BluetoothRequestTask;

    iput-object p2, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$BluetoothRequestTask$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 203
    invoke-static {}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask;->access$000()Lorg/slf4j/Logger;

    move-result-object v8

    const-string v9, "trying to request payment request from {}"

    iget-object v10, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$BluetoothRequestTask$1;->val$url:Ljava/lang/String;

    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    iget-object v8, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$BluetoothRequestTask$1;->this$0:Lde/schildbach/wallet/ui/RequestPaymentRequestTask$BluetoothRequestTask;

    invoke-static {v8}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$BluetoothRequestTask;->access$300(Lde/schildbach/wallet/ui/RequestPaymentRequestTask$BluetoothRequestTask;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    iget-object v9, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$BluetoothRequestTask$1;->val$url:Ljava/lang/String;

    invoke-static {v9}, Lde/schildbach/wallet/util/Bluetooth;->getBluetoothMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lde/schildbach/wallet/util/Bluetooth;->decompressMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 207
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    const/4 v6, 0x0

    .line 208
    .local v6, "socket":Landroid/bluetooth/BluetoothSocket;
    const/4 v4, 0x0

    .line 209
    .local v4, "os":Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 213
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    sget-object v8, Lde/schildbach/wallet/util/Bluetooth;->BLUETOOTH_UUID_PAYMENT_REQUESTS:Ljava/util/UUID;

    invoke-virtual {v2, v8}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v6

    .line 214
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 216
    invoke-static {}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask;->access$000()Lorg/slf4j/Logger;

    move-result-object v8

    const-string v9, "connected to {}"

    iget-object v10, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$BluetoothRequestTask$1;->val$url:Ljava/lang/String;

    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 219
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 221
    invoke-static {v3}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    .line 222
    .local v0, "cis":Lcom/google/protobuf/CodedInputStream;
    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v1

    .line 224
    .local v1, "cos":Lcom/google/protobuf/CodedOutputStream;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/google/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    .line 225
    iget-object v8, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$BluetoothRequestTask$1;->val$url:Ljava/lang/String;

    invoke-static {v8}, Lde/schildbach/wallet/util/Bluetooth;->getBluetoothQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/google/protobuf/CodedOutputStream;->writeStringNoTag(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v1}, Lcom/google/protobuf/CodedOutputStream;->flush()V

    .line 228
    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    .line 230
    .local v5, "responseCode":I
    const/16 v8, 0xc8

    if-ne v5, v8, :cond_3

    .line 232
    new-instance v8, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$BluetoothRequestTask$1$1;

    sget-object v9, Lde/schildbach/wallet/util/PaymentProtocol;->MIMETYPE_PAYMENTREQUEST:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v10

    invoke-direct {v8, p0, v9, v10}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$BluetoothRequestTask$1$1;-><init>(Lde/schildbach/wallet/ui/RequestPaymentRequestTask$BluetoothRequestTask$1;Ljava/lang/String;[B)V

    invoke-virtual {v8}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$BluetoothRequestTask$1$1;->parse()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :goto_0
    if-eqz v4, :cond_0

    .line 275
    :try_start_1
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 283
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 287
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 295
    :cond_1
    :goto_2
    if-eqz v6, :cond_2

    .line 299
    :try_start_3
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 307
    .end local v0    # "cis":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "cos":Lcom/google/protobuf/CodedOutputStream;
    .end local v5    # "responseCode":I
    :cond_2
    :goto_3
    return-void

    .line 258
    .restart local v0    # "cis":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "cos":Lcom/google/protobuf/CodedOutputStream;
    .restart local v5    # "responseCode":I
    :cond_3
    :try_start_4
    invoke-static {}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask;->access$000()Lorg/slf4j/Logger;

    move-result-object v8

    const-string v9, "got bluetooth error {}"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 260
    iget-object v8, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$BluetoothRequestTask$1;->this$0:Lde/schildbach/wallet/ui/RequestPaymentRequestTask$BluetoothRequestTask;

    const v9, 0x7f0b0103

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$BluetoothRequestTask;->onFail(I[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 263
    .end local v0    # "cis":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "cos":Lcom/google/protobuf/CodedOutputStream;
    .end local v5    # "responseCode":I
    :catch_0
    move-exception v7

    .line 265
    .local v7, "x":Ljava/io/IOException;
    :try_start_5
    invoke-static {}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask;->access$000()Lorg/slf4j/Logger;

    move-result-object v8

    const-string v9, "problem sending"

    invoke-interface {v8, v9, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 267
    iget-object v8, p0, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$BluetoothRequestTask$1;->this$0:Lde/schildbach/wallet/ui/RequestPaymentRequestTask$BluetoothRequestTask;

    const v9, 0x7f0b0101

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lde/schildbach/wallet/ui/RequestPaymentRequestTask$BluetoothRequestTask;->onFail(I[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 271
    if-eqz v4, :cond_4

    .line 275
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 283
    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    .line 287
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 295
    :cond_5
    :goto_5
    if-eqz v6, :cond_2

    .line 299
    :try_start_8
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 301
    :catch_1
    move-exception v8

    goto :goto_3

    .line 271
    .end local v7    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    if-eqz v4, :cond_6

    .line 275
    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 283
    :cond_6
    :goto_6
    if-eqz v3, :cond_7

    .line 287
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 295
    :cond_7
    :goto_7
    if-eqz v6, :cond_8

    .line 299
    :try_start_b
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 304
    :cond_8
    :goto_8
    throw v8

    .line 277
    .restart local v0    # "cis":Lcom/google/protobuf/CodedInputStream;
    .restart local v1    # "cos":Lcom/google/protobuf/CodedOutputStream;
    .restart local v5    # "responseCode":I
    :catch_2
    move-exception v8

    goto :goto_1

    .line 289
    :catch_3
    move-exception v8

    goto :goto_2

    .line 301
    :catch_4
    move-exception v8

    goto :goto_3

    .line 277
    .end local v0    # "cis":Lcom/google/protobuf/CodedInputStream;
    .end local v1    # "cos":Lcom/google/protobuf/CodedOutputStream;
    .end local v5    # "responseCode":I
    .restart local v7    # "x":Ljava/io/IOException;
    :catch_5
    move-exception v8

    goto :goto_4

    .line 289
    :catch_6
    move-exception v8

    goto :goto_5

    .line 277
    .end local v7    # "x":Ljava/io/IOException;
    :catch_7
    move-exception v9

    goto :goto_6

    .line 289
    :catch_8
    move-exception v9

    goto :goto_7

    .line 301
    :catch_9
    move-exception v9

    goto :goto_8
.end method
