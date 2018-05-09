.class public Lcom/google/bitcoin/uri/BitcoinURI;
.super Ljava/lang/Object;
.source "BitcoinURI.java"


# static fields
.field private static final AMPERSAND_SEPARATOR:Ljava/lang/String; = "&"

.field public static final BITCOIN_SCHEME:Ljava/lang/String; = "pandacoin"

.field private static final ENCODED_SPACE_CHARACTER:Ljava/lang/String; = "%20"

.field public static final FIELD_ADDRESS:Ljava/lang/String; = "address"

.field public static final FIELD_AMOUNT:Ljava/lang/String; = "amount"

.field public static final FIELD_LABEL:Ljava/lang/String; = "label"

.field public static final FIELD_MESSAGE:Ljava/lang/String; = "message"

.field public static final FIELD_PAYMENT_REQUEST_URL:Ljava/lang/String; = "r"

.field private static final QUESTION_MARK_SEPARATOR:Ljava/lang/String; = "?"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final parameterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/google/bitcoin/uri/BitcoinURI;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/uri/BitcoinURI;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/lang/String;)V
    .locals 12
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/uri/BitcoinURIParseException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v9, p0, Lcom/google/bitcoin/uri/BitcoinURI;->parameterMap:Ljava/util/Map;

    .line 119
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v10, Lcom/google/bitcoin/uri/BitcoinURI;->log:Lorg/slf4j/Logger;

    const-string v11, "Attempting to parse \'{}\' for {}"

    if-nez p1, :cond_0

    const-string v9, "any"

    :goto_0
    invoke-interface {v10, v11, p2, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    :try_start_0
    new-instance v8, Ljava/net/URI;

    invoke-direct {v8, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .local v8, "uri":Ljava/net/URI;
    const-string v5, "pandacoin://"

    .line 142
    .local v5, "scheme1":Ljava/lang/String;
    const-string v6, "pandacoin:"

    .line 144
    .local v6, "scheme2":Ljava/lang/String;
    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 145
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 153
    .local v7, "schemeSpecificPart":Ljava/lang/String;
    :goto_1
    const-string v9, "\\?"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "addressSplitTokens":[Ljava/lang/String;
    array-length v9, v1

    if-nez v9, :cond_3

    .line 155
    new-instance v9, Lcom/google/bitcoin/uri/BitcoinURIParseException;

    const-string v10, "No data found after the Pandacoin: prefix"

    invoke-direct {v9, v10}, Lcom/google/bitcoin/uri/BitcoinURIParseException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 120
    .end local v1    # "addressSplitTokens":[Ljava/lang/String;
    .end local v5    # "scheme1":Ljava/lang/String;
    .end local v6    # "scheme2":Ljava/lang/String;
    .end local v7    # "schemeSpecificPart":Ljava/lang/String;
    .end local v8    # "uri":Ljava/net/URI;
    :cond_0
    invoke-virtual {p1}, Lcom/google/bitcoin/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 126
    :catch_0
    move-exception v3

    .line 127
    .local v3, "e":Ljava/net/URISyntaxException;
    new-instance v9, Lcom/google/bitcoin/uri/BitcoinURIParseException;

    const-string v10, "Bad URI syntax"

    invoke-direct {v9, v10, v3}, Lcom/google/bitcoin/uri/BitcoinURIParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 146
    .end local v3    # "e":Ljava/net/URISyntaxException;
    .restart local v5    # "scheme1":Ljava/lang/String;
    .restart local v6    # "scheme2":Ljava/lang/String;
    .restart local v8    # "uri":Ljava/net/URI;
    :cond_1
    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 147
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "schemeSpecificPart":Ljava/lang/String;
    goto :goto_1

    .line 149
    .end local v7    # "schemeSpecificPart":Ljava/lang/String;
    :cond_2
    new-instance v9, Lcom/google/bitcoin/uri/BitcoinURIParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported URI scheme: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/bitcoin/uri/BitcoinURIParseException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 156
    .restart local v1    # "addressSplitTokens":[Ljava/lang/String;
    .restart local v7    # "schemeSpecificPart":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    aget-object v2, v1, v9

    .line 159
    .local v2, "addressToken":Ljava/lang/String;
    array-length v9, v1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 161
    const/4 v9, 0x0

    new-array v4, v9, [Ljava/lang/String;

    .line 172
    .local v4, "nameValuePairTokens":[Ljava/lang/String;
    :goto_2
    invoke-direct {p0, p1, v2, v4}, Lcom/google/bitcoin/uri/BitcoinURI;->parseParameters(Lcom/google/bitcoin/core/NetworkParameters;Ljava/lang/String;[Ljava/lang/String;)V

    .line 174
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 177
    :try_start_1
    new-instance v0, Lcom/google/bitcoin/core/Address;

    invoke-direct {v0, p1, v2}, Lcom/google/bitcoin/core/Address;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/lang/String;)V

    .line 178
    .local v0, "address":Lcom/google/bitcoin/core/Address;
    const-string v9, "address"

    invoke-direct {p0, v9, v0}, Lcom/google/bitcoin/uri/BitcoinURI;->putWithValidation(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/google/bitcoin/core/AddressFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 184
    .end local v0    # "address":Lcom/google/bitcoin/core/Address;
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {p0}, Lcom/google/bitcoin/uri/BitcoinURI;->getPaymentRequestUrl()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    .line 185
    new-instance v9, Lcom/google/bitcoin/uri/BitcoinURIParseException;

    const-string v10, "No address and no r= parameter found"

    invoke-direct {v9, v10}, Lcom/google/bitcoin/uri/BitcoinURIParseException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 163
    .end local v4    # "nameValuePairTokens":[Ljava/lang/String;
    :cond_5
    array-length v9, v1

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    .line 165
    const/4 v9, 0x1

    aget-object v9, v1, v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "nameValuePairTokens":[Ljava/lang/String;
    goto :goto_2

    .line 167
    .end local v4    # "nameValuePairTokens":[Ljava/lang/String;
    :cond_6
    new-instance v9, Lcom/google/bitcoin/uri/BitcoinURIParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Too many question marks in URI \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/bitcoin/uri/BitcoinURIParseException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 179
    .restart local v4    # "nameValuePairTokens":[Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 180
    .local v3, "e":Lcom/google/bitcoin/core/AddressFormatException;
    new-instance v9, Lcom/google/bitcoin/uri/BitcoinURIParseException;

    const-string v10, "Bad address"

    invoke-direct {v9, v10, v3}, Lcom/google/bitcoin/uri/BitcoinURIParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 187
    .end local v3    # "e":Lcom/google/bitcoin/core/AddressFormatException;
    :cond_7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/uri/BitcoinURIParseException;
        }
    .end annotation

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/bitcoin/uri/BitcoinURI;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static convertToBitcoinURI(Lcom/google/bitcoin/core/Address;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "address"    # Lcom/google/bitcoin/core/Address;
    .param p1, "amount"    # Ljava/math/BigInteger;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/google/bitcoin/uri/BitcoinURI;->convertToBitcoinURI(Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertToBitcoinURI(Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "amount"    # Ljava/math/BigInteger;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "label"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "message"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 333
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-gez v2, :cond_0

    .line 335
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Amount must be positive"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 338
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "pandacoin"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const/4 v1, 0x0

    .line 343
    .local v1, "questionMarkHasBeenOutput":Z
    if-eqz p1, :cond_1

    .line 344
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "amount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-static {p1}, Lcom/google/bitcoin/core/Utils;->bitcoinValueToPlainString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    const/4 v1, 0x1

    .line 349
    :cond_1
    if-eqz p2, :cond_2

    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 350
    if-eqz v1, :cond_4

    .line 351
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :goto_0
    const-string v2, "label"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/google/bitcoin/uri/BitcoinURI;->encodeURLString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :cond_2
    if-eqz p3, :cond_3

    const-string v2, ""

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 360
    if-eqz v1, :cond_5

    .line 361
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :goto_1
    const-string v2, "message"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/google/bitcoin/uri/BitcoinURI;->encodeURLString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 353
    :cond_4
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const/4 v1, 0x1

    goto :goto_0

    .line 363
    :cond_5
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method static encodeURLString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "stringToEncode"    # Ljava/lang/String;

    .prologue
    .line 378
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    const-string v3, "%20"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 379
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private parseParameters(Lcom/google/bitcoin/core/NetworkParameters;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 13
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "addressToken"    # Ljava/lang/String;
    .param p3, "nameValuePairTokens"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/uri/BitcoinURIParseException;
        }
    .end annotation

    .prologue
    .line 196
    move-object/from16 v1, p3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_5

    aget-object v6, v1, v3

    .line 198
    .local v6, "nameValuePairToken":Ljava/lang/String;
    const/16 v9, 0x3d

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 199
    .local v7, "sepIndex":I
    const/4 v9, -0x1

    if-ne v7, v9, :cond_0

    .line 200
    new-instance v9, Lcom/google/bitcoin/uri/BitcoinURIParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Malformed Pandacoin URI - no separator in \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/bitcoin/uri/BitcoinURIParseException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 202
    :cond_0
    if-nez v7, :cond_1

    .line 203
    new-instance v9, Lcom/google/bitcoin/uri/BitcoinURIParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Malformed Pandacoin URI - empty name \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/bitcoin/uri/BitcoinURIParseException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 205
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, "nameToken":Ljava/lang/String;
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 209
    .local v8, "valueToken":Ljava/lang/String;
    const-string v9, "amount"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 212
    :try_start_0
    invoke-static {v8}, Lcom/google/bitcoin/core/Utils;->toNanoCoins(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    .line 213
    .local v0, "amount":Ljava/math/BigInteger;
    const-string v9, "amount"

    invoke-direct {p0, v9, v0}, Lcom/google/bitcoin/uri/BitcoinURI;->putWithValidation(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    .end local v0    # "amount":Ljava/math/BigInteger;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    :catch_0
    move-exception v2

    .line 215
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v9, Lcom/google/bitcoin/uri/OptionalFieldValidationException;

    const-string v10, "\'%s\' is not a valid amount"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v2}, Lcom/google/bitcoin/uri/OptionalFieldValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 216
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 217
    .local v2, "e":Ljava/lang/ArithmeticException;
    new-instance v9, Lcom/google/bitcoin/uri/OptionalFieldValidationException;

    const-string v10, "\'%s\' has too many decimal places"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v2}, Lcom/google/bitcoin/uri/OptionalFieldValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 220
    .end local v2    # "e":Ljava/lang/ArithmeticException;
    :cond_3
    const-string v9, "req-"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 222
    new-instance v9, Lcom/google/bitcoin/uri/RequiredFieldValidationException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' is required but not known, this URI is not valid"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/bitcoin/uri/RequiredFieldValidationException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 226
    :cond_4
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 227
    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v5, v9}, Lcom/google/bitcoin/uri/BitcoinURI;->putWithValidation(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 228
    :catch_2
    move-exception v2

    .line 230
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 238
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v5    # "nameToken":Ljava/lang/String;
    .end local v6    # "nameValuePairToken":Ljava/lang/String;
    .end local v7    # "sepIndex":I
    .end local v8    # "valueToken":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private putWithValidation(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/uri/BitcoinURIParseException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/bitcoin/uri/BitcoinURI;->parameterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    new-instance v0, Lcom/google/bitcoin/uri/BitcoinURIParseException;

    const-string v1, "\'%s\' is duplicated, URI is invalid"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/bitcoin/uri/BitcoinURIParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/uri/BitcoinURI;->parameterMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    return-void
.end method


# virtual methods
.method public getAddress()Lcom/google/bitcoin/core/Address;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/bitcoin/uri/BitcoinURI;->parameterMap:Ljava/util/Map;

    const-string v1, "address"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Address;

    return-object v0
.end method

.method public getAmount()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/bitcoin/uri/BitcoinURI;->parameterMap:Ljava/util/Map;

    const-string v1, "amount"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/bitcoin/uri/BitcoinURI;->parameterMap:Ljava/util/Map;

    const-string v1, "label"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/bitcoin/uri/BitcoinURI;->parameterMap:Ljava/util/Map;

    const-string v1, "message"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParameterByName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/bitcoin/uri/BitcoinURI;->parameterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPaymentRequestUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/bitcoin/uri/BitcoinURI;->parameterMap:Ljava/util/Map;

    const-string v1, "r"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "BitcoinURI["

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 306
    .local v2, "first":Z
    iget-object v4, p0, Lcom/google/bitcoin/uri/BitcoinURI;->parameterMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 307
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v2, :cond_0

    .line 308
    const/4 v2, 0x0

    .line 312
    :goto_1
    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 310
    :cond_0
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 314
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
