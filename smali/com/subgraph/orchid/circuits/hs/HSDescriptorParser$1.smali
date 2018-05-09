.class Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser$1;
.super Ljava/lang/Object;
.source "HSDescriptorParser.java"

# interfaces
.implements Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->createParsingHandler()Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;


# direct methods
.method constructor <init>(Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser$1;->this$0:Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endOfDocument()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public parseKeywordLine()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser$1;->this$0:Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;

    invoke-static {v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;->access$000(Lcom/subgraph/orchid/circuits/hs/HSDescriptorParser;)V

    .line 43
    return-void
.end method
