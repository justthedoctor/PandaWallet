.class public final enum Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
.super Ljava/lang/Enum;
.source "ConsensusDocumentParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DocumentSection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

.field public static final enum AUTHORITY:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

.field public static final enum FOOTER:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

.field public static final enum NO_SECTION:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

.field public static final enum PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

.field public static final enum ROUTER_STATUS:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const-string v1, "NO_SECTION"

    invoke-direct {v0, v1, v2}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->NO_SECTION:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    new-instance v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const-string v1, "PREAMBLE"

    invoke-direct {v0, v1, v3}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    new-instance v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const-string v1, "AUTHORITY"

    invoke-direct {v0, v1, v4}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->AUTHORITY:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    new-instance v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const-string v1, "ROUTER_STATUS"

    invoke-direct {v0, v1, v5}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->ROUTER_STATUS:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    new-instance v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const-string v1, "FOOTER"

    invoke-direct {v0, v1, v6}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->FOOTER:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    sget-object v1, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->NO_SECTION:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->PREAMBLE:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->AUTHORITY:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    aput-object v1, v0, v4

    sget-object v1, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->ROUTER_STATUS:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    aput-object v1, v0, v5

    sget-object v1, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->FOOTER:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    aput-object v1, v0, v6

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->$VALUES:[Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    return-object v0
.end method

.method public static values()[Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->$VALUES:[Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    invoke-virtual {v0}, [Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentParser$DocumentSection;

    return-object v0
.end method
