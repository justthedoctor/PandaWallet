.class public Lcom/subgraph/orchid/directory/StateFile;
.super Ljava/lang/Object;
.source "StateFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/directory/StateFile$Line;
    }
.end annotation


# static fields
.field private static final DATE_LENGTH:I = 0x13

.field static final KEYWORD_ENTRY_GUARD:Ljava/lang/String; = "EntryGuard"

.field static final KEYWORD_ENTRY_GUARD_ADDED_BY:Ljava/lang/String; = "EntryGuardAddedBy"

.field static final KEYWORD_ENTRY_GUARD_DOWN_SINCE:Ljava/lang/String; = "EntryGuardDownSince"

.field static final KEYWORD_ENTRY_GUARD_UNLISTED_SINCE:Ljava/lang/String; = "EntryGuardUnlistedSince"

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final dateFormat:Ljava/text/DateFormat;

.field private final directory:Lcom/subgraph/orchid/Directory;

.field private final directoryStore:Lcom/subgraph/orchid/DirectoryStore;

.field private final guardEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/directory/GuardEntryImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final random:Lcom/subgraph/orchid/crypto/TorRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/subgraph/orchid/directory/StateFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/directory/StateFile;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/DirectoryStore;Lcom/subgraph/orchid/Directory;)V
    .locals 2
    .param p1, "store"    # Lcom/subgraph/orchid/DirectoryStore;
    .param p2, "directory"    # Lcom/subgraph/orchid/Directory;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/StateFile;->guardEntries:Ljava/util/List;

    .line 31
    new-instance v0, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/StateFile;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/StateFile;->dateFormat:Ljava/text/DateFormat;

    .line 101
    iput-object p1, p0, Lcom/subgraph/orchid/directory/StateFile;->directoryStore:Lcom/subgraph/orchid/DirectoryStore;

    .line 102
    iput-object p2, p0, Lcom/subgraph/orchid/directory/StateFile;->directory:Lcom/subgraph/orchid/Directory;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/subgraph/orchid/directory/StateFile;)Ljava/text/DateFormat;
    .locals 1
    .param p0, "x0"    # Lcom/subgraph/orchid/directory/StateFile;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/subgraph/orchid/directory/StateFile;->dateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method private addEntryIfValid(Lcom/subgraph/orchid/directory/GuardEntryImpl;)V
    .locals 1
    .param p1, "entry"    # Lcom/subgraph/orchid/directory/GuardEntryImpl;

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/StateFile;->isValidEntry(Lcom/subgraph/orchid/directory/GuardEntryImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/directory/StateFile;->addGuardEntry(Lcom/subgraph/orchid/GuardEntry;Z)V

    .line 270
    :cond_0
    return-void
.end method

.method private addGuardEntry(Lcom/subgraph/orchid/GuardEntry;Z)V
    .locals 4
    .param p1, "entry"    # Lcom/subgraph/orchid/GuardEntry;
    .param p2, "writeFile"    # Z

    .prologue
    .line 138
    iget-object v3, p0, Lcom/subgraph/orchid/directory/StateFile;->guardEntries:Ljava/util/List;

    monitor-enter v3

    .line 139
    :try_start_0
    iget-object v2, p0, Lcom/subgraph/orchid/directory/StateFile;->guardEntries:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    monitor-exit v3

    .line 151
    :goto_0
    return-void

    .line 142
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/subgraph/orchid/directory/GuardEntryImpl;

    move-object v1, v0

    .line 143
    .local v1, "impl":Lcom/subgraph/orchid/directory/GuardEntryImpl;
    iget-object v2, p0, Lcom/subgraph/orchid/directory/StateFile;->guardEntries:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :try_start_1
    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->setAddedFlag()V

    .line 146
    if-eqz p2, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/StateFile;->writeFile()V

    .line 149
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    :try_start_2
    monitor-exit v3

    goto :goto_0

    .end local v1    # "impl":Lcom/subgraph/orchid/directory/GuardEntryImpl;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 149
    .restart local v1    # "impl":Lcom/subgraph/orchid/directory/GuardEntryImpl;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private isValidEntry(Lcom/subgraph/orchid/directory/GuardEntryImpl;)Z
    .locals 1
    .param p1, "entry"    # Lcom/subgraph/orchid/directory/GuardEntryImpl;

    .prologue
    .line 273
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->getNickname()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->getIdentity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->getCreatedTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadGuardEntries(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 177
    .local v0, "currentEntry":Lcom/subgraph/orchid/directory/GuardEntryImpl;
    :goto_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/StateFile;->readLine(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/StateFile$Line;

    move-result-object v1

    .line 178
    .local v1, "line":Lcom/subgraph/orchid/directory/StateFile$Line;
    if-nez v1, :cond_0

    .line 179
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/StateFile;->addEntryIfValid(Lcom/subgraph/orchid/directory/GuardEntryImpl;)V

    .line 180
    return-void

    .line 182
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/subgraph/orchid/directory/StateFile;->processLine(Lcom/subgraph/orchid/directory/StateFile$Line;Lcom/subgraph/orchid/directory/GuardEntryImpl;)Lcom/subgraph/orchid/directory/GuardEntryImpl;

    move-result-object v0

    .line 183
    goto :goto_0
.end method

.method private processEntryGuardAddedBy(Lcom/subgraph/orchid/directory/StateFile$Line;Lcom/subgraph/orchid/directory/GuardEntryImpl;)V
    .locals 5
    .param p1, "line"    # Lcom/subgraph/orchid/directory/StateFile$Line;
    .param p2, "current"    # Lcom/subgraph/orchid/directory/GuardEntryImpl;

    .prologue
    .line 223
    if-nez p2, :cond_0

    .line 224
    sget-object v3, Lcom/subgraph/orchid/directory/StateFile;->logger:Ljava/util/logging/Logger;

    const-string v4, "EntryGuardAddedBy line seen before EntryGuard in state file"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 236
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/StateFile$Line;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "identity":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/StateFile$Line;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "version":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/StateFile$Line;->parseDate()Ljava/util/Date;

    move-result-object v0

    .line 230
    .local v0, "created":Ljava/util/Date;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_2

    .line 231
    :cond_1
    sget-object v3, Lcom/subgraph/orchid/directory/StateFile;->logger:Ljava/util/logging/Logger;

    const-string v4, "Missing EntryGuardAddedBy field in state file"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_2
    invoke-virtual {p2, v2}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->setVersion(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2, v0}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->setCreatedTime(Ljava/util/Date;)V

    goto :goto_0
.end method

.method private processEntryGuardDownSince(Lcom/subgraph/orchid/directory/StateFile$Line;Lcom/subgraph/orchid/directory/GuardEntryImpl;)V
    .locals 4
    .param p1, "line"    # Lcom/subgraph/orchid/directory/StateFile$Line;
    .param p2, "current"    # Lcom/subgraph/orchid/directory/GuardEntryImpl;

    .prologue
    .line 239
    if-nez p2, :cond_0

    .line 240
    sget-object v2, Lcom/subgraph/orchid/directory/StateFile;->logger:Ljava/util/logging/Logger;

    const-string v3, "EntryGuardDownSince line seen before EntryGuard in state file"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 251
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/StateFile$Line;->parseDate()Ljava/util/Date;

    move-result-object v0

    .line 245
    .local v0, "downSince":Ljava/util/Date;
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/StateFile$Line;->parseDate()Ljava/util/Date;

    move-result-object v1

    .line 246
    .local v1, "lastTried":Ljava/util/Date;
    if-nez v0, :cond_1

    .line 247
    sget-object v2, Lcom/subgraph/orchid/directory/StateFile;->logger:Ljava/util/logging/Logger;

    const-string v3, "Failed to parse date field in EntryGuardDownSince line in state file"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {p2, v0, v1}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->setDownSince(Ljava/util/Date;Ljava/util/Date;)V

    goto :goto_0
.end method

.method private processEntryGuardLine(Lcom/subgraph/orchid/directory/StateFile$Line;)Lcom/subgraph/orchid/directory/GuardEntryImpl;
    .locals 5
    .param p1, "line"    # Lcom/subgraph/orchid/directory/StateFile$Line;

    .prologue
    .line 213
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/StateFile$Line;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/StateFile$Line;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "identity":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    :cond_0
    sget-object v2, Lcom/subgraph/orchid/directory/StateFile;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse EntryGuard line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/subgraph/orchid/directory/StateFile$Line;->line:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 217
    const/4 v2, 0x0

    .line 219
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lcom/subgraph/orchid/directory/GuardEntryImpl;

    iget-object v3, p0, Lcom/subgraph/orchid/directory/StateFile;->directory:Lcom/subgraph/orchid/Directory;

    invoke-direct {v2, v3, p0, v1, v0}, Lcom/subgraph/orchid/directory/GuardEntryImpl;-><init>(Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/directory/StateFile;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processEntryGuardUnlistedSince(Lcom/subgraph/orchid/directory/StateFile$Line;Lcom/subgraph/orchid/directory/GuardEntryImpl;)V
    .locals 3
    .param p1, "line"    # Lcom/subgraph/orchid/directory/StateFile$Line;
    .param p2, "current"    # Lcom/subgraph/orchid/directory/GuardEntryImpl;

    .prologue
    .line 254
    if-nez p2, :cond_0

    .line 255
    sget-object v1, Lcom/subgraph/orchid/directory/StateFile;->logger:Ljava/util/logging/Logger;

    const-string v2, "EntryGuardUnlistedSince line seen before EntryGuard in state file"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 264
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/StateFile$Line;->parseDate()Ljava/util/Date;

    move-result-object v0

    .line 259
    .local v0, "unlistedSince":Ljava/util/Date;
    if-nez v0, :cond_1

    .line 260
    sget-object v1, Lcom/subgraph/orchid/directory/StateFile;->logger:Ljava/util/logging/Logger;

    const-string v2, "Failed to parse date field in EntryGuardUnlistedSince line in state file"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_1
    invoke-virtual {p2, v0}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->setUnlistedSince(Ljava/util/Date;)V

    goto :goto_0
.end method

.method private processLine(Lcom/subgraph/orchid/directory/StateFile$Line;Lcom/subgraph/orchid/directory/GuardEntryImpl;)Lcom/subgraph/orchid/directory/GuardEntryImpl;
    .locals 3
    .param p1, "line"    # Lcom/subgraph/orchid/directory/StateFile$Line;
    .param p2, "current"    # Lcom/subgraph/orchid/directory/GuardEntryImpl;

    .prologue
    .line 187
    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/StateFile$Line;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "keyword":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 208
    .end local p2    # "current":Lcom/subgraph/orchid/directory/GuardEntryImpl;
    :cond_0
    :goto_0
    return-object p2

    .line 190
    .restart local p2    # "current":Lcom/subgraph/orchid/directory/GuardEntryImpl;
    :cond_1
    const-string v2, "EntryGuard"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 191
    invoke-direct {p0, p2}, Lcom/subgraph/orchid/directory/StateFile;->addEntryIfValid(Lcom/subgraph/orchid/directory/GuardEntryImpl;)V

    .line 192
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/StateFile;->processEntryGuardLine(Lcom/subgraph/orchid/directory/StateFile$Line;)Lcom/subgraph/orchid/directory/GuardEntryImpl;

    move-result-object v1

    .line 193
    .local v1, "newEntry":Lcom/subgraph/orchid/directory/GuardEntryImpl;
    if-eqz v1, :cond_0

    move-object p2, v1

    .line 196
    goto :goto_0

    .line 198
    .end local v1    # "newEntry":Lcom/subgraph/orchid/directory/GuardEntryImpl;
    :cond_2
    const-string v2, "EntryGuardAddedBy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/directory/StateFile;->processEntryGuardAddedBy(Lcom/subgraph/orchid/directory/StateFile$Line;Lcom/subgraph/orchid/directory/GuardEntryImpl;)V

    goto :goto_0

    .line 201
    :cond_3
    const-string v2, "EntryGuardDownSince"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/directory/StateFile;->processEntryGuardDownSince(Lcom/subgraph/orchid/directory/StateFile$Line;Lcom/subgraph/orchid/directory/GuardEntryImpl;)V

    goto :goto_0

    .line 204
    :cond_4
    const-string v2, "EntryGuardUnlistedSince"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/directory/StateFile;->processEntryGuardUnlistedSince(Lcom/subgraph/orchid/directory/StateFile$Line;Lcom/subgraph/orchid/directory/GuardEntryImpl;)V

    goto :goto_0
.end method

.method private readLine(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/StateFile$Line;
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 281
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_0

    .line 282
    const/4 v2, 0x0

    .line 294
    :goto_0
    return-object v2

    .line 285
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .local v1, "sb":Ljava/lang/StringBuilder;
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 287
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v0, v2

    .line 288
    .local v0, "c":C
    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 289
    new-instance v2, Lcom/subgraph/orchid/directory/StateFile$Line;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/subgraph/orchid/directory/StateFile$Line;-><init>(Lcom/subgraph/orchid/directory/StateFile;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :cond_2
    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    .line 291
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 294
    .end local v0    # "c":C
    :cond_3
    new-instance v2, Lcom/subgraph/orchid/directory/StateFile$Line;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/subgraph/orchid/directory/StateFile$Line;-><init>(Lcom/subgraph/orchid/directory/StateFile;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addGuardEntry(Lcom/subgraph/orchid/GuardEntry;)V
    .locals 1
    .param p1, "entry"    # Lcom/subgraph/orchid/GuardEntry;

    .prologue
    .line 134
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/directory/StateFile;->addGuardEntry(Lcom/subgraph/orchid/GuardEntry;Z)V

    .line 135
    return-void
.end method

.method public createGuardEntryFor(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/GuardEntry;
    .locals 10
    .param p1, "router"    # Lcom/subgraph/orchid/Router;

    .prologue
    .line 106
    new-instance v2, Lcom/subgraph/orchid/directory/GuardEntryImpl;

    iget-object v4, p0, Lcom/subgraph/orchid/directory/StateFile;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getNickname()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/subgraph/orchid/data/HexDigest;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, p0, v5, v6}, Lcom/subgraph/orchid/directory/GuardEntryImpl;-><init>(Lcom/subgraph/orchid/Directory;Lcom/subgraph/orchid/directory/StateFile;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .local v2, "entry":Lcom/subgraph/orchid/directory/GuardEntryImpl;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/subgraph/orchid/Tor;->getImplementation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/subgraph/orchid/Tor;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "version":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->setVersion(Ljava/lang/String;)V

    .line 115
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/subgraph/orchid/directory/StateFile;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    const v7, 0x278d00

    invoke-virtual {v6, v7}, Lcom/subgraph/orchid/crypto/TorRandom;->nextInt(I)I

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    sub-long v0, v4, v6

    .line 116
    .local v0, "createTime":J
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->setCreatedTime(Ljava/util/Date;)V

    .line 117
    return-object v2
.end method

.method formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/subgraph/orchid/directory/StateFile;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getFileContents()Ljava/nio/ByteBuffer;
    .locals 5

    .prologue
    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/subgraph/orchid/directory/StateFile;->guardEntries:Ljava/util/List;

    monitor-enter v4

    .line 160
    :try_start_0
    iget-object v3, p0, Lcom/subgraph/orchid/directory/StateFile;->guardEntries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/directory/GuardEntryImpl;

    .line 161
    .local v0, "entry":Lcom/subgraph/orchid/directory/GuardEntryImpl;
    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/GuardEntryImpl;->writeToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 163
    .end local v0    # "entry":Lcom/subgraph/orchid/directory/GuardEntryImpl;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/subgraph/orchid/Tor;->getDefaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    return-object v3
.end method

.method public getGuardEntries()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/GuardEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v1, p0, Lcom/subgraph/orchid/directory/StateFile;->guardEntries:Ljava/util/List;

    monitor-enter v1

    .line 122
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/StateFile;->guardEntries:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method parseBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 168
    iget-object v1, p0, Lcom/subgraph/orchid/directory/StateFile;->guardEntries:Ljava/util/List;

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/StateFile;->guardEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 170
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/StateFile;->loadGuardEntries(Ljava/nio/ByteBuffer;)V

    .line 171
    monitor-exit v1

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeGuardEntry(Lcom/subgraph/orchid/GuardEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/subgraph/orchid/GuardEntry;

    .prologue
    .line 127
    iget-object v1, p0, Lcom/subgraph/orchid/directory/StateFile;->guardEntries:Ljava/util/List;

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/StateFile;->guardEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/StateFile;->writeFile()V

    .line 130
    monitor-exit v1

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method writeFile()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/subgraph/orchid/directory/StateFile;->directoryStore:Lcom/subgraph/orchid/DirectoryStore;

    sget-object v1, Lcom/subgraph/orchid/DirectoryStore$CacheFile;->STATE:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/StateFile;->getFileContents()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/subgraph/orchid/DirectoryStore;->writeData(Lcom/subgraph/orchid/DirectoryStore$CacheFile;Ljava/nio/ByteBuffer;)V

    .line 155
    return-void
.end method
