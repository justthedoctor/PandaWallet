.class public Lcom/google/bitcoin/crypto/TrustStoreLoader$FileTrustStoreLoader;
.super Ljava/lang/Object;
.source "TrustStoreLoader.java"

# interfaces
.implements Lcom/google/bitcoin/crypto/TrustStoreLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/crypto/TrustStoreLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileTrustStoreLoader"
.end annotation


# instance fields
.field private final path:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "path"    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    iput-object p1, p0, Lcom/google/bitcoin/crypto/TrustStoreLoader$FileTrustStoreLoader;->path:Ljava/io/File;

    .line 106
    return-void
.end method


# virtual methods
.method public getKeyStore()Ljava/security/KeyStore;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 110
    sget-object v0, Lcom/google/bitcoin/crypto/TrustStoreLoader$FileTrustStoreLoader;->DEFAULT_KEYSTORE_TYPE:Ljava/lang/String;

    const-string v1, "changeit"

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/google/bitcoin/crypto/TrustStoreLoader$FileTrustStoreLoader;->path:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, v1, v2}, Lcom/google/bitcoin/crypto/X509Utils;->loadKeyStore(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method
