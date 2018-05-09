.class public abstract Lde/schildbach/wallet/ui/InputParser$StringInputParser;
.super Lde/schildbach/wallet/ui/InputParser;
.source "InputParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/InputParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StringInputParser"
.end annotation


# instance fields
.field private final input:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 68
    invoke-direct {p0}, Lde/schildbach/wallet/ui/InputParser;-><init>()V

    .line 69
    iput-object p1, p0, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->input:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public parse()V
    .locals 13

    .prologue
    const v12, 0x7f0b00ba

    const v9, 0x7f0b00b7

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 75
    iget-object v6, p0, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->input:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pandacoin"

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 79
    :try_start_0
    iget-object v6, p0, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->input:Ljava/lang/String;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lde/schildbach/wallet/util/Qr;->decodeBinary(Ljava/lang/String;)[B

    move-result-object v3

    .line 81
    .local v3, "serializedPaymentRequest":[B
    invoke-virtual {p0, v3}, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->parseAndHandlePaymentRequest([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/bitcoin/protocols/payments/PaymentRequestException; {:try_start_0 .. :try_end_0} :catch_2

    .line 180
    .end local v3    # "serializedPaymentRequest":[B
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v5

    .line 85
    .local v5, "x":Ljava/io/IOException;
    invoke-static {}, Lde/schildbach/wallet/ui/InputParser;->access$000()Lorg/slf4j/Logger;

    move-result-object v6

    const-string v7, "i/o error while fetching payment request"

    invoke-interface {v6, v7, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    const v6, 0x7f0b00b4

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->error(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 89
    .end local v5    # "x":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 91
    .local v5, "x":Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException;
    invoke-static {}, Lde/schildbach/wallet/ui/InputParser;->access$000()Lorg/slf4j/Logger;

    move-result-object v6

    const-string v7, "got unverifyable payment request"

    invoke-interface {v6, v7, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    const v6, 0x7f0b00b8

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->error(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    .end local v5    # "x":Lcom/google/bitcoin/protocols/payments/PaymentRequestException$PkiVerificationException;
    :catch_2
    move-exception v5

    .line 97
    .local v5, "x":Lcom/google/bitcoin/protocols/payments/PaymentRequestException;
    invoke-static {}, Lde/schildbach/wallet/ui/InputParser;->access$000()Lorg/slf4j/Logger;

    move-result-object v6

    const-string v7, "got invalid payment request"

    invoke-interface {v6, v7, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    const v6, 0x7f0b00b9

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/google/bitcoin/protocols/payments/PaymentRequestException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->error(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    .end local v5    # "x":Lcom/google/bitcoin/protocols/payments/PaymentRequestException;
    :cond_0
    iget-object v6, p0, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->input:Ljava/lang/String;

    const-string v7, "pandacoin:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 106
    :try_start_1
    new-instance v1, Lcom/google/bitcoin/uri/BitcoinURI;

    const/4 v6, 0x0

    iget-object v7, p0, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->input:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Lcom/google/bitcoin/uri/BitcoinURI;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/lang/String;)V

    .line 108
    .local v1, "bitcoinUri":Lcom/google/bitcoin/uri/BitcoinURI;
    invoke-virtual {v1}, Lcom/google/bitcoin/uri/BitcoinURI;->getAddress()Lcom/google/bitcoin/core/Address;

    move-result-object v0

    .line 109
    .local v0, "address":Lcom/google/bitcoin/core/Address;
    if-nez v0, :cond_1

    .line 110
    new-instance v6, Lcom/google/bitcoin/uri/BitcoinURIParseException;

    const-string v7, "missing address"

    invoke-direct {v6, v7}, Lcom/google/bitcoin/uri/BitcoinURIParseException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Lcom/google/bitcoin/uri/BitcoinURIParseException; {:try_start_1 .. :try_end_1} :catch_3

    .line 117
    .end local v0    # "address":Lcom/google/bitcoin/core/Address;
    .end local v1    # "bitcoinUri":Lcom/google/bitcoin/uri/BitcoinURI;
    :catch_3
    move-exception v5

    .line 119
    .local v5, "x":Lcom/google/bitcoin/uri/BitcoinURIParseException;
    invoke-static {}, Lde/schildbach/wallet/ui/InputParser;->access$000()Lorg/slf4j/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got invalid bitcoin uri: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->input:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    const v6, 0x7f0b00b6

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->input:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->error(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 112
    .end local v5    # "x":Lcom/google/bitcoin/uri/BitcoinURIParseException;
    .restart local v0    # "address":Lcom/google/bitcoin/core/Address;
    .restart local v1    # "bitcoinUri":Lcom/google/bitcoin/uri/BitcoinURI;
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/google/bitcoin/core/Address;->getParameters()Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v6

    sget-object v7, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v6, v7}, Lcom/google/bitcoin/core/NetworkParameters;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 113
    invoke-static {v1}, Lde/schildbach/wallet/PaymentIntent;->fromBitcoinUri(Lcom/google/bitcoin/uri/BitcoinURI;)Lde/schildbach/wallet/PaymentIntent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->handlePaymentIntent(Lde/schildbach/wallet/PaymentIntent;)V

    goto/16 :goto_0

    .line 115
    :cond_2
    const v6, 0x7f0b00b7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->input:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->error(I[Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/google/bitcoin/uri/BitcoinURIParseException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 124
    .end local v0    # "address":Lcom/google/bitcoin/core/Address;
    .end local v1    # "bitcoinUri":Lcom/google/bitcoin/uri/BitcoinURI;
    :cond_3
    invoke-static {}, Lde/schildbach/wallet/ui/InputParser;->access$100()Ljava/util/regex/Pattern;

    move-result-object v6

    iget-object v7, p0, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->input:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 128
    :try_start_3
    new-instance v0, Lcom/google/bitcoin/core/Address;

    sget-object v6, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    iget-object v7, p0, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->input:Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Lcom/google/bitcoin/core/Address;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/lang/String;)V

    .line 130
    .restart local v0    # "address":Lcom/google/bitcoin/core/Address;
    const/4 v6, 0x0

    invoke-static {v0, v6}, Lde/schildbach/wallet/PaymentIntent;->fromAddress(Lcom/google/bitcoin/core/Address;Ljava/lang/String;)Lde/schildbach/wallet/PaymentIntent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->handlePaymentIntent(Lde/schildbach/wallet/PaymentIntent;)V
    :try_end_3
    .catch Lcom/google/bitcoin/core/AddressFormatException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    .line 132
    .end local v0    # "address":Lcom/google/bitcoin/core/Address;
    :catch_4
    move-exception v5

    .line 134
    .local v5, "x":Lcom/google/bitcoin/core/AddressFormatException;
    invoke-static {}, Lde/schildbach/wallet/ui/InputParser;->access$000()Lorg/slf4j/Logger;

    move-result-object v6

    const-string v7, "got invalid address"

    invoke-interface {v6, v7, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {p0, v9, v6}, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->error(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 139
    .end local v5    # "x":Lcom/google/bitcoin/core/AddressFormatException;
    :cond_4
    invoke-static {}, Lde/schildbach/wallet/ui/InputParser;->access$200()Ljava/util/regex/Pattern;

    move-result-object v6

    iget-object v7, p0, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->input:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 143
    :try_start_4
    new-instance v6, Lcom/google/bitcoin/core/DumpedPrivateKey;

    sget-object v7, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    iget-object v8, p0, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->input:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lcom/google/bitcoin/core/DumpedPrivateKey;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/google/bitcoin/core/DumpedPrivateKey;->getKey()Lcom/google/bitcoin/core/ECKey;

    move-result-object v2

    .line 144
    .local v2, "key":Lcom/google/bitcoin/core/ECKey;
    new-instance v0, Lcom/google/bitcoin/core/Address;

    sget-object v6, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/ECKey;->getPubKeyHash()[B

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/google/bitcoin/core/Address;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    .line 146
    .restart local v0    # "address":Lcom/google/bitcoin/core/Address;
    const/4 v6, 0x0

    invoke-static {v0, v6}, Lde/schildbach/wallet/PaymentIntent;->fromAddress(Lcom/google/bitcoin/core/Address;Ljava/lang/String;)Lde/schildbach/wallet/PaymentIntent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->handlePaymentIntent(Lde/schildbach/wallet/PaymentIntent;)V
    :try_end_4
    .catch Lcom/google/bitcoin/core/AddressFormatException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_0

    .line 148
    .end local v0    # "address":Lcom/google/bitcoin/core/Address;
    .end local v2    # "key":Lcom/google/bitcoin/core/ECKey;
    :catch_5
    move-exception v5

    .line 150
    .restart local v5    # "x":Lcom/google/bitcoin/core/AddressFormatException;
    invoke-static {}, Lde/schildbach/wallet/ui/InputParser;->access$000()Lorg/slf4j/Logger;

    move-result-object v6

    const-string v7, "got invalid address"

    invoke-interface {v6, v7, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {p0, v9, v6}, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->error(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 155
    .end local v5    # "x":Lcom/google/bitcoin/core/AddressFormatException;
    :cond_5
    invoke-static {}, Lde/schildbach/wallet/ui/InputParser;->access$300()Ljava/util/regex/Pattern;

    move-result-object v6

    iget-object v7, p0, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->input:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 159
    :try_start_5
    new-instance v4, Lcom/google/bitcoin/core/Transaction;

    sget-object v6, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    iget-object v7, p0, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->input:Ljava/lang/String;

    invoke-static {v7}, Lde/schildbach/wallet/util/Qr;->decodeDecompressBinary(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    .line 161
    .local v4, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {p0, v4}, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->handleDirectTransaction(Lcom/google/bitcoin/core/Transaction;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_5 .. :try_end_5} :catch_7

    goto/16 :goto_0

    .line 163
    .end local v4    # "tx":Lcom/google/bitcoin/core/Transaction;
    :catch_6
    move-exception v5

    .line 165
    .local v5, "x":Ljava/io/IOException;
    invoke-static {}, Lde/schildbach/wallet/ui/InputParser;->access$000()Lorg/slf4j/Logger;

    move-result-object v6

    const-string v7, "i/o error while fetching transaction"

    invoke-interface {v6, v7, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v12, v6}, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->error(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 169
    .end local v5    # "x":Ljava/io/IOException;
    :catch_7
    move-exception v5

    .line 171
    .local v5, "x":Lcom/google/bitcoin/core/ProtocolException;
    invoke-static {}, Lde/schildbach/wallet/ui/InputParser;->access$000()Lorg/slf4j/Logger;

    move-result-object v6

    const-string v7, "got invalid transaction"

    invoke-interface {v6, v7, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/google/bitcoin/core/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v12, v6}, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->error(I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 178
    .end local v5    # "x":Lcom/google/bitcoin/core/ProtocolException;
    :cond_6
    iget-object v6, p0, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->input:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lde/schildbach/wallet/ui/InputParser$StringInputParser;->cannotClassify(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
