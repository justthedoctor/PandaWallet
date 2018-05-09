.class Lde/schildbach/wallet/ui/ImportKeysActivity$1;
.super Ljava/lang/Object;
.source "ImportKeysActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/ImportKeysActivity;->createImportKeysDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/ImportKeysActivity;

.field final synthetic val$passwordView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/ImportKeysActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lde/schildbach/wallet/ui/ImportKeysActivity$1;->this$0:Lde/schildbach/wallet/ui/ImportKeysActivity;

    iput-object p2, p0, Lde/schildbach/wallet/ui/ImportKeysActivity$1;->val$passwordView:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 103
    iget-object v3, p0, Lde/schildbach/wallet/ui/ImportKeysActivity$1;->val$passwordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "password":Ljava/lang/String;
    iget-object v3, p0, Lde/schildbach/wallet/ui/ImportKeysActivity$1;->val$passwordView:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :try_start_0
    iget-object v3, p0, Lde/schildbach/wallet/ui/ImportKeysActivity$1;->this$0:Lde/schildbach/wallet/ui/ImportKeysActivity;

    invoke-static {v3}, Lde/schildbach/wallet/ui/ImportKeysActivity;->access$100(Lde/schildbach/wallet/ui/ImportKeysActivity;)Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lde/schildbach/wallet/ui/ImportKeysActivity$1;->this$0:Lde/schildbach/wallet/ui/ImportKeysActivity;

    invoke-static {v4}, Lde/schildbach/wallet/ui/ImportKeysActivity;->access$000(Lde/schildbach/wallet/ui/ImportKeysActivity;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 109
    .local v0, "is":Ljava/io/InputStream;
    iget-object v3, p0, Lde/schildbach/wallet/ui/ImportKeysActivity$1;->this$0:Lde/schildbach/wallet/ui/ImportKeysActivity;

    invoke-static {v3, v0, v1}, Lde/schildbach/wallet/ui/ImportKeysActivity;->access$200(Lde/schildbach/wallet/ui/ImportKeysActivity;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    return-void

    .line 111
    .end local v0    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 114
    .local v2, "x":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
