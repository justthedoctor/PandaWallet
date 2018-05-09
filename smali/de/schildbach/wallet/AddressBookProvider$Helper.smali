.class Lde/schildbach/wallet/AddressBookProvider$Helper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AddressBookProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/AddressBookProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Helper"
.end annotation


# static fields
.field private static final DATABASE_CREATE:Ljava/lang/String; = "CREATE TABLE address_book (_id INTEGER PRIMARY KEY AUTOINCREMENT, address TEXT NOT NULL, label TEXT NULL);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "address_book"

.field private static final DATABASE_VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    const-string v0, "address_book"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 211
    return-void
.end method

.method private upgrade(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I

    .prologue
    .line 238
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 246
    return-void

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 216
    const-string v0, "CREATE TABLE address_book (_id INTEGER PRIMARY KEY AUTOINCREMENT, address TEXT NOT NULL, label TEXT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 225
    move v0, p2

    .local v0, "v":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 226
    :try_start_0
    invoke-direct {p0, p1, v0}, Lde/schildbach/wallet/AddressBookProvider$Helper;->upgrade(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 234
    return-void

    .line 232
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method
