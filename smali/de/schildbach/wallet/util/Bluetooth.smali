.class public Lde/schildbach/wallet/util/Bluetooth;
.super Ljava/lang/Object;
.source "Bluetooth.java"


# static fields
.field public static final BLUETOOTH_UUID_CLASSIC:Ljava/util/UUID;

.field public static final BLUETOOTH_UUID_PAYMENT_PROTOCOL:Ljava/util/UUID;

.field public static final BLUETOOTH_UUID_PAYMENT_REQUESTS:Ljava/util/UUID;

.field public static final MAC_URI_PARAM:Ljava/lang/String; = "bt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "3357A7BB-762D-464A-8D9A-DCA592D57D59"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/util/Bluetooth;->BLUETOOTH_UUID_PAYMENT_REQUESTS:Ljava/util/UUID;

    .line 30
    const-string v0, "3357A7BB-762D-464A-8D9A-DCA592D57D5A"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/util/Bluetooth;->BLUETOOTH_UUID_PAYMENT_PROTOCOL:Ljava/util/UUID;

    .line 31
    const-string v0, "3357A7BB-762D-464A-8D9A-DCA592D57D5B"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/util/Bluetooth;->BLUETOOTH_UUID_CLASSIC:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "mac"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 36
    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decompressMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "compressedMac"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v1, "mac":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 43
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getBluetoothMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    .line 56
    invoke-static {p0}, Lde/schildbach/wallet/util/Bluetooth;->isBluetoothUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 60
    .local v0, "queryIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 61
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 63
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getBluetoothQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {p0}, Lde/schildbach/wallet/util/Bluetooth;->isBluetoothUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 72
    .local v0, "queryIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    :goto_0
    return-object v1

    :cond_1
    const-string v1, "/"

    goto :goto_0
.end method

.method public static isBluetoothUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 51
    if-eqz p0, :cond_0

    const-string v0, "bt:"

    invoke-static {p0, v0}, Lde/schildbach/wallet/util/GenericUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
