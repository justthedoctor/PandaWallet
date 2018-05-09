.class public Lde/schildbach/wallet/util/GenericUtils;
.super Ljava/lang/Object;
.source "GenericUtils.java"


# static fields
.field public static final ONE_BTC:Ljava/math/BigInteger;

.field private static final ONE_BTC_INT:I

.field public static final ONE_MBTC:Ljava/math/BigInteger;

.field private static final ONE_MBTC_INT:I

.field public static final ONE_UBTC:Ljava/math/BigInteger;

.field private static final ONE_UBTC_INT:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 39
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "100000000"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/schildbach/wallet/util/GenericUtils;->ONE_BTC:Ljava/math/BigInteger;

    .line 40
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "100000"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/schildbach/wallet/util/GenericUtils;->ONE_MBTC:Ljava/math/BigInteger;

    .line 41
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "100"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/schildbach/wallet/util/GenericUtils;->ONE_UBTC:Ljava/math/BigInteger;

    .line 43
    sget-object v0, Lde/schildbach/wallet/util/GenericUtils;->ONE_BTC:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    sput v0, Lde/schildbach/wallet/util/GenericUtils;->ONE_BTC_INT:I

    .line 44
    sget-object v0, Lde/schildbach/wallet/util/GenericUtils;->ONE_MBTC:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    sput v0, Lde/schildbach/wallet/util/GenericUtils;->ONE_MBTC_INT:I

    .line 45
    sget-object v0, Lde/schildbach/wallet/util/GenericUtils;->ONE_UBTC:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    sput v0, Lde/schildbach/wallet/util/GenericUtils;->ONE_UBTC_INT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDebugValue(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/math/BigInteger;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 133
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lde/schildbach/wallet/util/GenericUtils;->formatValue(Ljava/math/BigInteger;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatValue(Ljava/math/BigInteger;II)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/math/BigInteger;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "precision"    # I
    .param p2, "shift"    # I

    .prologue
    .line 49
    const-string v0, ""

    const-string v1, "-"

    invoke-static {p0, v0, v1, p1, p2}, Lde/schildbach/wallet/util/GenericUtils;->formatValue(Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatValue(Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 15
    .param p0, "value"    # Ljava/math/BigInteger;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "plusSign"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "minusSign"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "precision"    # I
    .param p4, "shift"    # I

    .prologue
    .line 55
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v5

    .line 57
    .local v5, "longValue":J
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-gez v9, :cond_1

    move-object/from16 v8, p2

    .line 59
    .local v8, "sign":Ljava/lang/String;
    :goto_0
    if-nez p4, :cond_8

    .line 61
    const/4 v9, 0x2

    move/from16 v0, p3

    if-ne v0, v9, :cond_2

    .line 62
    const-wide/32 v9, 0xf4240

    rem-long v9, v5, v9

    sub-long v9, v5, v9

    const-wide/32 v11, 0xf4240

    rem-long v11, v5, v11

    const-wide/32 v13, 0x7a120

    div-long/2addr v11, v13

    const-wide/32 v13, 0xf4240

    mul-long/2addr v11, v13

    add-long v5, v9, v11

    .line 72
    :cond_0
    :goto_1
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 73
    .local v1, "absValue":J
    sget v9, Lde/schildbach/wallet/util/GenericUtils;->ONE_BTC_INT:I

    int-to-long v9, v9

    div-long v3, v1, v9

    .line 74
    .local v3, "coins":J
    sget v9, Lde/schildbach/wallet/util/GenericUtils;->ONE_BTC_INT:I

    int-to-long v9, v9

    rem-long v9, v1, v9

    long-to-int v7, v9

    .line 76
    .local v7, "satoshis":I
    const v9, 0xf4240

    rem-int v9, v7, v9

    if-nez v9, :cond_5

    .line 77
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%s%d.%02d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const v13, 0xf4240

    div-int v13, v7, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 123
    :goto_2
    return-object v9

    .end local v1    # "absValue":J
    .end local v3    # "coins":J
    .end local v7    # "satoshis":I
    .end local v8    # "sign":Ljava/lang/String;
    :cond_1
    move-object/from16 v8, p1

    .line 57
    goto :goto_0

    .line 63
    .restart local v8    # "sign":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x4

    move/from16 v0, p3

    if-ne v0, v9, :cond_3

    .line 64
    const-wide/16 v9, 0x2710

    rem-long v9, v5, v9

    sub-long v9, v5, v9

    const-wide/16 v11, 0x2710

    rem-long v11, v5, v11

    const-wide/16 v13, 0x1388

    div-long/2addr v11, v13

    const-wide/16 v13, 0x2710

    mul-long/2addr v11, v13

    add-long v5, v9, v11

    goto :goto_1

    .line 65
    :cond_3
    const/4 v9, 0x6

    move/from16 v0, p3

    if-ne v0, v9, :cond_4

    .line 66
    const-wide/16 v9, 0x64

    rem-long v9, v5, v9

    sub-long v9, v5, v9

    const-wide/16 v11, 0x64

    rem-long v11, v5, v11

    const-wide/16 v13, 0x32

    div-long/2addr v11, v13

    const-wide/16 v13, 0x64

    mul-long/2addr v11, v13

    add-long v5, v9, v11

    goto :goto_1

    .line 67
    :cond_4
    const/16 v9, 0x8

    move/from16 v0, p3

    if-eq v0, v9, :cond_0

    .line 70
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cannot handle precision/shift: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 78
    .restart local v1    # "absValue":J
    .restart local v3    # "coins":J
    .restart local v7    # "satoshis":I
    :cond_5
    rem-int/lit16 v9, v7, 0x2710

    if-nez v9, :cond_6

    .line 79
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%s%d.%04d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    div-int/lit16 v13, v7, 0x2710

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 80
    :cond_6
    rem-int/lit8 v9, v7, 0x64

    if-nez v9, :cond_7

    .line 81
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%s%d.%06d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    div-int/lit8 v13, v7, 0x64

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 83
    :cond_7
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%s%d.%08d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 85
    .end local v1    # "absValue":J
    .end local v3    # "coins":J
    .end local v7    # "satoshis":I
    :cond_8
    const/4 v9, 0x3

    move/from16 v0, p4

    if-ne v0, v9, :cond_e

    .line 87
    const/4 v9, 0x2

    move/from16 v0, p3

    if-ne v0, v9, :cond_a

    .line 88
    const-wide/16 v9, 0x3e8

    rem-long v9, v5, v9

    sub-long v9, v5, v9

    const-wide/16 v11, 0x3e8

    rem-long v11, v5, v11

    const-wide/16 v13, 0x1f4

    div-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    add-long v5, v9, v11

    .line 96
    :cond_9
    :goto_3
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 97
    .restart local v1    # "absValue":J
    sget v9, Lde/schildbach/wallet/util/GenericUtils;->ONE_MBTC_INT:I

    int-to-long v9, v9

    div-long v3, v1, v9

    .line 98
    .restart local v3    # "coins":J
    sget v9, Lde/schildbach/wallet/util/GenericUtils;->ONE_MBTC_INT:I

    int-to-long v9, v9

    rem-long v9, v1, v9

    long-to-int v7, v9

    .line 100
    .restart local v7    # "satoshis":I
    rem-int/lit16 v9, v7, 0x3e8

    if-nez v9, :cond_c

    .line 101
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%s%d.%02d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    div-int/lit16 v13, v7, 0x3e8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 89
    .end local v1    # "absValue":J
    .end local v3    # "coins":J
    .end local v7    # "satoshis":I
    :cond_a
    const/4 v9, 0x4

    move/from16 v0, p3

    if-ne v0, v9, :cond_b

    .line 90
    const-wide/16 v9, 0xa

    rem-long v9, v5, v9

    sub-long v9, v5, v9

    const-wide/16 v11, 0xa

    rem-long v11, v5, v11

    const-wide/16 v13, 0x5

    div-long/2addr v11, v13

    const-wide/16 v13, 0xa

    mul-long/2addr v11, v13

    add-long v5, v9, v11

    goto :goto_3

    .line 91
    :cond_b
    const/4 v9, 0x5

    move/from16 v0, p3

    if-eq v0, v9, :cond_9

    .line 94
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cannot handle precision/shift: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 102
    .restart local v1    # "absValue":J
    .restart local v3    # "coins":J
    .restart local v7    # "satoshis":I
    :cond_c
    rem-int/lit8 v9, v7, 0xa

    if-nez v9, :cond_d

    .line 103
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%s%d.%04d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    div-int/lit8 v13, v7, 0xa

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 105
    :cond_d
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%s%d.%05d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 107
    .end local v1    # "absValue":J
    .end local v3    # "coins":J
    .end local v7    # "satoshis":I
    :cond_e
    const/4 v9, 0x6

    move/from16 v0, p4

    if-ne v0, v9, :cond_12

    .line 109
    if-nez p3, :cond_10

    .line 110
    const-wide/16 v9, 0x64

    rem-long v9, v5, v9

    sub-long v9, v5, v9

    const-wide/16 v11, 0x64

    rem-long v11, v5, v11

    const-wide/16 v13, 0x32

    div-long/2addr v11, v13

    const-wide/16 v13, 0x64

    mul-long/2addr v11, v13

    add-long v5, v9, v11

    .line 116
    :cond_f
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 117
    .restart local v1    # "absValue":J
    sget v9, Lde/schildbach/wallet/util/GenericUtils;->ONE_UBTC_INT:I

    int-to-long v9, v9

    div-long v3, v1, v9

    .line 118
    .restart local v3    # "coins":J
    sget v9, Lde/schildbach/wallet/util/GenericUtils;->ONE_UBTC_INT:I

    int-to-long v9, v9

    rem-long v9, v1, v9

    long-to-int v7, v9

    .line 120
    .restart local v7    # "satoshis":I
    rem-int/lit8 v9, v7, 0x64

    if-nez v9, :cond_11

    .line 121
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%s%d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 111
    .end local v1    # "absValue":J
    .end local v3    # "coins":J
    .end local v7    # "satoshis":I
    :cond_10
    const/4 v9, 0x2

    move/from16 v0, p3

    if-eq v0, v9, :cond_f

    .line 114
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cannot handle precision/shift: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 123
    .restart local v1    # "absValue":J
    .restart local v3    # "coins":J
    .restart local v7    # "satoshis":I
    :cond_11
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%s%d.%02d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 127
    .end local v1    # "absValue":J
    .end local v3    # "coins":J
    .end local v7    # "satoshis":I
    :cond_12
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cannot handle shift: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public static setNextFocusForwardId(Landroid/view/View;I)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "nextFocusForwardId"    # I

    .prologue
    .line 157
    :try_start_0
    const-class v2, Landroid/widget/TextView;

    const-string v3, "setNextFocusForwardId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 158
    .local v0, "setNextFocusForwardId":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v0    # "setNextFocusForwardId":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v1

    .line 166
    .local v1, "x":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 160
    .end local v1    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 150
    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static toNanoCoins(Ljava/lang/String;I)Ljava/math/BigInteger;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "shift"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .prologue
    .line 138
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    rsub-int/lit8 v2, p1, 0x8

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object v0

    .line 140
    .local v0, "nanoCoins":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-gez v1, :cond_0

    .line 141
    new-instance v1, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "negative amount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_0
    sget-object v1, Lcom/google/bitcoin/core/NetworkParameters;->MAX_MONEY:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_1

    .line 143
    new-instance v1, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "amount too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_1
    return-object v0
.end method
