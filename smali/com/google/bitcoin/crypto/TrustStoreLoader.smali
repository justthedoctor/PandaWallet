.class public interface abstract Lcom/google/bitcoin/crypto/TrustStoreLoader;
.super Ljava/lang/Object;
.source "TrustStoreLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/crypto/TrustStoreLoader$FileTrustStoreLoader;,
        Lcom/google/bitcoin/crypto/TrustStoreLoader$DefaultTrustStoreLoader;
    }
.end annotation


# static fields
.field public static final DEFAULT_KEYSTORE_PASSWORD:Ljava/lang/String; = "changeit"

.field public static final DEFAULT_KEYSTORE_TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/crypto/TrustStoreLoader;->DEFAULT_KEYSTORE_TYPE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getKeyStore()Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method
