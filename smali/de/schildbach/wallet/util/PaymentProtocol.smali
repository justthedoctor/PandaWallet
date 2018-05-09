.class public final Lde/schildbach/wallet/util/PaymentProtocol;
.super Ljava/lang/Object;
.source "PaymentProtocol.java"


# static fields
.field public static final MIMETYPE_PAYMENT:Ljava/lang/String;

.field public static final MIMETYPE_PAYMENTACK:Ljava/lang/String;

.field public static final MIMETYPE_PAYMENTREQUEST:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Pandacoin"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-paymentrequest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/util/PaymentProtocol;->MIMETYPE_PAYMENTREQUEST:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Pandacoin"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-payment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/util/PaymentProtocol;->MIMETYPE_PAYMENT:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Pandacoin"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-paymentack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/util/PaymentProtocol;->MIMETYPE_PAYMENTACK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPaymentAck(Lorg/bitcoin/protocols/payments/Protos$Payment;Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 2
    .param p0, "paymentMessage"    # Lorg/bitcoin/protocols/payments/Protos$Payment;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "memo"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 200
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    .line 202
    .local v0, "builder":Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    invoke-virtual {v0, p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->setPayment(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    .line 204
    invoke-virtual {v0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->setMemo(Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    .line 206
    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v1

    return-object v1
.end method

.method public static createPaymentMessage(Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/Address;Ljava/math/BigInteger;Ljava/lang/String;[B)Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 5
    .param p0, "transaction"    # Lcom/google/bitcoin/core/Transaction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "refundAddress"    # Lcom/google/bitcoin/core/Address;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "refundAmount"    # Ljava/math/BigInteger;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "memo"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "merchantData"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 164
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    .line 166
    .local v0, "builder":Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->unsafeBitcoinSerialize()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->addTransactions(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    .line 168
    if-eqz p1, :cond_1

    .line 170
    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-lez v2, :cond_0

    .line 171
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refund amount too big for protobuf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 173
    :cond_0
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Output;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    move-result-object v1

    .line 174
    .local v1, "refundOutput":Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    invoke-virtual {p2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->setAmount(J)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    .line 175
    invoke-static {p1}, Lcom/google/bitcoin/script/ScriptBuilder;->createOutputScript(Lcom/google/bitcoin/core/Address;)Lcom/google/bitcoin/script/Script;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/bitcoin/script/Script;->getProgram()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->setScript(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    .line 176
    invoke-virtual {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->addRefundTo(Lorg/bitcoin/protocols/payments/Protos$Output$Builder;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    .line 179
    .end local v1    # "refundOutput":Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    :cond_1
    if-eqz p3, :cond_2

    .line 180
    invoke-virtual {v0, p3}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->setMemo(Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    .line 182
    :cond_2
    if-eqz p4, :cond_3

    .line 183
    invoke-static {p4}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->setMerchantData(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    .line 185
    :cond_3
    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v2

    return-object v2
.end method

.method public static createPaymentRequest(Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;Ljava/lang/String;Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 6
    .param p0, "amount"    # Ljava/math/BigInteger;
    .param p1, "toAddress"    # Lcom/google/bitcoin/core/Address;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "memo"    # Ljava/lang/String;
    .param p3, "paymentUrl"    # Ljava/lang/String;

    .prologue
    .line 57
    if-eqz p0, :cond_0

    const-wide v3, 0x7fffffffffffffffL

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-lez v3, :cond_0

    .line 58
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "amount too big for protobuf: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 60
    :cond_0
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Output;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    move-result-object v0

    .line 61
    .local v0, "output":Lorg/bitcoin/protocols/payments/Protos$Output$Builder;
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    :goto_0
    invoke-virtual {v0, v3, v4}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->setAmount(J)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    .line 62
    invoke-static {p1}, Lcom/google/bitcoin/script/ScriptBuilder;->createOutputScript(Lcom/google/bitcoin/core/Address;)Lcom/google/bitcoin/script/Script;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/script/Script;->getProgram()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bitcoin/protocols/payments/Protos$Output$Builder;->setScript(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$Output$Builder;

    .line 64
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v1

    .line 65
    .local v1, "paymentDetails":Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    sget-object v3, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/NetworkParameters;->getPaymentProtocolId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->setNetwork(Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    .line 66
    invoke-virtual {v1, v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->addOutputs(Lorg/bitcoin/protocols/payments/Protos$Output$Builder;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    .line 67
    if-eqz p2, :cond_1

    .line 68
    invoke-virtual {v1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->setMemo(Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    .line 69
    :cond_1
    if-eqz p3, :cond_2

    .line 70
    invoke-virtual {v1, p3}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->setPaymentUrl(Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    .line 71
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->setTime(J)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    .line 73
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v2

    .line 74
    .local v2, "paymentRequest":Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    invoke-virtual {v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->setSerializedPaymentDetails(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    .line 76
    invoke-virtual {v2}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v3

    return-object v3

    .line 61
    .end local v1    # "paymentDetails":Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .end local v2    # "paymentRequest":Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    :cond_3
    const-wide/16 v3, 0x0

    goto :goto_0
.end method

.method private static parseOutput(Lorg/bitcoin/protocols/payments/Protos$Output;)Lde/schildbach/wallet/PaymentIntent$Output;
    .locals 6
    .param p0, "output"    # Lorg/bitcoin/protocols/payments/Protos$Output;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidOutputs;
        }
    .end annotation

    .prologue
    .line 151
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output;->getAmount()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 152
    .local v0, "amount":Ljava/math/BigInteger;
    new-instance v1, Lcom/google/bitcoin/script/Script;

    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output;->getScript()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/bitcoin/script/Script;-><init>([B)V

    .line 153
    .local v1, "script":Lcom/google/bitcoin/script/Script;
    new-instance v3, Lde/schildbach/wallet/PaymentIntent$Output;

    invoke-direct {v3, v0, v1}, Lde/schildbach/wallet/PaymentIntent$Output;-><init>(Ljava/math/BigInteger;Lcom/google/bitcoin/script/Script;)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 155
    .end local v0    # "amount":Ljava/math/BigInteger;
    .end local v1    # "script":Lcom/google/bitcoin/script/Script;
    :catch_0
    move-exception v2

    .line 157
    .local v2, "x":Lcom/google/bitcoin/core/ScriptException;
    new-instance v3, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidOutputs;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unparseable script in output: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Output;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidOutputs;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static parsePaymentAck(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;)Ljava/lang/String;
    .locals 2
    .param p0, "paymentAck"    # Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 211
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->hasMemo()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getMemo()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "memo":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 211
    .end local v0    # "memo":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parsePaymentMessage(Lorg/bitcoin/protocols/payments/Protos$Payment;)Ljava/util/List;
    .locals 6
    .param p0, "paymentMessage"    # Lorg/bitcoin/protocols/payments/Protos$Payment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoin/protocols/payments/Protos$Payment;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getTransactionsCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    .local v2, "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getTransactionsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 193
    .local v1, "transaction":Lcom/google/protobuf/ByteString;
    new-instance v3, Lcom/google/bitcoin/core/Transaction;

    sget-object v4, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    .end local v1    # "transaction":Lcom/google/protobuf/ByteString;
    :cond_0
    return-object v2
.end method

.method public static parsePaymentRequest([B)Lde/schildbach/wallet/PaymentIntent;
    .locals 25
    .param p0, "serializedPaymentRequest"    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/protocols/payments/PaymentRequestException;
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    move-object/from16 v0, p0

    array-length v3, v0

    const v7, 0xc350

    if-le v3, v7, :cond_0

    .line 84
    new-instance v3, Lcom/google/bitcoin/protocols/payments/PaymentRequestException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "payment request too big: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    array-length v11, v0

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_0 .. :try_end_0} :catch_1

    .line 137
    :catch_0
    move-exception v20

    .line 139
    .local v20, "x":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v3, Lcom/google/bitcoin/protocols/payments/PaymentRequestException;

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 86
    .end local v20    # "x":Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_0
    :try_start_1
    invoke-static/range {p0 .. p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->parseFrom([B)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v18

    .line 91
    .local v18, "paymentRequest":Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    const-string v3, "none"

    invoke-virtual/range {v18 .. v18}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getPkiType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 94
    new-instance v3, Lcom/google/bitcoin/protocols/payments/PaymentSession;

    const/4 v7, 0x1

    move-object/from16 v0, v18

    invoke-direct {v3, v0, v7}, Lcom/google/bitcoin/protocols/payments/PaymentSession;-><init>(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;Z)V

    iget-object v0, v3, Lcom/google/bitcoin/protocols/payments/PaymentSession;->pkiVerificationData:Lcom/google/bitcoin/protocols/payments/PaymentProtocol$PkiVerificationData;

    move-object/from16 v19, v0

    .line 95
    .local v19, "verificationData":Lcom/google/bitcoin/protocols/payments/PaymentProtocol$PkiVerificationData;
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/google/bitcoin/protocols/payments/PaymentProtocol$PkiVerificationData;->displayName:Ljava/lang/String;

    .line 96
    .local v4, "pkiName":Ljava/lang/String;
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/google/bitcoin/protocols/payments/PaymentProtocol$PkiVerificationData;->displayName:Ljava/lang/String;

    .line 97
    .local v5, "pkiOrgName":Ljava/lang/String;
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/google/bitcoin/protocols/payments/PaymentProtocol$PkiVerificationData;->rootAuthorityName:Ljava/lang/String;

    .line 106
    .end local v19    # "verificationData":Lcom/google/bitcoin/protocols/payments/PaymentProtocol$PkiVerificationData;
    .local v6, "pkiCaName":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {v18 .. v18}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getPaymentDetailsVersion()I

    move-result v3

    const/4 v7, 0x1

    if-eq v3, v7, :cond_2

    .line 107
    new-instance v3, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidVersion;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cannot handle payment details version: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getPaymentDetailsVersion()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidVersion;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    .end local v4    # "pkiName":Ljava/lang/String;
    .end local v5    # "pkiOrgName":Ljava/lang/String;
    .end local v6    # "pkiCaName":Ljava/lang/String;
    .end local v18    # "paymentRequest":Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    :catch_1
    move-exception v20

    .line 143
    .local v20, "x":Lcom/google/protobuf/UninitializedMessageException;
    new-instance v3, Lcom/google/bitcoin/protocols/payments/PaymentRequestException;

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 101
    .end local v20    # "x":Lcom/google/protobuf/UninitializedMessageException;
    .restart local v18    # "paymentRequest":Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    :cond_1
    const/4 v4, 0x0

    .line 102
    .restart local v4    # "pkiName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 103
    .restart local v5    # "pkiOrgName":Ljava/lang/String;
    const/4 v6, 0x0

    .restart local v6    # "pkiCaName":Ljava/lang/String;
    goto :goto_0

    .line 110
    :cond_2
    :try_start_2
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getSerializedPaymentDetails()Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v3

    check-cast v3, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    invoke-virtual {v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v17

    .line 113
    .local v17, "paymentDetails":Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    div-long v12, v21, v23

    .line 114
    .local v12, "currentTimeSecs":J
    invoke-virtual/range {v17 .. v17}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasExpires()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {v17 .. v17}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getExpires()J

    move-result-wide v21

    cmp-long v3, v12, v21

    if-ltz v3, :cond_3

    .line 115
    new-instance v3, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$Expired;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "payment details expired: current time "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " after expiry time "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getExpires()J

    move-result-wide v21

    move-wide/from16 v0, v21

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$Expired;-><init>(Ljava/lang/String;)V

    throw v3

    .line 118
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getNetwork()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v7}, Lcom/google/bitcoin/core/NetworkParameters;->getPaymentProtocolId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 119
    new-instance v3, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidNetwork;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cannot handle payment request network: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getNetwork()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidNetwork;-><init>(Ljava/lang/String;)V

    throw v3

    .line 121
    :cond_4
    new-instance v16, Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getOutputsCount()I

    move-result v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    .local v16, "outputs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lde/schildbach/wallet/PaymentIntent$Output;>;"
    invoke-virtual/range {v17 .. v17}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getOutputsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/bitcoin/protocols/payments/Protos$Output;

    .line 123
    .local v15, "output":Lorg/bitcoin/protocols/payments/Protos$Output;
    invoke-static {v15}, Lde/schildbach/wallet/util/PaymentProtocol;->parseOutput(Lorg/bitcoin/protocols/payments/Protos$Output;)Lde/schildbach/wallet/PaymentIntent$Output;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 125
    .end local v15    # "output":Lorg/bitcoin/protocols/payments/Protos$Output;
    :cond_5
    invoke-virtual/range {v17 .. v17}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasMemo()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual/range {v17 .. v17}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getMemo()Ljava/lang/String;

    move-result-object v8

    .line 126
    .local v8, "memo":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {v17 .. v17}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasPaymentUrl()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {v17 .. v17}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getPaymentUrl()Ljava/lang/String;

    move-result-object v9

    .line 127
    .local v9, "paymentUrl":Ljava/lang/String;
    :goto_3
    invoke-virtual/range {v17 .. v17}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasMerchantData()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {v17 .. v17}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getMerchantData()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v10

    .line 129
    .local v10, "merchantData":[B
    :goto_4
    new-instance v2, Lde/schildbach/wallet/PaymentIntent;

    sget-object v3, Lde/schildbach/wallet/PaymentIntent$Standard;->BIP70:Lde/schildbach/wallet/PaymentIntent$Standard;

    const/4 v7, 0x0

    new-array v7, v7, [Lde/schildbach/wallet/PaymentIntent$Output;

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lde/schildbach/wallet/PaymentIntent$Output;

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lde/schildbach/wallet/PaymentIntent;-><init>(Lde/schildbach/wallet/PaymentIntent$Standard;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lde/schildbach/wallet/PaymentIntent$Output;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 132
    .local v2, "paymentIntent":Lde/schildbach/wallet/PaymentIntent;
    invoke-virtual {v2}, Lde/schildbach/wallet/PaymentIntent;->hasPaymentUrl()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Lde/schildbach/wallet/PaymentIntent;->isSupportedPaymentUrl()Z

    move-result v3

    if-nez v3, :cond_9

    .line 133
    new-instance v3, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidPaymentURL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cannot handle payment url: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, v2, Lde/schildbach/wallet/PaymentIntent;->paymentUrl:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$InvalidPaymentURL;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_2 .. :try_end_2} :catch_1

    .line 125
    .end local v2    # "paymentIntent":Lde/schildbach/wallet/PaymentIntent;
    .end local v8    # "memo":Ljava/lang/String;
    .end local v9    # "paymentUrl":Ljava/lang/String;
    .end local v10    # "merchantData":[B
    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    .line 126
    .restart local v8    # "memo":Ljava/lang/String;
    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    .line 127
    .restart local v9    # "paymentUrl":Ljava/lang/String;
    :cond_8
    const/4 v10, 0x0

    goto :goto_4

    .line 135
    .restart local v2    # "paymentIntent":Lde/schildbach/wallet/PaymentIntent;
    .restart local v10    # "merchantData":[B
    :cond_9
    return-object v2
.end method
