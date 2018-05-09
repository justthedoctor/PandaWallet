.class public Lcom/google/bitcoin/crypto/TrustStoreLoader$DefaultTrustStoreLoader;
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
    name = "DefaultTrustStoreLoader"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private loadFallbackStore()Ljava/security/KeyStore;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 95
    const-string v0, "JKS"

    const-string v1, "changeit"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "cacerts"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/bitcoin/crypto/X509Utils;->loadKeyStore(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method private loadIcsKeyStore()Ljava/security/KeyStore;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 84
    :try_start_0
    const-string v2, "AndroidCAStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 85
    .local v0, "keystore":Ljava/security/KeyStore;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    return-object v0

    .line 87
    .end local v0    # "keystore":Ljava/security/KeyStore;
    :catch_0
    move-exception v1

    .line 88
    .local v1, "x":Ljava/io/IOException;
    new-instance v2, Ljava/security/KeyStoreException;

    invoke-direct {v2, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 89
    .end local v1    # "x":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 90
    .local v1, "x":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/security/KeyStoreException;

    invoke-direct {v2, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public getKeyStore()Ljava/security/KeyStore;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, "keystorePath":Ljava/lang/String;
    sget-object v2, Lcom/google/bitcoin/crypto/TrustStoreLoader$DefaultTrustStoreLoader;->DEFAULT_KEYSTORE_TYPE:Ljava/lang/String;

    .line 48
    .local v2, "keystoreType":Ljava/lang/String;
    :try_start_0
    const-string v4, "android.os.Build$VERSION"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 50
    .local v3, "version":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "SDK_INT"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    const/16 v5, 0xe

    if-lt v4, v5, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/google/bitcoin/crypto/TrustStoreLoader$DefaultTrustStoreLoader;->loadIcsKeyStore()Ljava/security/KeyStore;

    move-result-object v4

    .line 76
    .end local v3    # "version":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v4

    .line 53
    .restart local v3    # "version":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-string v2, "BKS"

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "java.home"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/etc/security/cacerts.bks"

    const/16 v6, 0x2f

    sget-char v7, Ljava/io/File;->separatorChar:C

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 64
    .end local v3    # "version":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-nez v1, :cond_1

    .line 65
    const-string v4, "javax.net.ssl.trustStore"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    :cond_1
    if-nez v1, :cond_2

    .line 68
    invoke-direct {p0}, Lcom/google/bitcoin/crypto/TrustStoreLoader$DefaultTrustStoreLoader;->loadFallbackStore()Ljava/security/KeyStore;

    move-result-object v4

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 61
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 71
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_2
    :try_start_1
    const-string v4, "changeit"

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4, v5}, Lcom/google/bitcoin/crypto/X509Utils;->loadKeyStore(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/security/KeyStore;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    goto :goto_0

    .line 73
    :catch_2
    move-exception v0

    .line 76
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-direct {p0}, Lcom/google/bitcoin/crypto/TrustStoreLoader$DefaultTrustStoreLoader;->loadFallbackStore()Ljava/security/KeyStore;

    move-result-object v4

    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v4

    goto :goto_1
.end method
