.class public abstract Lde/schildbach/wallet/ui/InputParser$StreamInputParser;
.super Lde/schildbach/wallet/ui/InputParser;
.source "InputParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/InputParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StreamInputParser"
.end annotation


# instance fields
.field private final inputType:Ljava/lang/String;

.field private final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputType"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "is"    # Ljava/io/InputStream;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 244
    invoke-direct {p0}, Lde/schildbach/wallet/ui/InputParser;-><init>()V

    .line 245
    iput-object p1, p0, Lde/schildbach/wallet/ui/InputParser$StreamInputParser;->inputType:Ljava/lang/String;

    .line 246
    iput-object p2, p0, Lde/schildbach/wallet/ui/InputParser$StreamInputParser;->is:Ljava/io/InputStream;

    .line 247
    return-void
.end method


# virtual methods
.method public parse()V
    .locals 7

    .prologue
    .line 252
    sget-object v3, Lde/schildbach/wallet/util/PaymentProtocol;->MIMETYPE_PAYMENTREQUEST:Ljava/lang/String;

    iget-object v4, p0, Lde/schildbach/wallet/ui/InputParser$StreamInputParser;->inputType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 254
    const/4 v0, 0x0

    .line 258
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/bitcoin/protocols/payments/PaymentRequestException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    iget-object v3, p0, Lde/schildbach/wallet/ui/InputParser$StreamInputParser;->is:Ljava/io/InputStream;

    invoke-static {v3, v1}, Lde/schildbach/wallet/util/Io;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 260
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lde/schildbach/wallet/ui/InputParser$StreamInputParser;->parseAndHandlePaymentRequest([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Lcom/google/bitcoin/protocols/payments/PaymentRequestException; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 284
    if-eqz v1, :cond_0

    .line 285
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 294
    :cond_0
    :goto_0
    :try_start_3
    iget-object v3, p0, Lde/schildbach/wallet/ui/InputParser$StreamInputParser;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v0, v1

    .line 306
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    return-void

    .line 287
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    .line 289
    .local v2, "x":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 296
    .end local v2    # "x":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 298
    .restart local v2    # "x":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 300
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .line 262
    .end local v2    # "x":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 264
    .restart local v2    # "x":Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-static {}, Lde/schildbach/wallet/ui/InputParser;->access$000()Lorg/slf4j/Logger;

    move-result-object v3

    const-string v4, "i/o error while fetching payment request"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    const v3, 0x7f0b00b4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lde/schildbach/wallet/ui/InputParser$StreamInputParser;->error(I[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 284
    if-eqz v0, :cond_1

    .line 285
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 294
    :cond_1
    :goto_3
    :try_start_6
    iget-object v3, p0, Lde/schildbach/wallet/ui/InputParser$StreamInputParser;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 296
    :catch_3
    move-exception v2

    .line 298
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 287
    :catch_4
    move-exception v2

    .line 289
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 268
    .end local v2    # "x":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 270
    .local v2, "x":Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException;
    :goto_4
    :try_start_7
    invoke-static {}, Lde/schildbach/wallet/ui/InputParser;->access$000()Lorg/slf4j/Logger;

    move-result-object v3

    const-string v4, "got unverifyable payment request"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    const v3, 0x7f0b00b8

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lde/schildbach/wallet/ui/InputParser$StreamInputParser;->error(I[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 284
    if-eqz v0, :cond_2

    .line 285
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 294
    .end local v2    # "x":Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException;
    :cond_2
    :goto_5
    :try_start_9
    iget-object v3, p0, Lde/schildbach/wallet/ui/InputParser$StreamInputParser;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_1

    .line 296
    :catch_6
    move-exception v2

    .line 298
    .local v2, "x":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 287
    .local v2, "x":Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException;
    :catch_7
    move-exception v2

    .line 289
    .local v2, "x":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 274
    .end local v2    # "x":Ljava/io/IOException;
    :catch_8
    move-exception v2

    .line 276
    .local v2, "x":Lcom/google/bitcoin/protocols/payments/PaymentRequestException;
    :goto_6
    :try_start_a
    invoke-static {}, Lde/schildbach/wallet/ui/InputParser;->access$000()Lorg/slf4j/Logger;

    move-result-object v3

    const-string v4, "got invalid payment request"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 278
    const v3, 0x7f0b00b9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lde/schildbach/wallet/ui/InputParser$StreamInputParser;->error(I[Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 284
    if-eqz v0, :cond_3

    .line 285
    :try_start_b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 294
    .end local v2    # "x":Lcom/google/bitcoin/protocols/payments/PaymentRequestException;
    :cond_3
    :goto_7
    :try_start_c
    iget-object v3, p0, Lde/schildbach/wallet/ui/InputParser$StreamInputParser;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    goto/16 :goto_1

    .line 296
    :catch_9
    move-exception v2

    .line 298
    .local v2, "x":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 287
    .local v2, "x":Lcom/google/bitcoin/protocols/payments/PaymentRequestException;
    :catch_a
    move-exception v2

    .line 289
    .local v2, "x":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 282
    .end local v2    # "x":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 284
    :goto_8
    if-eqz v0, :cond_4

    .line 285
    :try_start_d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 294
    :cond_4
    :goto_9
    :try_start_e
    iget-object v4, p0, Lde/schildbach/wallet/ui/InputParser$StreamInputParser;->is:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    .line 299
    :goto_a
    throw v3

    .line 287
    :catch_b
    move-exception v2

    .line 289
    .restart local v2    # "x":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 296
    .end local v2    # "x":Ljava/io/IOException;
    :catch_c
    move-exception v2

    .line 298
    .restart local v2    # "x":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 304
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "x":Ljava/io/IOException;
    :cond_5
    iget-object v3, p0, Lde/schildbach/wallet/ui/InputParser$StreamInputParser;->inputType:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lde/schildbach/wallet/ui/InputParser$StreamInputParser;->cannotClassify(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 282
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_8

    .line 274
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_d
    move-exception v2

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .line 268
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_e
    move-exception v2

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_4

    .line 262
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_f
    move-exception v2

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_2
.end method
