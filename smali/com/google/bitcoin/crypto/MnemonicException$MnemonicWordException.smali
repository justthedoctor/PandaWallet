.class public Lcom/google/bitcoin/crypto/MnemonicException$MnemonicWordException;
.super Lcom/google/bitcoin/crypto/MnemonicException;
.source "MnemonicException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/crypto/MnemonicException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MnemonicWordException"
.end annotation


# instance fields
.field public final badWord:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "badWord"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/bitcoin/crypto/MnemonicException;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/bitcoin/crypto/MnemonicException$MnemonicWordException;->badWord:Ljava/lang/String;

    .line 60
    return-void
.end method
