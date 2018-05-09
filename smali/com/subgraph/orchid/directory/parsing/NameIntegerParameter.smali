.class public Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;
.super Ljava/lang/Object;
.source "NameIntegerParameter.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;->name:Ljava/lang/String;

    .line 10
    iput p2, p0, Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;->value:I

    .line 11
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
