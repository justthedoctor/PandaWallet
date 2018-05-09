.class synthetic Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser$1;
.super Ljava/lang/Object;
.source "AuthoritySectionParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$subgraph$orchid$directory$consensus$DocumentKeyword:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    invoke-static {}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->values()[Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser$1;->$SwitchMap$com$subgraph$orchid$directory$consensus$DocumentKeyword:[I

    :try_start_0
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser$1;->$SwitchMap$com$subgraph$orchid$directory$consensus$DocumentKeyword:[I

    sget-object v1, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->DIR_SOURCE:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser$1;->$SwitchMap$com$subgraph$orchid$directory$consensus$DocumentKeyword:[I

    sget-object v1, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->CONTACT:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/AuthoritySectionParser$1;->$SwitchMap$com$subgraph$orchid$directory$consensus$DocumentKeyword:[I

    sget-object v1, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->VOTE_DIGEST:Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/consensus/DocumentKeyword;->ordinal()I

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
