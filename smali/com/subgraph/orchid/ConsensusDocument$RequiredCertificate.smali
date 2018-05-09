.class public interface abstract Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;
.super Ljava/lang/Object;
.source "ConsensusDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/ConsensusDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequiredCertificate"
.end annotation


# virtual methods
.method public abstract getAuthorityIdentity()Lcom/subgraph/orchid/data/HexDigest;
.end method

.method public abstract getDownloadFailureCount()I
.end method

.method public abstract getSigningKey()Lcom/subgraph/orchid/data/HexDigest;
.end method

.method public abstract incrementDownloadFailureCount()V
.end method
