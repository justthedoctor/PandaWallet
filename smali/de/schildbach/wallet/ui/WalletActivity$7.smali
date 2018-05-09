.class Lde/schildbach/wallet/ui/WalletActivity$7;
.super Ljava/lang/Object;
.source "WalletActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/WalletActivity;->prepareImportKeysDialog(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/WalletActivity;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/WalletActivity;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletActivity$7;->this$0:Lde/schildbach/wallet/ui/WalletActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 2
    .param p1, "lhs"    # Ljava/io/File;
    .param p2, "rhs"    # Ljava/io/File;

    .prologue
    .line 466
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 462
    check-cast p1, Ljava/io/File;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/io/File;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lde/schildbach/wallet/ui/WalletActivity$7;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
