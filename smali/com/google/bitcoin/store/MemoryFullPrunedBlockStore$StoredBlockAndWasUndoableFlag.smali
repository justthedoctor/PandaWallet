.class public Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;
.super Ljava/lang/Object;
.source "MemoryFullPrunedBlockStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "StoredBlockAndWasUndoableFlag"
.end annotation


# instance fields
.field public block:Lcom/google/bitcoin/core/StoredBlock;

.field public wasUndoable:Z


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/StoredBlock;Z)V
    .locals 0
    .param p1, "block"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p2, "wasUndoable"    # Z

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;->block:Lcom/google/bitcoin/core/StoredBlock;

    iput-boolean p2, p0, Lcom/google/bitcoin/store/MemoryFullPrunedBlockStore$StoredBlockAndWasUndoableFlag;->wasUndoable:Z

    return-void
.end method
