.class public Lde/schildbach/wallet/util/AbstractClipboardManager;
.super Ljava/lang/Object;
.source "AbstractClipboardManager.java"


# instance fields
.field clipboardManager:Ljava/lang/Object;

.field sdk:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lde/schildbach/wallet/util/AbstractClipboardManager;->sdk:I

    .line 18
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/util/AbstractClipboardManager;->clipboardManager:Ljava/lang/Object;

    .line 19
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 33
    iget v0, p0, Lde/schildbach/wallet/util/AbstractClipboardManager;->sdk:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 34
    iget-object v0, p0, Lde/schildbach/wallet/util/AbstractClipboardManager;->clipboardManager:Ljava/lang/Object;

    check-cast v0, Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lde/schildbach/wallet/util/AbstractClipboardManager;->clipboardManager:Ljava/lang/Object;

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 2

    .prologue
    .line 41
    iget v0, p0, Lde/schildbach/wallet/util/AbstractClipboardManager;->sdk:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 42
    iget-object v0, p0, Lde/schildbach/wallet/util/AbstractClipboardManager;->clipboardManager:Ljava/lang/Object;

    check-cast v0, Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v0

    .line 44
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lde/schildbach/wallet/util/AbstractClipboardManager;->clipboardManager:Ljava/lang/Object;

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasText()Z

    move-result v0

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 24
    iget v1, p0, Lde/schildbach/wallet/util/AbstractClipboardManager;->sdk:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 25
    iget-object v1, p0, Lde/schildbach/wallet/util/AbstractClipboardManager;->clipboardManager:Ljava/lang/Object;

    check-cast v1, Landroid/text/ClipboardManager;

    invoke-virtual {v1, p2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 30
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-static {p1, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 28
    .local v0, "clip":Landroid/content/ClipData;
    iget-object v1, p0, Lde/schildbach/wallet/util/AbstractClipboardManager;->clipboardManager:Ljava/lang/Object;

    check-cast v1, Landroid/content/ClipboardManager;

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_0
.end method
