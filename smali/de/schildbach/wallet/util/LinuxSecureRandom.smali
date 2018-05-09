.class public Lde/schildbach/wallet/util/LinuxSecureRandom;
.super Ljava/security/SecureRandomSpi;
.source "LinuxSecureRandom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/schildbach/wallet/util/LinuxSecureRandom$LinuxSecureRandomProvider;
    }
.end annotation


# static fields
.field private static final urandom:Ljava/io/FileInputStream;


# instance fields
.field private final dis:Ljava/io/DataInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 51
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/dev/urandom"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sput-object v2, Lde/schildbach/wallet/util/LinuxSecureRandom;->urandom:Ljava/io/FileInputStream;

    .line 57
    new-instance v2, Lde/schildbach/wallet/util/LinuxSecureRandom$LinuxSecureRandomProvider;

    invoke-direct {v2}, Lde/schildbach/wallet/util/LinuxSecureRandom$LinuxSecureRandomProvider;-><init>()V

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    .line 69
    :goto_0
    return-void

    .line 61
    :cond_0
    const/4 v2, 0x0

    sput-object v2, Lde/schildbach/wallet/util/LinuxSecureRandom;->urandom:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/security/SecureRandomSpi;-><init>()V

    .line 76
    new-instance v0, Ljava/io/DataInputStream;

    sget-object v1, Lde/schildbach/wallet/util/LinuxSecureRandom;->urandom:Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lde/schildbach/wallet/util/LinuxSecureRandom;->dis:Ljava/io/DataInputStream;

    .line 77
    return-void
.end method


# virtual methods
.method protected engineGenerateSeed(I)[B
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 101
    new-array v0, p1, [B

    .line 102
    .local v0, "bits":[B
    invoke-virtual {p0, v0}, Lde/schildbach/wallet/util/LinuxSecureRandom;->engineNextBytes([B)V

    .line 103
    return-object v0
.end method

.method protected engineNextBytes([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lde/schildbach/wallet/util/LinuxSecureRandom;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v1, p1}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected engineSetSeed([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 83
    return-void
.end method
