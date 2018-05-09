.class Lcom/subgraph/orchid/directory/StateFile$Line;
.super Ljava/lang/Object;
.source "StateFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/directory/StateFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Line"
.end annotation


# instance fields
.field final line:Ljava/lang/String;

.field offset:I

.field final synthetic this$0:Lcom/subgraph/orchid/directory/StateFile;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/directory/StateFile;Ljava/lang/String;)V
    .locals 1
    .param p2, "line"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->this$0:Lcom/subgraph/orchid/directory/StateFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->line:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->offset:I

    .line 41
    return-void
.end method

.method private getChar()C
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->line:Ljava/lang/String;

    iget v1, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private hasChars()Z
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->offset:I

    iget-object v1, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->line:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private incrementOffset(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 52
    iget v0, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->offset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->offset:I

    .line 53
    iget v0, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->offset:I

    iget-object v1, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->line:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->line:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->offset:I

    .line 56
    :cond_0
    return-void
.end method

.method private skipWhitespace()V
    .locals 1

    .prologue
    .line 59
    :goto_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/StateFile$Line;->hasChars()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/subgraph/orchid/directory/StateFile$Line;->getChar()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget v0, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->offset:I

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method nextToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/StateFile$Line;->skipWhitespace()V

    .line 66
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/StateFile$Line;->hasChars()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    const/4 v1, 0x0

    .line 75
    :goto_0
    return-object v1

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v0, "token":Ljava/lang/StringBuilder;
    :goto_1
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/StateFile$Line;->hasChars()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/subgraph/orchid/directory/StateFile$Line;->getChar()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/StateFile$Line;->getChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    iget v1, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->offset:I

    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method parseDate()Ljava/util/Date;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/StateFile$Line;->skipWhitespace()V

    .line 80
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/StateFile$Line;->hasChars()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    .line 88
    :goto_0
    return-object v0

    .line 84
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->this$0:Lcom/subgraph/orchid/directory/StateFile;

    invoke-static {v3}, Lcom/subgraph/orchid/directory/StateFile;->access$000(Lcom/subgraph/orchid/directory/StateFile;)Ljava/text/DateFormat;

    move-result-object v3

    iget-object v4, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->line:Ljava/lang/String;

    iget v5, p0, Lcom/subgraph/orchid/directory/StateFile$Line;->offset:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 85
    .local v0, "date":Ljava/util/Date;
    const/16 v3, 0x13

    invoke-direct {p0, v3}, Lcom/subgraph/orchid/directory/StateFile$Line;->incrementOffset(I)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    .end local v0    # "date":Ljava/util/Date;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/text/ParseException;
    move-object v0, v2

    .line 88
    goto :goto_0
.end method
