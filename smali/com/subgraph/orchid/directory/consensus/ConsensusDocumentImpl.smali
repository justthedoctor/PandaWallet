.class public Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;
.super Ljava/lang/Object;
.source "ConsensusDocumentImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/ConsensusDocument;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$1;,
        Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;
    }
.end annotation


# static fields
.field private static final BW_WEIGHT_SCALE_DEFAULT:I = 0x2710

.field private static final BW_WEIGHT_SCALE_MAX:I = 0x7fffffff

.field private static final BW_WEIGHT_SCALE_MIN:I = 0x1

.field private static final BW_WEIGHT_SCALE_PARAM:Ljava/lang/String; = "bwweightscale"

.field private static final CIRCWINDOW_DEFAULT:I = 0x3e8

.field private static final CIRCWINDOW_MAX:I = 0x3e8

.field private static final CIRCWINDOW_MIN:I = 0x64

.field private static final CIRCWINDOW_PARAM:Ljava/lang/String; = "circwindow"

.field private static final USE_NTOR_HANDSHAKE_PARAM:Ljava/lang/String; = "UseNTorHandshake"

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private bandwidthWeights:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private clientVersions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private consensusMethod:I

.field private distDelaySeconds:I

.field private flavor:Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

.field private freshUntil:Lcom/subgraph/orchid/data/Timestamp;

.field private isFirstCallToVerifySignatures:Z

.field private knownFlags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private rawDocumentData:Ljava/lang/String;

.field private requiredCertificates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;",
            ">;"
        }
    .end annotation
.end field

.field private routerStatusEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/RouterStatus;",
            ">;"
        }
    .end annotation
.end field

.field private serverVersions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private signatureCount:I

.field private signingHash:Lcom/subgraph/orchid/data/HexDigest;

.field private signingHash256:Lcom/subgraph/orchid/data/HexDigest;

.field private validAfter:Lcom/subgraph/orchid/data/Timestamp;

.field private validUntil:Lcom/subgraph/orchid/data/Timestamp;

.field private voteAuthorityEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/subgraph/orchid/data/HexDigest;",
            "Lcom/subgraph/orchid/VoteAuthorityEntry;",
            ">;"
        }
    .end annotation
.end field

.field private voteDelaySeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->requiredCertificates:Ljava/util/Set;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->isFirstCallToVerifySignatures:Z

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->clientVersions:Ljava/util/Set;

    .line 103
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->serverVersions:Ljava/util/Set;

    .line 104
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->knownFlags:Ljava/util/Set;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->voteAuthorityEntries:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->routerStatusEntries:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->bandwidthWeights:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->parameters:Ljava/util/Map;

    .line 109
    return-void
.end method

.method private addRequiredCertificateForSignature(Lcom/subgraph/orchid/directory/consensus/DirectorySignature;)V
    .locals 4
    .param p1, "signature"    # Lcom/subgraph/orchid/directory/consensus/DirectorySignature;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->requiredCertificates:Ljava/util/Set;

    new-instance v1, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->getIdentityDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v2

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->getSigningKeyDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/subgraph/orchid/directory/consensus/RequiredCertificateImpl;-><init>(Lcom/subgraph/orchid/data/HexDigest;Lcom/subgraph/orchid/data/HexDigest;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 290
    return-void
.end method

.method private getBooleanParameterValue(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 318
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->parameters:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .line 321
    .restart local p2    # "defaultValue":Z
    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->parameters:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 322
    .local v0, "value":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    move p2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getParameterValue(Ljava/lang/String;III)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .param p3, "minValue"    # I
    .param p4, "maxValue"    # I

    .prologue
    .line 304
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->parameters:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 307
    .restart local p2    # "defaultValue":I
    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->parameters:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 308
    .local v0, "value":I
    if-ge v0, p3, :cond_1

    move p2, p3

    .line 309
    goto :goto_0

    .line 310
    :cond_1
    if-le v0, p4, :cond_2

    move p2, p4

    .line 311
    goto :goto_0

    :cond_2
    move p2, v0

    .line 313
    goto :goto_0
.end method

.method private verifySignatureForTrustedAuthority(Lcom/subgraph/orchid/DirectoryServer;Lcom/subgraph/orchid/directory/consensus/DirectorySignature;)Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;
    .locals 6
    .param p1, "trustedAuthority"    # Lcom/subgraph/orchid/DirectoryServer;
    .param p2, "signature"    # Lcom/subgraph/orchid/directory/consensus/DirectorySignature;

    .prologue
    .line 265
    invoke-virtual {p2}, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->getSigningKeyDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/subgraph/orchid/DirectoryServer;->getCertificateByFingerprint(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/KeyCertificate;

    move-result-object v0

    .line 266
    .local v0, "certificate":Lcom/subgraph/orchid/KeyCertificate;
    if-nez v0, :cond_0

    .line 267
    sget-object v3, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing certificate for signing key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->getSigningKeyDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 268
    invoke-direct {p0, p2}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->addRequiredCertificateForSignature(Lcom/subgraph/orchid/directory/consensus/DirectorySignature;)V

    .line 269
    sget-object v3, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->STATUS_NEED_CERTS:Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;

    .line 281
    :goto_0
    return-object v3

    .line 271
    :cond_0
    invoke-interface {v0}, Lcom/subgraph/orchid/KeyCertificate;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 272
    sget-object v3, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->STATUS_FAILED:Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;

    goto :goto_0

    .line 275
    :cond_1
    invoke-interface {v0}, Lcom/subgraph/orchid/KeyCertificate;->getAuthoritySigningKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v2

    .line 276
    .local v2, "signingKey":Lcom/subgraph/orchid/crypto/TorPublicKey;
    invoke-virtual {p2}, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->useSha256()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->signingHash256:Lcom/subgraph/orchid/data/HexDigest;

    .line 277
    .local v1, "d":Lcom/subgraph/orchid/data/HexDigest;
    :goto_1
    invoke-virtual {p2}, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->getSignature()Lcom/subgraph/orchid/crypto/TorSignature;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/subgraph/orchid/crypto/TorPublicKey;->verifySignature(Lcom/subgraph/orchid/crypto/TorSignature;Lcom/subgraph/orchid/data/HexDigest;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 278
    sget-object v3, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signature failed on consensus for signing key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->getSigningKeyDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 279
    sget-object v3, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->STATUS_FAILED:Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;

    goto :goto_0

    .line 276
    .end local v1    # "d":Lcom/subgraph/orchid/data/HexDigest;
    :cond_2
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->signingHash:Lcom/subgraph/orchid/data/HexDigest;

    goto :goto_1

    .line 281
    .restart local v1    # "d":Lcom/subgraph/orchid/data/HexDigest;
    :cond_3
    sget-object v3, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->STATUS_VERIFIED:Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;

    goto :goto_0
.end method

.method private verifySingleAuthority(Lcom/subgraph/orchid/VoteAuthorityEntry;)Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;
    .locals 8
    .param p1, "authority"    # Lcom/subgraph/orchid/VoteAuthorityEntry;

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "certsNeeded":Z
    const/4 v4, 0x0

    .line 236
    .local v4, "validSignature":Z
    invoke-interface {p1}, Lcom/subgraph/orchid/VoteAuthorityEntry;->getSignatures()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;

    .line 237
    .local v2, "s":Lcom/subgraph/orchid/directory/consensus/DirectorySignature;
    invoke-static {}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getInstance()Lcom/subgraph/orchid/directory/TrustedAuthorities;

    move-result-object v5

    invoke-virtual {v2}, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->getIdentityDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getAuthorityServerByIdentity(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/DirectoryServer;

    move-result-object v3

    .line 238
    .local v3, "trusted":Lcom/subgraph/orchid/DirectoryServer;
    if-nez v3, :cond_0

    .line 239
    sget-object v5, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Consensus signed by unrecognized directory authority: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->getIdentityDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 240
    sget-object v5, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->STATUS_FAILED:Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;

    .line 260
    .end local v2    # "s":Lcom/subgraph/orchid/directory/consensus/DirectorySignature;
    .end local v3    # "trusted":Lcom/subgraph/orchid/DirectoryServer;
    :goto_1
    return-object v5

    .line 242
    .restart local v2    # "s":Lcom/subgraph/orchid/directory/consensus/DirectorySignature;
    .restart local v3    # "trusted":Lcom/subgraph/orchid/DirectoryServer;
    :cond_0
    sget-object v5, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$1;->$SwitchMap$com$subgraph$orchid$ConsensusDocument$SignatureStatus:[I

    invoke-direct {p0, v3, v2}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->verifySignatureForTrustedAuthority(Lcom/subgraph/orchid/DirectoryServer;Lcom/subgraph/orchid/directory/consensus/DirectorySignature;)Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 244
    :pswitch_0
    const/4 v0, 0x1

    .line 245
    goto :goto_0

    .line 247
    :pswitch_1
    const/4 v4, 0x1

    .line 248
    goto :goto_0

    .line 255
    .end local v2    # "s":Lcom/subgraph/orchid/directory/consensus/DirectorySignature;
    .end local v3    # "trusted":Lcom/subgraph/orchid/DirectoryServer;
    :cond_1
    if-eqz v4, :cond_2

    .line 256
    sget-object v5, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->STATUS_VERIFIED:Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;

    goto :goto_1

    .line 257
    :cond_2
    if-eqz v0, :cond_3

    .line 258
    sget-object v5, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->STATUS_NEED_CERTS:Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;

    goto :goto_1

    .line 260
    :cond_3
    sget-object v5, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->STATUS_FAILED:Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;

    goto :goto_1

    .line 242
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addBandwidthWeight(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->bandwidthWeights:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method addClientVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->clientVersions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addKnownFlag(Ljava/lang/String;)V
    .locals 1
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->knownFlags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method addParameter(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->parameters:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method addRouterStatusEntry(Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;)V
    .locals 1
    .param p1, "entry"    # Lcom/subgraph/orchid/directory/consensus/RouterStatusImpl;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->routerStatusEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method addServerVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->serverVersions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addSignature(Lcom/subgraph/orchid/directory/consensus/DirectorySignature;)V
    .locals 9
    .param p1, "signature"    # Lcom/subgraph/orchid/directory/consensus/DirectorySignature;

    .prologue
    .line 79
    iget-object v6, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->voteAuthorityEntries:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->getIdentityDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/subgraph/orchid/VoteAuthorityEntry;

    .line 80
    .local v5, "voteAuthority":Lcom/subgraph/orchid/VoteAuthorityEntry;
    if-nez v5, :cond_0

    .line 81
    sget-object v6, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Consensus contains signature for source not declared in authority section: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->getIdentityDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 95
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-interface {v5}, Lcom/subgraph/orchid/VoteAuthorityEntry;->getSignatures()Ljava/util/List;

    move-result-object v4

    .line 85
    .local v4, "signatures":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/directory/consensus/DirectorySignature;>;"
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->getSignature()Lcom/subgraph/orchid/crypto/TorSignature;

    move-result-object v6

    invoke-virtual {v6}, Lcom/subgraph/orchid/crypto/TorSignature;->getDigestAlgorithm()Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;

    move-result-object v2

    .line 86
    .local v2, "newSignatureAlgorithm":Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;

    .line 87
    .local v3, "sig":Lcom/subgraph/orchid/directory/consensus/DirectorySignature;
    invoke-virtual {v3}, Lcom/subgraph/orchid/directory/consensus/DirectorySignature;->getSignature()Lcom/subgraph/orchid/crypto/TorSignature;

    move-result-object v6

    invoke-virtual {v6}, Lcom/subgraph/orchid/crypto/TorSignature;->getDigestAlgorithm()Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;

    move-result-object v0

    .line 88
    .local v0, "algo":Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;
    invoke-virtual {v0, v2}, Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 89
    sget-object v6, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->logger:Ljava/util/logging/Logger;

    const-string v7, "Consensus contains two or more signatures for same source with same algorithm"

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    .end local v0    # "algo":Lcom/subgraph/orchid/crypto/TorSignature$DigestAlgorithm;
    .end local v3    # "sig":Lcom/subgraph/orchid/directory/consensus/DirectorySignature;
    :cond_2
    iget v6, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->signatureCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->signatureCount:I

    .line 94
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method addVoteAuthorityEntry(Lcom/subgraph/orchid/VoteAuthorityEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/subgraph/orchid/VoteAuthorityEntry;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->voteAuthorityEntries:Ljava/util/Map;

    invoke-interface {p1}, Lcom/subgraph/orchid/VoteAuthorityEntry;->getIdentity()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 293
    instance-of v1, p1, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    if-nez v1, :cond_0

    .line 294
    const/4 v1, 0x0

    .line 296
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 295
    check-cast v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;

    .line 296
    .local v0, "other":Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;
    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->getSigningHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->signingHash:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/data/HexDigest;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getBandwidthWeight(Ljava/lang/String;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->bandwidthWeights:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->bandwidthWeights:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 337
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCircWindowParameter()I
    .locals 3

    .prologue
    const/16 v2, 0x3e8

    .line 326
    const-string v0, "circwindow"

    const/16 v1, 0x64

    invoke-direct {p0, v0, v2, v1, v2}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->getParameterValue(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public getClientVersions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->clientVersions:Ljava/util/Set;

    return-object v0
.end method

.method public getConsensusMethod()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->consensusMethod:I

    return v0
.end method

.method public getDistSeconds()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->distDelaySeconds:I

    return v0
.end method

.method public getFlavor()Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->flavor:Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    return-object v0
.end method

.method public getFreshUntilTime()Lcom/subgraph/orchid/data/Timestamp;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->freshUntil:Lcom/subgraph/orchid/data/Timestamp;

    return-object v0
.end method

.method public getRawDocumentBytes()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->getRawDocumentData()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 177
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->getRawDocumentData()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/subgraph/orchid/Tor;->getDefaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public getRawDocumentData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->rawDocumentData:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredCertificates()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/subgraph/orchid/ConsensusDocument$RequiredCertificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->requiredCertificates:Ljava/util/Set;

    return-object v0
.end method

.method public getRouterStatusEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/RouterStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->routerStatusEntries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getServerVersions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->serverVersions:Ljava/util/Set;

    return-object v0
.end method

.method public getSigningHash()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->signingHash:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method public getSigningHash256()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->signingHash256:Lcom/subgraph/orchid/data/HexDigest;

    return-object v0
.end method

.method public getUseNTorHandshake()Z
    .locals 2

    .prologue
    .line 342
    const-string v0, "UseNTorHandshake"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->getBooleanParameterValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getValidAfterTime()Lcom/subgraph/orchid/data/Timestamp;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->validAfter:Lcom/subgraph/orchid/data/Timestamp;

    return-object v0
.end method

.method public getValidUntilTime()Lcom/subgraph/orchid/data/Timestamp;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->validUntil:Lcom/subgraph/orchid/data/Timestamp;

    return-object v0
.end method

.method public getVoteSeconds()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->voteDelaySeconds:I

    return v0
.end method

.method public getWeightScaleParameter()I
    .locals 4

    .prologue
    .line 330
    const-string v0, "bwweightscale"

    const/16 v1, 0x2710

    const/4 v2, 0x1

    const v3, 0x7fffffff

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->getParameterValue(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->signingHash:Lcom/subgraph/orchid/data/HexDigest;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->signingHash:Lcom/subgraph/orchid/data/HexDigest;

    invoke-virtual {v0}, Lcom/subgraph/orchid/data/HexDigest;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isLive()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 160
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->validUntil:Lcom/subgraph/orchid/data/Timestamp;

    if-nez v1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->validUntil:Lcom/subgraph/orchid/data/Timestamp;

    invoke-virtual {v1}, Lcom/subgraph/orchid/data/Timestamp;->hasPassed()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isValidDocument()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->validAfter:Lcom/subgraph/orchid/data/Timestamp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->freshUntil:Lcom/subgraph/orchid/data/Timestamp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->validUntil:Lcom/subgraph/orchid/data/Timestamp;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->voteDelaySeconds:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->distDelaySeconds:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->signingHash:Lcom/subgraph/orchid/data/HexDigest;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->signatureCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setConsensusFlavor(Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;)V
    .locals 0
    .param p1, "flavor"    # Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->flavor:Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    return-void
.end method

.method setConsensusMethod(I)V
    .locals 0
    .param p1, "method"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->consensusMethod:I

    return-void
.end method

.method setDistDelaySeconds(I)V
    .locals 0
    .param p1, "seconds"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->distDelaySeconds:I

    return-void
.end method

.method setFreshUntil(Lcom/subgraph/orchid/data/Timestamp;)V
    .locals 0
    .param p1, "ts"    # Lcom/subgraph/orchid/data/Timestamp;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->freshUntil:Lcom/subgraph/orchid/data/Timestamp;

    return-void
.end method

.method setRawDocumentData(Ljava/lang/String;)V
    .locals 0
    .param p1, "rawData"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->rawDocumentData:Ljava/lang/String;

    return-void
.end method

.method setSigningHash(Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 0
    .param p1, "hash"    # Lcom/subgraph/orchid/data/HexDigest;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->signingHash:Lcom/subgraph/orchid/data/HexDigest;

    return-void
.end method

.method setSigningHash256(Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 0
    .param p1, "hash"    # Lcom/subgraph/orchid/data/HexDigest;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->signingHash256:Lcom/subgraph/orchid/data/HexDigest;

    return-void
.end method

.method setValidAfter(Lcom/subgraph/orchid/data/Timestamp;)V
    .locals 0
    .param p1, "ts"    # Lcom/subgraph/orchid/data/Timestamp;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->validAfter:Lcom/subgraph/orchid/data/Timestamp;

    return-void
.end method

.method setValidUntil(Lcom/subgraph/orchid/data/Timestamp;)V
    .locals 0
    .param p1, "ts"    # Lcom/subgraph/orchid/data/Timestamp;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->validUntil:Lcom/subgraph/orchid/data/Timestamp;

    return-void
.end method

.method setVoteDelaySeconds(I)V
    .locals 0
    .param p1, "seconds"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->voteDelaySeconds:I

    return-void
.end method

.method public declared-synchronized verifySignatures()Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;
    .locals 9

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->isFirstCallToVerifySignatures:Z

    .line 199
    .local v2, "firstCall":Z
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->isFirstCallToVerifySignatures:Z

    .line 200
    iget-object v7, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->requiredCertificates:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 201
    const/4 v6, 0x0

    .line 202
    .local v6, "verifiedCount":I
    const/4 v0, 0x0

    .line 203
    .local v0, "certsNeededCount":I
    invoke-static {}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getInstance()Lcom/subgraph/orchid/directory/TrustedAuthorities;

    move-result-object v7

    invoke-virtual {v7}, Lcom/subgraph/orchid/directory/TrustedAuthorities;->getV3AuthorityServerCount()I

    move-result v5

    .line 204
    .local v5, "v3Count":I
    div-int/lit8 v7, v5, 0x2

    add-int/lit8 v4, v7, 0x1

    .line 206
    .local v4, "required":I
    iget-object v7, p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->voteAuthorityEntries:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    :pswitch_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/VoteAuthorityEntry;

    .line 207
    .local v1, "entry":Lcom/subgraph/orchid/VoteAuthorityEntry;
    sget-object v7, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$1;->$SwitchMap$com$subgraph$orchid$ConsensusDocument$SignatureStatus:[I

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->verifySingleAuthority(Lcom/subgraph/orchid/VoteAuthorityEntry;)Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;

    move-result-object v8

    invoke-virtual {v8}, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 211
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 212
    goto :goto_0

    .line 214
    :pswitch_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 219
    .end local v1    # "entry":Lcom/subgraph/orchid/VoteAuthorityEntry;
    :cond_0
    if-lt v6, v4, :cond_1

    .line 220
    sget-object v7, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->STATUS_VERIFIED:Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :goto_1
    monitor-exit p0

    return-object v7

    .line 221
    :cond_1
    add-int v7, v6, v0

    if-lt v7, v4, :cond_3

    .line 222
    if-eqz v2, :cond_2

    .line 223
    :try_start_1
    sget-object v7, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;->logger:Ljava/util/logging/Logger;

    const-string v8, "Certificates need to be retrieved to verify consensus"

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 225
    :cond_2
    sget-object v7, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->STATUS_NEED_CERTS:Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;

    goto :goto_1

    .line 227
    :cond_3
    sget-object v7, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->STATUS_FAILED:Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 198
    .end local v0    # "certsNeededCount":I
    .end local v2    # "firstCall":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "required":I
    .end local v5    # "v3Count":I
    .end local v6    # "verifiedCount":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
