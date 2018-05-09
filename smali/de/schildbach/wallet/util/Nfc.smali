.class public Lde/schildbach/wallet/util/Nfc;
.super Ljava/lang/Object;
.source "Nfc.java"


# static fields
.field private static final RTD_ANDROID_APP:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "android.com:pkg"

    sget-object v1, Lde/schildbach/wallet/Constants;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/util/Nfc;->RTD_ANDROID_APP:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static absoluteUriRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 5
    .param p0, "uri"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 98
    new-instance v0, Landroid/nfc/NdefRecord;

    const/4 v1, 0x3

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_URI:[B

    const/4 v3, 0x0

    new-array v3, v3, [B

    sget-object v4, Lde/schildbach/wallet/Constants;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v0
.end method

.method private static androidApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 119
    new-instance v0, Landroid/nfc/NdefRecord;

    const/4 v1, 0x4

    sget-object v2, Lde/schildbach/wallet/util/Nfc;->RTD_ANDROID_APP:[B

    const/4 v3, 0x0

    new-array v3, v3, [B

    sget-object v4, Lde/schildbach/wallet/Constants;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v0
.end method

.method public static extractMimePayload(Ljava/lang/String;Landroid/nfc/NdefMessage;)[B
    .locals 7
    .param p0, "mimeType"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "message"    # Landroid/nfc/NdefMessage;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .prologue
    .line 125
    sget-object v5, Lde/schildbach/wallet/Constants;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 127
    .local v3, "mimeBytes":[B
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    .local v0, "arr$":[Landroid/nfc/NdefRecord;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 129
    .local v4, "record":Landroid/nfc/NdefRecord;
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v5

    invoke-static {v5, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 130
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v5

    .line 133
    .end local v4    # "record":Landroid/nfc/NdefRecord;
    :goto_1
    return-object v5

    .line 127
    .restart local v4    # "record":Landroid/nfc/NdefRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v4    # "record":Landroid/nfc/NdefRecord;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static mimeRecord(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;
    .locals 4
    .param p0, "mimeType"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "payload"    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 112
    sget-object v2, Lde/schildbach/wallet/Constants;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 113
    .local v0, "mimeBytes":[B
    new-instance v1, Landroid/nfc/NdefRecord;

    const/4 v2, 0x2

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-direct {v1, v2, v0, v3, p1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 114
    .local v1, "mimeRecord":Landroid/nfc/NdefRecord;
    return-object v1
.end method

.method private static ndefMessage(Landroid/nfc/NdefRecord;ZLjava/lang/String;)Landroid/nfc/NdefMessage;
    .locals 5
    .param p0, "record"    # Landroid/nfc/NdefRecord;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "includeApplicationRecord"    # Z
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    if-eqz p1, :cond_0

    .line 87
    invoke-static {p2}, Lde/schildbach/wallet/util/Nfc;->androidApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 88
    .local v0, "appRecord":Landroid/nfc/NdefRecord;
    new-instance v1, Landroid/nfc/NdefMessage;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    aput-object p0, v2, v3

    aput-object v0, v2, v4

    invoke-direct {v1, v2}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 92
    .end local v0    # "appRecord":Landroid/nfc/NdefRecord;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/nfc/NdefMessage;

    new-array v2, v4, [Landroid/nfc/NdefRecord;

    aput-object p0, v2, v3

    invoke-direct {v1, v2}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    goto :goto_0
.end method

.method public static publishMimeObject(Landroid/nfc/NfcManager;Landroid/app/Activity;Ljava/lang/String;[BZ)Z
    .locals 3
    .param p0, "nfcManager"    # Landroid/nfc/NfcManager;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "mimeType"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "payload"    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4, "includeApplicationRecord"    # Z

    .prologue
    const/4 v2, 0x0

    .line 58
    if-nez p0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v2

    .line 61
    :cond_1
    invoke-virtual {p0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 62
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 65
    invoke-static {p2, p3}, Lde/schildbach/wallet/util/Nfc;->mimeRecord(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 66
    .local v1, "mimeRecord":Landroid/nfc/NdefRecord;
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p4, v2}, Lde/schildbach/wallet/util/Nfc;->ndefMessage(Landroid/nfc/NdefRecord;ZLjava/lang/String;)Landroid/nfc/NdefMessage;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/nfc/NfcAdapter;->enableForegroundNdefPush(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V

    .line 68
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static publishUri(Landroid/nfc/NfcManager;Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 4
    .param p0, "nfcManager"    # Landroid/nfc/NfcManager;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    if-nez p0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v2

    .line 45
    :cond_1
    invoke-virtual {p0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 46
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 49
    invoke-static {p2}, Lde/schildbach/wallet/util/Nfc;->wellKnownUriRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 50
    .local v1, "uriRecord":Landroid/nfc/NdefRecord;
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lde/schildbach/wallet/util/Nfc;->ndefMessage(Landroid/nfc/NdefRecord;ZLjava/lang/String;)Landroid/nfc/NdefMessage;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/nfc/NfcAdapter;->enableForegroundNdefPush(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V

    move v2, v3

    .line 52
    goto :goto_0
.end method

.method public static unpublish(Landroid/nfc/NfcManager;Landroid/app/Activity;)V
    .locals 1
    .param p0, "nfcManager"    # Landroid/nfc/NfcManager;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 73
    if-nez p0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {p0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 77
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, p1}, Landroid/nfc/NfcAdapter;->disableForegroundNdefPush(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private static wellKnownUriRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 6
    .param p0, "uri"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 103
    sget-object v2, Lde/schildbach/wallet/Constants;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 104
    .local v1, "uriBytes":[B
    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [B

    .line 105
    .local v0, "recordBytes":[B
    aput-byte v4, v0, v4

    .line 106
    array-length v2, v1

    invoke-static {v1, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    new-instance v2, Landroid/nfc/NdefRecord;

    sget-object v3, Landroid/nfc/NdefRecord;->RTD_URI:[B

    new-array v4, v4, [B

    invoke-direct {v2, v5, v3, v4, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v2
.end method
