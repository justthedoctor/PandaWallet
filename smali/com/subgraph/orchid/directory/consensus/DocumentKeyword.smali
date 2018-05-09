.class final enum Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;
.super Ljava/lang/Enum;
.source "DocumentKeyword.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum BANDWIDTH_WEIGHTS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum CLIENT_VERSIONS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum CONSENSUS_METHOD:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum CONSENSUS_METHODS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum CONTACT:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum DIRECTORY_FOOTER:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum DIRECTORY_SIGNATURE:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum DIR_SOURCE:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum FRESH_UNTIL:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum KNOWN_FLAGS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum M:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum NETWORK_STATUS_VERSION:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum P:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum PARAMS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum PUBLISHED:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum R:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum S:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum SERVER_VERSIONS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum UNKNOWN_KEYWORD:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum V:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum VALID_AFTER:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum VALID_UNTIL:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final VARIABLE_ARGUMENT_COUNT:I = -0x1

.field public static final enum VOTE_DIGEST:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum VOTE_STATUS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum VOTING_DELAY:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

.field public static final enum W:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;


# instance fields
.field private final argumentCount:I

.field private final consensusOnly:Z

.field private final keyword:Ljava/lang/String;

.field private final section:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

.field private final voteOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 9
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const-string v1, "NETWORK_STATUS_VERSION"

    const/4 v2, 0x0

    const-string v3, "network-status-version"

    sget-object v4, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->NETWORK_STATUS_VERSION:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 10
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const-string v1, "VOTE_STATUS"

    const/4 v2, 0x1

    const-string v3, "vote-status"

    sget-object v4, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->VOTE_STATUS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 11
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const-string v1, "CONSENSUS_METHODS"

    const/4 v2, 0x2

    const-string v3, "consensus-methods"

    sget-object v4, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;IZ)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->CONSENSUS_METHODS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 12
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const-string v1, "CONSENSUS_METHOD"

    const/4 v2, 0x3

    const-string v3, "consensus-method"

    sget-object v4, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;IZZ)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->CONSENSUS_METHOD:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 13
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const-string v1, "PUBLISHED"

    const/4 v2, 0x4

    const-string v3, "published"

    sget-object v4, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;IZ)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->PUBLISHED:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 14
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const-string v1, "VALID_AFTER"

    const/4 v2, 0x5

    const-string v3, "valid-after"

    sget-object v4, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->VALID_AFTER:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 15
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const-string v1, "FRESH_UNTIL"

    const/4 v2, 0x6

    const-string v3, "fresh-until"

    sget-object v4, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->FRESH_UNTIL:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 16
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const-string v1, "VALID_UNTIL"

    const/4 v2, 0x7

    const-string v3, "valid-until"

    sget-object v4, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->VALID_UNTIL:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 17
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const-string v1, "VOTING_DELAY"

    const/16 v2, 0x8

    const-string v3, "voting-delay"

    sget-object v4, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->VOTING_DELAY:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 18
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const-string v1, "CLIENT_VERSIONS"

    const/16 v2, 0x9

    const-string v3, "client-versions"

    sget-object v4, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->CLIENT_VERSIONS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 19
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const-string v1, "SERVER_VERSIONS"

    const/16 v2, 0xa

    const-string v3, "server-versions"

    sget-object v4, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->SERVER_VERSIONS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 20
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const-string v1, "KNOWN_FLAGS"

    const/16 v2, 0xb

    const-string v3, "known-flags"

    sget-object v4, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->KNOWN_FLAGS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 21
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const-string v1, "PARAMS"

    const/16 v2, 0xc

    const-string v3, "params"

    sget-object v4, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->PARAMS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 23
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const-string v1, "DIR_SOURCE"

    const/16 v2, 0xd

    const-string v3, "dir-source"

    sget-object v4, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->AUTHORITY:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const/4 v5, 0x6

    invoke-direct/range {v0 .. v5}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->DIR_SOURCE:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 24
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const-string v1, "CONTACT"

    const/16 v2, 0xe

    const-string v3, "contact"

    sget-object v4, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->AUTHORITY:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->CONTACT:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 25
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const-string v1, "VOTE_DIGEST"

    const/16 v2, 0xf

    const-string v3, "vote-digest"

    sget-object v4, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->AUTHORITY:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;IZZ)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->VOTE_DIGEST:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 27
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const-string v1, "R"

    const/16 v2, 0x10

    const-string v3, "r"

    sget-object v4, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->ROUTER_STATUS:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const/16 v5, 0x8

    invoke-direct/range {v0 .. v5}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->R:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 28
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const-string v1, "S"

    const/16 v2, 0x11

    const-string v3, "s"

    sget-object v4, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->ROUTER_STATUS:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->S:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 29
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const-string v1, "V"

    const/16 v2, 0x12

    const-string v3, "v"

    sget-object v4, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->ROUTER_STATUS:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->V:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 30
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const-string v1, "W"

    const/16 v2, 0x13

    const-string v3, "w"

    sget-object v4, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->ROUTER_STATUS:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->W:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 31
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const-string v1, "P"

    const/16 v2, 0x14

    const-string v3, "p"

    sget-object v4, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->ROUTER_STATUS:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->P:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 32
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const-string v1, "M"

    const/16 v2, 0x15

    const-string v3, "m"

    sget-object v4, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->ROUTER_STATUS:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->M:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 34
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const-string v1, "DIRECTORY_FOOTER"

    const/16 v2, 0x16

    const-string v3, "directory-footer"

    sget-object v4, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->FOOTER:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->DIRECTORY_FOOTER:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 35
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const-string v1, "BANDWIDTH_WEIGHTS"

    const/16 v2, 0x17

    const-string v3, "bandwidth-weights"

    sget-object v4, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->FOOTER:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const/16 v5, 0x13

    invoke-direct/range {v0 .. v5}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->BANDWIDTH_WEIGHTS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 36
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const-string v1, "DIRECTORY_SIGNATURE"

    const/16 v2, 0x18

    const-string v3, "directory-signature"

    sget-object v4, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->FOOTER:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->DIRECTORY_SIGNATURE:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 38
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const-string v1, "UNKNOWN_KEYWORD"

    const/16 v2, 0x19

    const-string v3, "KEYWORD NOT FOUND"

    invoke-direct {v0, v1, v2, v3}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    .line 5
    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    const/4 v1, 0x0

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->NETWORK_STATUS_VERSION:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->VOTE_STATUS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->CONSENSUS_METHODS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->CONSENSUS_METHOD:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->PUBLISHED:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->VALID_AFTER:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->FRESH_UNTIL:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->VALID_UNTIL:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->VOTING_DELAY:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->CLIENT_VERSIONS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->SERVER_VERSIONS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->KNOWN_FLAGS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->PARAMS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->DIR_SOURCE:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->CONTACT:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->VOTE_DIGEST:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->R:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->S:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->V:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->W:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->P:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->M:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->DIRECTORY_FOOTER:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->BANDWIDTH_WEIGHTS:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->DIRECTORY_SIGNATURE:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    aput-object v2, v0, v1

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->$VALUES:[Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->NO_SECTION:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;)V

    .line 52
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;)V
    .locals 6
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "section"    # Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V

    .line 56
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;I)V
    .locals 7
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "section"    # Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
    .param p5, "argumentCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 58
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;IZ)V

    .line 59
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;IZ)V
    .locals 8
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "section"    # Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
    .param p5, "argumentCount"    # I
    .param p6, "voteOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 62
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;IZZ)V

    .line 63
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;IZZ)V
    .locals 0
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "section"    # Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
    .param p5, "argumentCount"    # I
    .param p6, "voteOnly"    # Z
    .param p7, "consensusOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;",
            "IZZ)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput-object p3, p0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->keyword:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->section:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    .line 69
    iput p5, p0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->argumentCount:I

    .line 70
    iput-boolean p6, p0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->voteOnly:Z

    .line 71
    iput-boolean p7, p0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->consensusOnly:Z

    .line 72
    return-void
.end method

.method static findKeyword(Ljava/lang/String;Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;)Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;
    .locals 5
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "section"    # Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    .prologue
    .line 75
    invoke-static {}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->values()[Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    move-result-object v0

    .local v0, "arr$":[Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 76
    .local v2, "k":Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;
    invoke-virtual {v2}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->getKeyword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->getSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    .end local v2    # "k":Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;
    :goto_1
    return-object v2

    .line 75
    .restart local v2    # "k":Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v2    # "k":Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;
    :cond_1
    sget-object v2, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    return-object v0
.end method

.method public static values()[Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->$VALUES:[Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    invoke-virtual {v0}, [Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    return-object v0
.end method


# virtual methods
.method public getArgumentCount()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->argumentCount:I

    return v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getSection()Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->section:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    return-object v0
.end method

.method public isConsensusOnly()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->consensusOnly:Z

    return v0
.end method

.method public isVoteOnly()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->voteOnly:Z

    return v0
.end method
