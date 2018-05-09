.class final Lde/schildbach/wallet/util/CrashReporter$1;
.super Ljava/lang/Object;
.source "CrashReporter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/util/CrashReporter;->appendInstalledPackages(Ljava/lang/Appendable;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/PackageInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)I
    .locals 2
    .param p1, "lhs"    # Landroid/content/pm/PackageInfo;
    .param p2, "rhs"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 187
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 183
    check-cast p1, Landroid/content/pm/PackageInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/PackageInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lde/schildbach/wallet/util/CrashReporter$1;->compare(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)I

    move-result v0

    return v0
.end method
