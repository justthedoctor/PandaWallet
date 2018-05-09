.class public Lde/schildbach/wallet/util/WalletUtils;
.super Ljava/lang/Object;
.source "WalletUtils.java"


# static fields
.field public static final KEYS_FILE_FILTER:Ljava/io/FileFilter;

.field private static final P_SIGNIFICANT:Ljava/util/regex/Pattern;

.field private static final SIGNIFICANT_SPAN:Ljava/lang/Object;

.field public static final SMALLER_SPAN:Landroid/text/style/RelativeSizeSpan;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 116
    const-string v0, "^([-+]\u2009)?\\d*(\\.\\d{0,2})?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/util/WalletUtils;->P_SIGNIFICANT:Ljava/util/regex/Pattern;

    .line 117
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lde/schildbach/wallet/util/WalletUtils;->SIGNIFICANT_SPAN:Ljava/lang/Object;

    .line 118
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    const v1, 0x3f59999a    # 0.85f

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    sput-object v0, Lde/schildbach/wallet/util/WalletUtils;->SMALLER_SPAN:Landroid/text/style/RelativeSizeSpan;

    .line 264
    new-instance v0, Lde/schildbach/wallet/util/WalletUtils$1;

    invoke-direct {v0}, Lde/schildbach/wallet/util/WalletUtils$1;-><init>()V

    sput-object v0, Lde/schildbach/wallet/util/WalletUtils;->KEYS_FILE_FILTER:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static btcValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "localValue"    # Ljava/math/BigInteger;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "rate"    # Ljava/math/BigInteger;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 143
    sget-object v0, Lde/schildbach/wallet/util/GenericUtils;->ONE_BTC:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static formatAddress(Lcom/google/bitcoin/core/Address;II)Landroid/text/Editable;
    .locals 1
    .param p0, "address"    # Lcom/google/bitcoin/core/Address;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "groupSize"    # I
    .param p2, "lineSize"    # I

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lde/schildbach/wallet/util/WalletUtils;->formatHash(Ljava/lang/String;II)Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public static formatAddress(Ljava/lang/String;Lcom/google/bitcoin/core/Address;II)Landroid/text/Editable;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "address"    # Lcom/google/bitcoin/core/Address;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "groupSize"    # I
    .param p3, "lineSize"    # I

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2009

    invoke-static {p0, v0, p2, p3, v1}, Lde/schildbach/wallet/util/WalletUtils;->formatHash(Ljava/lang/String;Ljava/lang/String;IIC)Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public static formatHash(Ljava/lang/String;II)Landroid/text/Editable;
    .locals 2
    .param p0, "address"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "groupSize"    # I
    .param p2, "lineSize"    # I

    .prologue
    .line 82
    const/4 v0, 0x0

    const/16 v1, 0x2009

    invoke-static {v0, p0, p1, p2, v1}, Lde/schildbach/wallet/util/WalletUtils;->formatHash(Ljava/lang/String;Ljava/lang/String;IIC)Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public static formatHash(Ljava/lang/String;Ljava/lang/String;IIC)Landroid/text/Editable;
    .locals 10
    .param p0, "prefix"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "address"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "groupSize"    # I
    .param p3, "lineSize"    # I
    .param p4, "groupSeparator"    # C

    .prologue
    .line 96
    if-eqz p0, :cond_1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 98
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 99
    .local v4, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_5

    .line 101
    add-int v1, v3, p2

    .line 102
    .local v1, "end":I
    if-ge v1, v4, :cond_2

    move v6, v1

    :goto_2
    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, "part":Ljava/lang/String;
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 105
    new-instance v6, Landroid/text/style/TypefaceSpan;

    const-string v7, "monospace"

    invoke-direct {v6, v7}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 106
    if-ge v1, v4, :cond_0

    .line 108
    if-lez p3, :cond_3

    rem-int v6, v1, p3

    if-nez v6, :cond_3

    const/4 v2, 0x1

    .line 109
    .local v2, "endOfLine":Z
    :goto_3
    if-eqz v2, :cond_4

    const/16 v6, 0xa

    :goto_4
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 99
    .end local v2    # "endOfLine":Z
    :cond_0
    add-int/2addr v3, p2

    goto :goto_1

    .line 96
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v1    # "end":I
    .end local v3    # "i":I
    .end local v4    # "len":I
    .end local v5    # "part":Ljava/lang/String;
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    goto :goto_0

    .restart local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .restart local v1    # "end":I
    .restart local v3    # "i":I
    .restart local v4    # "len":I
    :cond_2
    move v6, v4

    .line 102
    goto :goto_2

    .line 108
    .restart local v5    # "part":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .restart local v2    # "endOfLine":Z
    :cond_4
    move v6, p4

    .line 109
    goto :goto_4

    .line 113
    .end local v1    # "end":I
    .end local v2    # "endOfLine":Z
    .end local v5    # "part":Ljava/lang/String;
    :cond_5
    return-object v0
.end method

.method public static formatSignificant(Landroid/text/Editable;Landroid/text/style/RelativeSizeSpan;)V
    .locals 5
    .param p0, "s"    # Landroid/text/Editable;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "insignificantRelativeSizeSpan"    # Landroid/text/style/RelativeSizeSpan;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v4, 0x21

    .line 122
    sget-object v2, Lde/schildbach/wallet/util/WalletUtils;->SIGNIFICANT_SPAN:Ljava/lang/Object;

    invoke-interface {p0, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 123
    if-eqz p1, :cond_0

    .line 124
    invoke-interface {p0, p1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 126
    :cond_0
    sget-object v2, Lde/schildbach/wallet/util/WalletUtils;->P_SIGNIFICANT:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 127
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 130
    .local v1, "pivot":I
    sget-object v2, Lde/schildbach/wallet/util/WalletUtils;->SIGNIFICANT_SPAN:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3, v1, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 131
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v2

    if-le v2, v1, :cond_1

    if-eqz p1, :cond_1

    .line 132
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {p0, p1, v1, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 134
    .end local v1    # "pivot":I
    :cond_1
    return-void
.end method

.method public static getFirstFromAddress(Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/core/Address;
    .locals 5
    .param p0, "tx"    # Lcom/google/bitcoin/core/Transaction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->isCoinBase()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 164
    :goto_0
    return-object v3

    .line 154
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/TransactionInput;

    .line 156
    .local v1, "input":Lcom/google/bitcoin/core/TransactionInput;
    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionInput;->getFromAddress()Lcom/google/bitcoin/core/Address;

    move-result-object v3

    goto :goto_0

    .line 159
    .end local v1    # "input":Lcom/google/bitcoin/core/TransactionInput;
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4
    :try_end_0
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v0    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 164
    .local v2, "x":Lcom/google/bitcoin/core/ScriptException;
    goto :goto_0
.end method

.method public static getFirstToAddress(Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/core/Address;
    .locals 5
    .param p0, "tx"    # Lcom/google/bitcoin/core/Transaction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .prologue
    .line 173
    :try_start_0
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/TransactionOutput;

    .line 175
    .local v1, "output":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptPubKey()Lcom/google/bitcoin/script/Script;

    move-result-object v3

    sget-object v4, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v3, v4}, Lcom/google/bitcoin/script/Script;->getToAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;

    move-result-object v3

    .line 182
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    :goto_0
    return-object v3

    .line 178
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
    :try_end_0
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v0    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 182
    .local v2, "x":Lcom/google/bitcoin/core/ScriptException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isInternal(Lcom/google/bitcoin/core/Transaction;)Z
    .locals 7
    .param p0, "tx"    # Lcom/google/bitcoin/core/Transaction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->isCoinBase()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v4

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v1

    .line 192
    .local v1, "outputs":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/TransactionOutput;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v5, :cond_0

    .line 197
    const/4 v6, 0x0

    :try_start_0
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/TransactionOutput;

    .line 198
    .local v0, "output":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v0}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptPubKey()Lcom/google/bitcoin/script/Script;

    move-result-object v2

    .line 199
    .local v2, "scriptPubKey":Lcom/google/bitcoin/script/Script;
    invoke-virtual {v2}, Lcom/google/bitcoin/script/Script;->isSentToRawPubKey()Z
    :try_end_0
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 202
    goto :goto_0

    .line 204
    .end local v0    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    .end local v2    # "scriptPubKey":Lcom/google/bitcoin/script/Script;
    :catch_0
    move-exception v3

    .line 206
    .local v3, "x":Lcom/google/bitcoin/core/ScriptException;
    goto :goto_0
.end method

.method public static localValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p0, "btcValue"    # Ljava/math/BigInteger;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "rate"    # Ljava/math/BigInteger;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lde/schildbach/wallet/util/GenericUtils;->ONE_BTC:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static longHash(Lcom/google/bitcoin/core/Sha256Hash;)J
    .locals 8
    .param p0, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const-wide/16 v6, 0xff

    .line 87
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v0

    .line 89
    .local v0, "bytes":[B
    const/16 v1, 0x1f

    aget-byte v1, v0, v1

    int-to-long v1, v1

    and-long/2addr v1, v6

    const/16 v3, 0x1e

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    const/16 v3, 0x1d

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    const/16 v3, 0x1c

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x18

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    const/16 v3, 0x1b

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    const/16 v3, 0x1a

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x28

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    const/16 v3, 0x19

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x30

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    const/16 v3, 0x17

    aget-byte v3, v0, v3

    int-to-long v3, v3

    and-long/2addr v3, v6

    const/16 v5, 0x38

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public static pickOldestKey(Lcom/google/bitcoin/core/Wallet;)Lcom/google/bitcoin/core/ECKey;
    .locals 7
    .param p0, "wallet"    # Lcom/google/bitcoin/core/Wallet;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .prologue
    .line 302
    const/4 v2, 0x0

    .line 304
    .local v2, "oldestKey":Lcom/google/bitcoin/core/ECKey;
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Wallet;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/ECKey;

    .line 305
    .local v1, "key":Lcom/google/bitcoin/core/ECKey;
    invoke-virtual {p0, v1}, Lcom/google/bitcoin/core/Wallet;->isKeyRotating(Lcom/google/bitcoin/core/ECKey;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 306
    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/bitcoin/core/ECKey;->getCreationTimeSeconds()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/google/bitcoin/core/ECKey;->getCreationTimeSeconds()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 307
    :cond_1
    move-object v2, v1

    goto :goto_0

    .line 309
    .end local v1    # "key":Lcom/google/bitcoin/core/ECKey;
    :cond_2
    return-object v2
.end method

.method public static readKeys(Ljava/io/BufferedReader;)Ljava/util/List;
    .locals 10
    .param p0, "in"    # Ljava/io/BufferedReader;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/ECKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    :try_start_0
    invoke-static {}, Lde/schildbach/wallet/util/Iso8601Format;->newDateTimeFormatT()Ljava/text/DateFormat;

    move-result-object v0

    .line 234
    .local v0, "format":Ljava/text/DateFormat;
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 238
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/ECKey;>;"
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 252
    return-object v2

    .line 241
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x23

    if-eq v6, v7, :cond_0

    .line 244
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, "parts":[Ljava/lang/String;
    new-instance v6, Lcom/google/bitcoin/core/DumpedPrivateKey;

    sget-object v7, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-direct {v6, v7, v8}, Lcom/google/bitcoin/core/DumpedPrivateKey;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/google/bitcoin/core/DumpedPrivateKey;->getKey()Lcom/google/bitcoin/core/ECKey;

    move-result-object v1

    .line 247
    .local v1, "key":Lcom/google/bitcoin/core/ECKey;
    array-length v6, v4

    const/4 v7, 0x2

    if-lt v6, v7, :cond_2

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    :goto_1
    invoke-virtual {v1, v6, v7}, Lcom/google/bitcoin/core/ECKey;->setCreationTimeSeconds(J)V

    .line 249
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/bitcoin/core/AddressFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 254
    .end local v0    # "format":Ljava/text/DateFormat;
    .end local v1    # "key":Lcom/google/bitcoin/core/ECKey;
    .end local v2    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/ECKey;>;"
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "parts":[Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 256
    .local v5, "x":Lcom/google/bitcoin/core/AddressFormatException;
    new-instance v6, Ljava/io/IOException;

    const-string v7, "cannot read keys"

    invoke-direct {v6, v7, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 247
    .end local v5    # "x":Lcom/google/bitcoin/core/AddressFormatException;
    .restart local v0    # "format":Ljava/text/DateFormat;
    .restart local v1    # "key":Lcom/google/bitcoin/core/ECKey;
    .restart local v2    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/ECKey;>;"
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "parts":[Ljava/lang/String;
    :cond_2
    const-wide/16 v6, 0x0

    goto :goto_1

    .line 258
    .end local v0    # "format":Ljava/text/DateFormat;
    .end local v1    # "key":Lcom/google/bitcoin/core/ECKey;
    .end local v2    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/ECKey;>;"
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "parts":[Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 260
    .local v5, "x":Ljava/text/ParseException;
    new-instance v6, Ljava/io/IOException;

    const-string v7, "cannot read keys"

    invoke-direct {v6, v7, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static writeKeys(Ljava/io/Writer;Ljava/util/List;)V
    .locals 8
    .param p0, "out"    # Ljava/io/Writer;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/ECKey;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/ECKey;>;"
    invoke-static {}, Lde/schildbach/wallet/util/Iso8601Format;->newDateTimeFormatT()Ljava/text/DateFormat;

    move-result-object v0

    .line 214
    .local v0, "format":Ljava/text/DateFormat;
    const-string v3, "# KEEP YOUR PRIVATE KEYS SAFE! Anyone who can read this can spend your Pandacoins.\n"

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 216
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/ECKey;

    .line 218
    .local v2, "key":Lcom/google/bitcoin/core/ECKey;
    sget-object v3, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v2, v3}, Lcom/google/bitcoin/core/ECKey;->getPrivateKeyEncoded(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/DumpedPrivateKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/DumpedPrivateKey;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v2}, Lcom/google/bitcoin/core/ECKey;->getCreationTimeSeconds()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 221
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    .line 222
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/ECKey;->getCreationTimeSeconds()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 224
    :cond_0
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 226
    .end local v2    # "key":Lcom/google/bitcoin/core/ECKey;
    :cond_1
    return-void
.end method
