.class public interface abstract Lcom/subgraph/orchid/DirectoryServer;
.super Ljava/lang/Object;
.source "DirectoryServer.java"

# interfaces
.implements Lcom/subgraph/orchid/Router;


# virtual methods
.method public abstract addCertificate(Lcom/subgraph/orchid/KeyCertificate;)V
.end method

.method public abstract getCertificateByFingerprint(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/KeyCertificate;
.end method

.method public abstract getCertificates()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/KeyCertificate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDirectoryPort()I
.end method

.method public abstract getV3Identity()Lcom/subgraph/orchid/data/HexDigest;
.end method

.method public abstract isBridgeAuthority()Z
.end method

.method public abstract isExtraInfoCache()Z
.end method

.method public abstract isHiddenServiceAuthority()Z
.end method

.method public abstract isV2Authority()Z
.end method

.method public abstract isV3Authority()Z
.end method
