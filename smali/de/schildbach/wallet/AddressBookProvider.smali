.class public Lde/schildbach/wallet/AddressBookProvider;
.super Landroid/content/ContentProvider;
.source "AddressBookProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/schildbach/wallet/AddressBookProvider$Helper;
    }
.end annotation


# static fields
.field private static final DATABASE_TABLE:Ljava/lang/String; = "address_book"

.field public static final KEY_ADDRESS:Ljava/lang/String; = "address"

.field public static final KEY_LABEL:Ljava/lang/String; = "label"

.field public static final KEY_ROWID:Ljava/lang/String; = "_id"

.field public static final SELECTION_IN:Ljava/lang/String; = "in"

.field public static final SELECTION_NOTIN:Ljava/lang/String; = "notin"

.field public static final SELECTION_QUERY:Ljava/lang/String; = "q"


# instance fields
.field private helper:Lde/schildbach/wallet/AddressBookProvider$Helper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 198
    return-void
.end method

.method private static appendAddresses(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)V
    .locals 5
    .param p0, "qb"    # Landroid/database/sqlite/SQLiteQueryBuilder;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "addresses"    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 190
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 192
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 193
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget-object v4, p1, v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 194
    const-string v4, ","

    invoke-virtual {p0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 190
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "address":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static contentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "address_book"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static resolveLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 55
    const/4 v7, 0x0

    .line 57
    .local v7, "label":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/schildbach/wallet/AddressBookProvider;->contentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 58
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 60
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 62
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "label"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 65
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 68
    :cond_1
    return-object v7
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 123
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 124
    .local v2, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 125
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "address":Ljava/lang/String;
    iget-object v3, p0, Lde/schildbach/wallet/AddressBookProvider;->helper:Lde/schildbach/wallet/AddressBookProvider$Helper;

    invoke-virtual {v3}, Lde/schildbach/wallet/AddressBookProvider$Helper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "address_book"

    const-string v5, "address=?"

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 131
    .local v1, "count":I
    if-lez v1, :cond_1

    .line 132
    invoke-virtual {p0}, Lde/schildbach/wallet/AddressBookProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 134
    :cond_1
    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v6, 0x0

    .line 89
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 90
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 92
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "address":Ljava/lang/String;
    const-string v4, "address"

    invoke-virtual {p2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v4, p0, Lde/schildbach/wallet/AddressBookProvider;->helper:Lde/schildbach/wallet/AddressBookProvider$Helper;

    invoke-virtual {v4}, Lde/schildbach/wallet/AddressBookProvider$Helper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "address_book"

    invoke-virtual {v4, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 97
    .local v1, "rowId":J
    invoke-virtual {p0}, Lde/schildbach/wallet/AddressBookProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lde/schildbach/wallet/AddressBookProvider;->contentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 99
    .local v3, "rowUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lde/schildbach/wallet/AddressBookProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 101
    return-object v3
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lde/schildbach/wallet/AddressBookProvider$Helper;

    invoke-virtual {p0}, Lde/schildbach/wallet/AddressBookProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/schildbach/wallet/AddressBookProvider$Helper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/schildbach/wallet/AddressBookProvider;->helper:Lde/schildbach/wallet/AddressBookProvider$Helper;

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "originalSelection"    # Ljava/lang/String;
    .param p4, "originalSelectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 141
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 142
    .local v1, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "address_book"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v12

    .line 145
    .local v12, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 146
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    :cond_0
    const/4 v4, 0x0

    .line 149
    .local v4, "selection":Ljava/lang/String;
    const/4 v5, 0x0

    .line 151
    .local v5, "selectionArgs":[Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 153
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 155
    .local v9, "address":Ljava/lang/String;
    const-string v2, "address="

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {v1, v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 181
    .end local v9    # "address":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v2, p0, Lde/schildbach/wallet/AddressBookProvider;->helper:Lde/schildbach/wallet/AddressBookProvider$Helper;

    invoke-virtual {v2}, Lde/schildbach/wallet/AddressBookProvider$Helper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p2

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 183
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Lde/schildbach/wallet/AddressBookProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v11, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 185
    return-object v11

    .line 158
    .end local v11    # "cursor":Landroid/database/Cursor;
    :cond_2
    const-string v2, "in"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 160
    const/4 v2, 0x0

    aget-object v2, p4, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 162
    .local v10, "addresses":[Ljava/lang/String;
    const-string v2, "address IN ("

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 163
    invoke-static {v1, v10}, Lde/schildbach/wallet/AddressBookProvider;->appendAddresses(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)V

    .line 164
    const-string v2, ")"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 166
    .end local v10    # "addresses":[Ljava/lang/String;
    :cond_3
    const-string v2, "notin"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 168
    const/4 v2, 0x0

    aget-object v2, p4, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 170
    .restart local v10    # "addresses":[Ljava/lang/String;
    const-string v2, "address NOT IN ("

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 171
    invoke-static {v1, v10}, Lde/schildbach/wallet/AddressBookProvider;->appendAddresses(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;)V

    .line 172
    const-string v2, ")"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 174
    .end local v10    # "addresses":[Ljava/lang/String;
    :cond_4
    const-string v2, "q"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p4, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 177
    .local v13, "query":Ljava/lang/String;
    const-string v4, "address LIKE ? OR label LIKE ?"

    .line 178
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    .end local v5    # "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v13, v5, v2

    const/4 v2, 0x1

    aput-object v13, v5, v2

    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 107
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v5, :cond_0

    .line 108
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "address":Ljava/lang/String;
    iget-object v2, p0, Lde/schildbach/wallet/AddressBookProvider;->helper:Lde/schildbach/wallet/AddressBookProvider$Helper;

    invoke-virtual {v2}, Lde/schildbach/wallet/AddressBookProvider$Helper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "address_book"

    const-string v4, "address=?"

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 114
    .local v1, "count":I
    if-lez v1, :cond_1

    .line 115
    invoke-virtual {p0}, Lde/schildbach/wallet/AddressBookProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 117
    :cond_1
    return v1
.end method
