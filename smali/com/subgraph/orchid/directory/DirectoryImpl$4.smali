.class synthetic Lcom/subgraph/orchid/directory/DirectoryImpl$4;
.super Ljava/lang/Object;
.source "DirectoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/directory/DirectoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$subgraph$orchid$ConsensusDocument$SignatureStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 241
    invoke-static {}, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->values()[Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/subgraph/orchid/directory/DirectoryImpl$4;->$SwitchMap$com$subgraph$orchid$ConsensusDocument$SignatureStatus:[I

    :try_start_0
    sget-object v0, Lcom/subgraph/orchid/directory/DirectoryImpl$4;->$SwitchMap$com$subgraph$orchid$ConsensusDocument$SignatureStatus:[I

    sget-object v1, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->STATUS_FAILED:Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;

    invoke-virtual {v1}, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/subgraph/orchid/directory/DirectoryImpl$4;->$SwitchMap$com$subgraph$orchid$ConsensusDocument$SignatureStatus:[I

    sget-object v1, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->STATUS_VERIFIED:Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;

    invoke-virtual {v1}, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/subgraph/orchid/directory/DirectoryImpl$4;->$SwitchMap$com$subgraph$orchid$ConsensusDocument$SignatureStatus:[I

    sget-object v1, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->STATUS_NEED_CERTS:Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;

    invoke-virtual {v1}, Lcom/subgraph/orchid/ConsensusDocument$SignatureStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
