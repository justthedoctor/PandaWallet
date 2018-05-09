.class public abstract Lde/schildbach/wallet/ui/InputParser$BinaryInputParser;
.super Lde/schildbach/wallet/ui/InputParser;
.source "InputParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/InputParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BinaryInputParser"
.end annotation


# instance fields
.field private final input:[B

.field private final inputType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "inputType"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "input"    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 189
    invoke-direct {p0}, Lde/schildbach/wallet/ui/InputParser;-><init>()V

    .line 190
    iput-object p1, p0, Lde/schildbach/wallet/ui/InputParser$BinaryInputParser;->inputType:Ljava/lang/String;

    .line 191
    iput-object p2, p0, Lde/schildbach/wallet/ui/InputParser$BinaryInputParser;->input:[B

    .line 192
    return-void
.end method


# virtual methods
.method public parse()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 197
    sget-object v2, Lde/schildbach/wallet/Constants;->MIMETYPE_TRANSACTION:Ljava/lang/String;

    iget-object v3, p0, Lde/schildbach/wallet/ui/InputParser$BinaryInputParser;->inputType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    :try_start_0
    new-instance v0, Lcom/google/bitcoin/core/Transaction;

    sget-object v2, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    iget-object v3, p0, Lde/schildbach/wallet/ui/InputParser$BinaryInputParser;->input:[B

    invoke-direct {v0, v2, v3}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    .line 203
    .local v0, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/InputParser$BinaryInputParser;->handleDirectTransaction(Lcom/google/bitcoin/core/Transaction;)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v0    # "tx":Lcom/google/bitcoin/core/Transaction;
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v1

    .line 207
    .local v1, "x":Lcom/google/bitcoin/core/ProtocolException;
    invoke-static {}, Lde/schildbach/wallet/ui/InputParser;->access$000()Lorg/slf4j/Logger;

    move-result-object v2

    const-string v3, "got invalid transaction"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    const v2, 0x7f0b00ba

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lde/schildbach/wallet/ui/InputParser$BinaryInputParser;->error(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 212
    .end local v1    # "x":Lcom/google/bitcoin/core/ProtocolException;
    :cond_0
    sget-object v2, Lde/schildbach/wallet/util/PaymentProtocol;->MIMETYPE_PAYMENTREQUEST:Ljava/lang/String;

    iget-object v3, p0, Lde/schildbach/wallet/ui/InputParser$BinaryInputParser;->inputType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    :try_start_1
    iget-object v2, p0, Lde/schildbach/wallet/ui/InputParser$BinaryInputParser;->input:[B

    invoke-virtual {p0, v2}, Lde/schildbach/wallet/ui/InputParser$BinaryInputParser;->parseAndHandlePaymentRequest([B)V
    :try_end_1
    .catch Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/bitcoin/protocols/payments/PaymentRequestException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 218
    :catch_1
    move-exception v1

    .line 220
    .local v1, "x":Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException;
    invoke-static {}, Lde/schildbach/wallet/ui/InputParser;->access$000()Lorg/slf4j/Logger;

    move-result-object v2

    const-string v3, "got unverifyable payment request"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    const v2, 0x7f0b00b8

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lde/schildbach/wallet/ui/InputParser$BinaryInputParser;->error(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 224
    .end local v1    # "x":Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException;
    :catch_2
    move-exception v1

    .line 226
    .local v1, "x":Lcom/google/bitcoin/protocols/payments/PaymentRequestException;
    invoke-static {}, Lde/schildbach/wallet/ui/InputParser;->access$000()Lorg/slf4j/Logger;

    move-result-object v2

    const-string v3, "got invalid payment request"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    const v2, 0x7f0b00b9

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lde/schildbach/wallet/ui/InputParser$BinaryInputParser;->error(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 233
    .end local v1    # "x":Lcom/google/bitcoin/protocols/payments/PaymentRequestException;
    :cond_1
    iget-object v2, p0, Lde/schildbach/wallet/ui/InputParser$BinaryInputParser;->inputType:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lde/schildbach/wallet/ui/InputParser$BinaryInputParser;->cannotClassify(Ljava/lang/String;)V

    goto :goto_0
.end method
