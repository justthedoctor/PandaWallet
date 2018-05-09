.class final Lcom/subgraph/orchid/connections/ConnectionSocketFactory$1;
.super Ljava/lang/Object;
.source "ConnectionSocketFactory.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/connections/ConnectionSocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final empty:[Ljava/security/cert/X509Certificate;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionSocketFactory$1;->empty:[Ljava/security/cert/X509Certificate;

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 35
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 39
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionSocketFactory$1;->empty:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method
