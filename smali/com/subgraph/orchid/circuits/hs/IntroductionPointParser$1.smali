.class Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser$1;
.super Ljava/lang/Object;
.source "IntroductionPointParser.java"

# interfaces
.implements Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->createParsingHandler()Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser$1;->this$0:Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endOfDocument()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser$1;->this$0:Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser$1;->this$0:Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;

    invoke-static {v1}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->access$100(Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;)Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->access$200(Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;)V

    .line 49
    return-void
.end method

.method public parseKeywordLine()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser$1;->this$0:Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;

    invoke-static {v0}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->access$000(Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;)V

    .line 45
    return-void
.end method
