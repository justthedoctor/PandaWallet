.class public Lcom/google/bitcoin/store/H2FullPrunedBlockStore;
.super Ljava/lang/Object;
.source "H2FullPrunedBlockStore.java"

# interfaces
.implements Lcom/google/bitcoin/store/FullPrunedBlockStore;


# static fields
.field static final CHAIN_HEAD_SETTING:Ljava/lang/String; = "chainhead"

.field static final CREATE_HEADERS_TABLE:Ljava/lang/String; = "CREATE TABLE headers ( hash BINARY(28) NOT NULL CONSTRAINT headers_pk PRIMARY KEY,chainWork BLOB NOT NULL,height INT NOT NULL,header BLOB NOT NULL,wasUndoable BOOL NOT NULL)"

.field static final CREATE_OPEN_OUTPUT_TABLE:Ljava/lang/String; = "CREATE TABLE openOutputs (hash BINARY(32) NOT NULL,index INT NOT NULL,height INT NOT NULL,value BLOB NOT NULL,scriptBytes BLOB NOT NULL,PRIMARY KEY (hash, index),)"

.field static final CREATE_SETTINGS_TABLE:Ljava/lang/String; = "CREATE TABLE settings ( name VARCHAR(32) NOT NULL CONSTRAINT settings_pk PRIMARY KEY,value BLOB)"

.field static final CREATE_UNDOABLE_TABLE:Ljava/lang/String; = "CREATE TABLE undoableBlocks ( hash BINARY(28) NOT NULL CONSTRAINT undoableBlocks_pk PRIMARY KEY,height INT NOT NULL,txOutChanges BLOB,transactions BLOB)"

.field static final CREATE_UNDOABLE_TABLE_INDEX:Ljava/lang/String; = "CREATE INDEX heightIndex ON undoableBlocks (height)"

.field static final VERIFIED_CHAIN_HEAD_SETTING:Ljava/lang/String; = "verifiedchainhead"

.field static final VERSION_SETTING:Ljava/lang/String; = "version"

.field static final driver:Ljava/lang/String; = "org.h2.Driver"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private allConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/sql/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private chainHeadBlock:Lcom/google/bitcoin/core/StoredBlock;

.field private chainHeadHash:Lcom/google/bitcoin/core/Sha256Hash;

.field private conn:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/sql/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private connectionURL:Ljava/lang/String;

.field private fullStoreDepth:I

.field private params:Lcom/google/bitcoin/core/NetworkParameters;

.field private verifiedChainHeadBlock:Lcom/google/bitcoin/core/StoredBlock;

.field private verifiedChainHeadHash:Lcom/google/bitcoin/core/Sha256Hash;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/lang/String;I)V
    .locals 3
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "dbName"    # Ljava/lang/String;
    .param p3, "fullStoreDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->params:Lcom/google/bitcoin/core/NetworkParameters;

    .line 98
    iput p3, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->fullStoreDepth:I

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jdbc:h2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";create=true;LOCK_TIMEOUT=60000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->connectionURL:Ljava/lang/String;

    .line 103
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v1, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    .line 104
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->allConnections:Ljava/util/List;

    .line 107
    :try_start_0
    const-string v1, "org.h2.Driver"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 108
    sget-object v1, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    const-string v2, "org.h2.Driver loaded. "

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    invoke-direct {p0}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->maybeConnect()V

    .line 117
    :try_start_1
    const-string v1, "settings"

    invoke-direct {p0, v1}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->tableExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->createTables()V

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->initFromDatabase()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v1, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    const-string v2, "check CLASSPATH for H2 jar "

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 120
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 121
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v1, v0}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/lang/String;II)V
    .locals 4
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "dbName"    # Ljava/lang/String;
    .param p3, "fullStoreDepth"    # I
    .param p4, "cacheSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0, p1, p2, p3}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/lang/String;I)V

    .line 139
    :try_start_0
    iget-object v2, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/sql/Connection;

    invoke-interface {v2}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v1

    .line 140
    .local v1, "s":Ljava/sql/Statement;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SET CACHE_SIZE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 141
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    return-void

    .line 142
    .end local v1    # "s":Ljava/sql/Statement;
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v2, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v2, v0}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private createNewStore(Lcom/google/bitcoin/core/NetworkParameters;)V
    .locals 7
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 250
    :try_start_0
    new-instance v3, Lcom/google/bitcoin/core/StoredBlock;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/NetworkParameters;->getGenesisBlock()Lcom/google/bitcoin/core/Block;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Block;->cloneAsHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/bitcoin/core/NetworkParameters;->getGenesisBlock()Lcom/google/bitcoin/core/Block;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/bitcoin/core/Block;->getWork()Ljava/math/BigInteger;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/bitcoin/core/StoredBlock;-><init>(Lcom/google/bitcoin/core/Block;Ljava/math/BigInteger;I)V

    .line 253
    .local v3, "storedGenesisHeader":Lcom/google/bitcoin/core/StoredBlock;
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v1

    .line 254
    .local v1, "genesisTransactions":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    new-instance v2, Lcom/google/bitcoin/core/StoredUndoableBlock;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/NetworkParameters;->getGenesisBlock()Lcom/google/bitcoin/core/Block;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/google/bitcoin/core/StoredUndoableBlock;-><init>(Lcom/google/bitcoin/core/Sha256Hash;Ljava/util/List;)V

    .line 255
    .local v2, "storedGenesis":Lcom/google/bitcoin/core/StoredUndoableBlock;
    invoke-virtual {p0, v3, v2}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->put(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/StoredUndoableBlock;)V

    .line 256
    invoke-virtual {p0, v3}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->setChainHead(Lcom/google/bitcoin/core/StoredBlock;)V

    .line 257
    invoke-virtual {p0, v3}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->setVerifiedChainHead(Lcom/google/bitcoin/core/StoredBlock;)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    return-void

    .line 258
    .end local v1    # "genesisTransactions":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    .end local v2    # "storedGenesis":Lcom/google/bitcoin/core/StoredUndoableBlock;
    .end local v3    # "storedGenesisHeader":Lcom/google/bitcoin/core/StoredBlock;
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Lcom/google/bitcoin/core/VerificationException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private createTables()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v1, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Connection;

    invoke-interface {v1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    .line 189
    .local v0, "s":Ljava/sql/Statement;
    sget-object v1, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    const-string v2, "H2FullPrunedBlockStore : CREATE headers table"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 190
    const-string v1, "CREATE TABLE headers ( hash BINARY(28) NOT NULL CONSTRAINT headers_pk PRIMARY KEY,chainWork BLOB NOT NULL,height INT NOT NULL,header BLOB NOT NULL,wasUndoable BOOL NOT NULL)"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 192
    sget-object v1, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    const-string v2, "H2FullPrunedBlockStore : CREATE settings table"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 193
    const-string v1, "CREATE TABLE settings ( name VARCHAR(32) NOT NULL CONSTRAINT settings_pk PRIMARY KEY,value BLOB)"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 195
    sget-object v1, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    const-string v2, "H2FullPrunedBlockStore : CREATE undoable block table"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 196
    const-string v1, "CREATE TABLE undoableBlocks ( hash BINARY(28) NOT NULL CONSTRAINT undoableBlocks_pk PRIMARY KEY,height INT NOT NULL,txOutChanges BLOB,transactions BLOB)"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 198
    sget-object v1, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    const-string v2, "H2FullPrunedBlockStore : CREATE undoable block index"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 199
    const-string v1, "CREATE INDEX heightIndex ON undoableBlocks (height)"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 201
    sget-object v1, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    const-string v2, "H2FullPrunedBlockStore : CREATE open output table"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 202
    const-string v1, "CREATE TABLE openOutputs (hash BINARY(32) NOT NULL,index INT NOT NULL,height INT NOT NULL,value BLOB NOT NULL,scriptBytes BLOB NOT NULL,PRIMARY KEY (hash, index),)"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 204
    const-string v1, "INSERT INTO settings(name, value) VALUES(\'chainhead\', NULL)"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 205
    const-string v1, "INSERT INTO settings(name, value) VALUES(\'verifiedchainhead\', NULL)"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 206
    const-string v1, "INSERT INTO settings(name, value) VALUES(\'version\', \'03\')"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 207
    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    .line 208
    iget-object v1, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {p0, v1}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->createNewStore(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 209
    return-void
.end method

.method private initFromDatabase()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 212
    iget-object v3, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/sql/Connection;

    invoke-interface {v3}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2

    .line 213
    .local v2, "s":Ljava/sql/Statement;
    const-string v3, "SHOW TABLES"

    invoke-interface {v2, v3}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    .line 214
    .local v1, "rs":Ljava/sql/ResultSet;
    :cond_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 215
    invoke-interface {v1, v5}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "openOutputsIndex"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    new-instance v3, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v4, "Attempted to open a H2 database with an old schema, please reset database."

    invoke-direct {v3, v4}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 218
    :cond_1
    const-string v3, "SELECT value FROM settings WHERE name = \'chainhead\'"

    invoke-interface {v2, v3}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    .line 219
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-nez v3, :cond_2

    .line 220
    new-instance v3, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v4, "corrupt H2 block store - no chain head pointer"

    invoke-direct {v3, v4}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 222
    :cond_2
    new-instance v0, Lcom/google/bitcoin/core/Sha256Hash;

    invoke-interface {v1, v5}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/bitcoin/core/Sha256Hash;-><init>([B)V

    .line 223
    .local v0, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 224
    invoke-virtual {p0, v0}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->get(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v3

    iput-object v3, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->chainHeadBlock:Lcom/google/bitcoin/core/StoredBlock;

    .line 225
    iput-object v0, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->chainHeadHash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 226
    iget-object v3, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->chainHeadBlock:Lcom/google/bitcoin/core/StoredBlock;

    if-nez v3, :cond_3

    .line 228
    new-instance v3, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v4, "corrupt H2 block store - head block not found"

    invoke-direct {v3, v4}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 231
    :cond_3
    const-string v3, "SELECT value FROM settings WHERE name = \'verifiedchainhead\'"

    invoke-interface {v2, v3}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    .line 232
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-nez v3, :cond_4

    .line 233
    new-instance v3, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v4, "corrupt H2 block store - no verified chain head pointer"

    invoke-direct {v3, v4}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 235
    :cond_4
    new-instance v0, Lcom/google/bitcoin/core/Sha256Hash;

    .end local v0    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    invoke-interface {v1, v5}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/bitcoin/core/Sha256Hash;-><init>([B)V

    .line 236
    .restart local v0    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 237
    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    .line 238
    invoke-virtual {p0, v0}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->get(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v3

    iput-object v3, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->verifiedChainHeadBlock:Lcom/google/bitcoin/core/StoredBlock;

    .line 239
    iput-object v0, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->verifiedChainHeadHash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 240
    iget-object v3, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->verifiedChainHeadBlock:Lcom/google/bitcoin/core/StoredBlock;

    if-nez v3, :cond_5

    .line 242
    new-instance v3, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v4, "corrupt H2 block store - verified head block not found"

    invoke-direct {v3, v4}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 244
    :cond_5
    return-void
.end method

.method private declared-synchronized maybeConnect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 158
    :goto_0
    monitor-exit p0

    return-void

    .line 152
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    iget-object v2, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->connectionURL:Ljava/lang/String;

    invoke-static {v2}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 153
    iget-object v1, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->allConnections:Ljava/util/List;

    iget-object v2, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v1, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Made a new connection to database "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->connectionURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "ex":Ljava/sql/SQLException;
    :try_start_2
    new-instance v1, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v1, v0}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    .end local v0    # "ex":Ljava/sql/SQLException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private putUpdateStoredBlock(Lcom/google/bitcoin/core/StoredBlock;Z)V
    .locals 12
    .param p1, "storedBlock"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p2, "wasUndoable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/16 v7, 0x1c

    .line 350
    :try_start_0
    iget-object v3, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/sql/Connection;

    const-string v4, "INSERT INTO headers(hash, chainWork, height, header, wasUndoable) VALUES(?, ?, ?, ?, ?)"

    invoke-interface {v3, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    .line 354
    .local v2, "s":Ljava/sql/PreparedStatement;
    const/16 v3, 0x1c

    new-array v1, v3, [B

    .line 355
    .local v1, "hashBytes":[B
    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/16 v6, 0x1c

    invoke-static {v3, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 356
    const/4 v3, 0x1

    invoke-interface {v2, v3, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 357
    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getChainWork()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 358
    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v4

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 359
    const/4 v3, 0x4

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Block;->unsafeBitcoinSerialize()[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 360
    const/4 v3, 0x5

    invoke-interface {v2, v3, p2}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    .line 361
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 362
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :goto_0
    return-void

    .line 363
    .end local v1    # "hashBytes":[B
    .end local v2    # "s":Ljava/sql/PreparedStatement;
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v3

    const/16 v4, 0x5bd1

    if-ne v3, v4, :cond_0

    if-nez p2, :cond_1

    .line 367
    :cond_0
    throw v0

    .line 369
    :cond_1
    iget-object v3, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/sql/Connection;

    const-string v4, "UPDATE headers SET wasUndoable=? WHERE hash=?"

    invoke-interface {v3, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    .line 370
    .restart local v2    # "s":Ljava/sql/PreparedStatement;
    invoke-interface {v2, v8, v8}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    .line 372
    new-array v1, v7, [B

    .line 373
    .restart local v1    # "hashBytes":[B
    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v9, v1, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 374
    invoke-interface {v2, v11, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 375
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 376
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    goto :goto_0
.end method

.method private removeUndoableBlocksWhereHeightIsLessThan(I)V
    .locals 4
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 626
    :try_start_0
    iget-object v2, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/sql/Connection;

    const-string v3, "DELETE FROM undoableBlocks WHERE height <= ?"

    invoke-interface {v2, v3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    .line 628
    .local v1, "s":Ljava/sql/PreparedStatement;
    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 629
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 630
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    return-void

    .line 631
    .end local v1    # "s":Ljava/sql/PreparedStatement;
    :catch_0
    move-exception v0

    .line 632
    .local v0, "ex":Ljava/sql/SQLException;
    new-instance v2, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v2, v0}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private tableExists(Ljava/lang/String;)Z
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 264
    iget-object v3, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/sql/Connection;

    invoke-interface {v3}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2

    .line 266
    .local v2, "s":Ljava/sql/Statement;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE 1 = 2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    .line 267
    .local v1, "results":Ljava/sql/ResultSet;
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    const/4 v3, 0x1

    .line 272
    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    .end local v1    # "results":Ljava/sql/ResultSet;
    :goto_0
    return v3

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "ex":Ljava/sql/SQLException;
    const/4 v3, 0x0

    .line 272
    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    goto :goto_0

    .end local v0    # "ex":Ljava/sql/SQLException;
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    throw v3
.end method


# virtual methods
.method public abortDatabaseBatchWrite()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 729
    invoke-direct {p0}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->maybeConnect()V

    .line 731
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Connection;

    invoke-interface {v1}, Ljava/sql/Connection;->rollback()V

    .line 732
    iget-object v1, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Connection;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/sql/Connection;->setAutoCommit(Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    return-void

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v1, v0}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addUnspentTransactionOutput(Lcom/google/bitcoin/core/StoredTransactionOutput;)V
    .locals 5
    .param p1, "out"    # Lcom/google/bitcoin/core/StoredTransactionOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 667
    invoke-direct {p0}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->maybeConnect()V

    .line 668
    const/4 v1, 0x0

    .line 670
    .local v1, "s":Ljava/sql/PreparedStatement;
    :try_start_0
    iget-object v2, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/sql/Connection;

    const-string v3, "INSERT INTO openOutputs (hash, index, height, value, scriptBytes) VALUES (?, ?, ?, ?, ?)"

    invoke-interface {v2, v3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    .line 672
    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 674
    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getIndex()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v2, v3}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 675
    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getHeight()I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 676
    const/4 v2, 0x4

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 677
    const/4 v2, 0x5

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getScriptBytes()[B

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 678
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 679
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    if-eqz v1, :cond_0

    .line 686
    :try_start_1
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 687
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/sql/SQLException;
    new-instance v2, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v2, v0}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 680
    .end local v0    # "e":Ljava/sql/SQLException;
    :catch_1
    move-exception v0

    .line 681
    .restart local v0    # "e":Ljava/sql/SQLException;
    :try_start_2
    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v2

    const/16 v3, 0x5bd1

    if-eq v2, v3, :cond_2

    .line 682
    new-instance v2, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v2, v0}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 684
    .end local v0    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 686
    :try_start_3
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    .line 687
    :cond_1
    throw v2

    .line 684
    .restart local v0    # "e":Ljava/sql/SQLException;
    :cond_2
    if-eqz v1, :cond_0

    .line 686
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 687
    :catch_2
    move-exception v0

    new-instance v2, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v2, v0}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .end local v0    # "e":Ljava/sql/SQLException;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/sql/SQLException;
    new-instance v2, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v2, v0}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public beginDatabaseBatchWrite()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 710
    invoke-direct {p0}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->maybeConnect()V

    .line 712
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Connection;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/sql/Connection;->setAutoCommit(Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    return-void

    .line 713
    :catch_0
    move-exception v0

    .line 714
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v1, v0}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized close()V
    .locals 4

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->allConnections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .local v0, "conn":Ljava/sql/Connection;
    :try_start_1
    invoke-interface {v0}, Ljava/sql/Connection;->rollback()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "ex":Ljava/sql/SQLException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    .end local v0    # "conn":Ljava/sql/Connection;
    .end local v1    # "ex":Ljava/sql/SQLException;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 168
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->allConnections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    monitor-exit p0

    return-void
.end method

.method public commitDatabaseBatchWrite()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 719
    invoke-direct {p0}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->maybeConnect()V

    .line 721
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Connection;

    invoke-interface {v1}, Ljava/sql/Connection;->commit()V

    .line 722
    iget-object v1, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Connection;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/sql/Connection;->setAutoCommit(Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    return-void

    .line 723
    :catch_0
    move-exception v0

    .line 724
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v1, v0}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public dumpSizes()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-direct/range {p0 .. p0}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->maybeConnect()V

    .line 283
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v13}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/sql/Connection;

    invoke-interface {v13}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v4

    .line 284
    .local v4, "s":Ljava/sql/Statement;
    const-wide/16 v7, 0x0

    .line 285
    .local v7, "size":J
    const-wide/16 v9, 0x0

    .line 286
    .local v9, "totalSize":J
    const/4 v2, 0x0

    .line 287
    .local v2, "count":I
    const-string v13, "SELECT name, value FROM settings"

    invoke-interface {v4, v13}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v3

    .line 288
    .local v3, "rs":Ljava/sql/ResultSet;
    :goto_0
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 289
    const/4 v13, 0x1

    invoke-interface {v3, v13}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    int-to-long v13, v13

    add-long/2addr v7, v13

    .line 290
    const/4 v13, 0x2

    invoke-interface {v3, v13}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v13

    array-length v13, v13

    int-to-long v13, v13

    add-long/2addr v7, v13

    .line 291
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 293
    :cond_0
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V

    .line 294
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "Settings size: %d, count: %d, average size: %f%n"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    long-to-double v0, v7

    move-wide/from16 v17, v0

    int-to-double v0, v2

    move-wide/from16 v19, v0

    div-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 296
    add-long/2addr v9, v7

    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    .line 297
    const-string v13, "SELECT chainWork, header FROM headers"

    invoke-interface {v4, v13}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v3

    .line 298
    :goto_1
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 299
    const-wide/16 v13, 0x1c

    add-long/2addr v7, v13

    .line 300
    const/4 v13, 0x1

    invoke-interface {v3, v13}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v13

    array-length v13, v13

    int-to-long v13, v13

    add-long/2addr v7, v13

    .line 301
    const-wide/16 v13, 0x4

    add-long/2addr v7, v13

    .line 302
    const/4 v13, 0x2

    invoke-interface {v3, v13}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v13

    array-length v13, v13

    int-to-long v13, v13

    add-long/2addr v7, v13

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 305
    :cond_1
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V

    .line 306
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "Headers size: %d, count: %d, average size: %f%n"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    long-to-double v0, v7

    move-wide/from16 v17, v0

    int-to-double v0, v2

    move-wide/from16 v19, v0

    div-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 308
    add-long/2addr v9, v7

    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    .line 309
    const-string v13, "SELECT txOutChanges, transactions FROM undoableBlocks"

    invoke-interface {v4, v13}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v3

    .line 310
    :goto_2
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 311
    const-wide/16 v13, 0x1c

    add-long/2addr v7, v13

    .line 312
    const-wide/16 v13, 0x4

    add-long/2addr v7, v13

    .line 313
    const/4 v13, 0x1

    invoke-interface {v3, v13}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v12

    .line 314
    .local v12, "txOutChanges":[B
    const/4 v13, 0x2

    invoke-interface {v3, v13}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v11

    .line 315
    .local v11, "transactions":[B
    if-nez v12, :cond_2

    .line 316
    array-length v13, v11

    int-to-long v13, v13

    add-long/2addr v7, v13

    .line 320
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 321
    goto :goto_2

    .line 318
    :cond_2
    array-length v13, v12

    int-to-long v13, v13

    add-long/2addr v7, v13

    goto :goto_3

    .line 322
    .end local v11    # "transactions":[B
    .end local v12    # "txOutChanges":[B
    :cond_3
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V

    .line 323
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "Undoable Blocks size: %d, count: %d, average size: %f%n"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    long-to-double v0, v7

    move-wide/from16 v17, v0

    int-to-double v0, v2

    move-wide/from16 v19, v0

    div-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 325
    add-long/2addr v9, v7

    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    .line 326
    const-wide/16 v5, 0x0

    .line 327
    .local v5, "scriptSize":J
    const-string v13, "SELECT value, scriptBytes FROM openOutputs"

    invoke-interface {v4, v13}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v3

    .line 328
    :goto_4
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 329
    const-wide/16 v13, 0x20

    add-long/2addr v7, v13

    .line 330
    const-wide/16 v13, 0x4

    add-long/2addr v7, v13

    .line 331
    const-wide/16 v13, 0x4

    add-long/2addr v7, v13

    .line 332
    const/4 v13, 0x1

    invoke-interface {v3, v13}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v13

    array-length v13, v13

    int-to-long v13, v13

    add-long/2addr v7, v13

    .line 333
    const/4 v13, 0x2

    invoke-interface {v3, v13}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v13

    array-length v13, v13

    int-to-long v13, v13

    add-long/2addr v7, v13

    .line 334
    const/4 v13, 0x2

    invoke-interface {v3, v13}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v13

    array-length v13, v13

    int-to-long v13, v13

    add-long/2addr v5, v13

    .line 335
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 337
    :cond_4
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V

    .line 338
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "Open Outputs size: %d, count: %d, average size: %f, average script size: %f (%d in id indexes)%n"

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    long-to-double v0, v7

    move-wide/from16 v17, v0

    int-to-double v0, v2

    move-wide/from16 v19, v0

    div-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    long-to-double v0, v5

    move-wide/from16 v17, v0

    int-to-double v0, v2

    move-wide/from16 v19, v0

    div-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    mul-int/lit8 v17, v2, 0x8

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 341
    add-long/2addr v9, v7

    .line 342
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Total Size: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 344
    invoke-interface {v4}, Ljava/sql/Statement;->close()V

    .line 345
    return-void
.end method

.method public get(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredBlock;
    .locals 1
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 511
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->get(Lcom/google/bitcoin/core/Sha256Hash;Z)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/google/bitcoin/core/Sha256Hash;Z)Lcom/google/bitcoin/core/StoredBlock;
    .locals 13
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .param p2, "wasUndoableOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 465
    iget-object v8, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->chainHeadHash:Lcom/google/bitcoin/core/Sha256Hash;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->chainHeadHash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v8, p1}, Lcom/google/bitcoin/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 466
    iget-object v8, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->chainHeadBlock:Lcom/google/bitcoin/core/StoredBlock;

    .line 503
    :cond_0
    :goto_0
    return-object v8

    .line 467
    :cond_1
    iget-object v8, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->verifiedChainHeadHash:Lcom/google/bitcoin/core/Sha256Hash;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->verifiedChainHeadHash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v8, p1}, Lcom/google/bitcoin/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 468
    iget-object v8, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->verifiedChainHeadBlock:Lcom/google/bitcoin/core/StoredBlock;

    goto :goto_0

    .line 469
    :cond_2
    invoke-direct {p0}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->maybeConnect()V

    .line 470
    const/4 v7, 0x0

    .line 472
    .local v7, "s":Ljava/sql/PreparedStatement;
    :try_start_0
    iget-object v8, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/sql/Connection;

    const-string v10, "SELECT chainWork, height, header, wasUndoable FROM headers WHERE hash = ?"

    invoke-interface {v8, v10}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v7

    .line 474
    const/16 v8, 0x1c

    new-array v4, v8, [B

    .line 475
    .local v4, "hashBytes":[B
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v8

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/16 v12, 0x1c

    invoke-static {v8, v10, v4, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    const/4 v8, 0x1

    invoke-interface {v7, v8, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 477
    invoke-interface {v7}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v6

    .line 478
    .local v6, "results":Ljava/sql/ResultSet;
    invoke-interface {v6}, Ljava/sql/ResultSet;->next()Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_4

    .line 499
    if-eqz v7, :cond_3

    .line 501
    :try_start_1
    invoke-interface {v7}, Ljava/sql/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    move-object v8, v9

    .line 503
    goto :goto_0

    .line 502
    :catch_0
    move-exception v2

    .line 503
    .local v2, "e":Ljava/sql/SQLException;
    new-instance v8, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v9, "Failed to close PreparedStatement"

    invoke-direct {v8, v9}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 482
    .end local v2    # "e":Ljava/sql/SQLException;
    :cond_4
    if-eqz p2, :cond_6

    const/4 v8, 0x4

    :try_start_2
    invoke-interface {v6, v8}, Ljava/sql/ResultSet;->getBoolean(I)Z
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    if-nez v8, :cond_6

    .line 499
    if-eqz v7, :cond_5

    .line 501
    :try_start_3
    invoke-interface {v7}, Ljava/sql/PreparedStatement;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_5
    move-object v8, v9

    .line 503
    goto :goto_0

    .line 502
    :catch_1
    move-exception v2

    .line 503
    .restart local v2    # "e":Ljava/sql/SQLException;
    new-instance v8, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v9, "Failed to close PreparedStatement"

    invoke-direct {v8, v9}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 484
    .end local v2    # "e":Ljava/sql/SQLException;
    :cond_6
    :try_start_4
    new-instance v1, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/math/BigInteger;-><init>([B)V

    .line 485
    .local v1, "chainWork":Ljava/math/BigInteger;
    const/4 v8, 0x2

    invoke-interface {v6, v8}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v5

    .line 486
    .local v5, "height":I
    new-instance v0, Lcom/google/bitcoin/core/Block;

    iget-object v8, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->params:Lcom/google/bitcoin/core/NetworkParameters;

    const/4 v9, 0x3

    invoke-interface {v6, v9}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v9

    invoke-direct {v0, v8, v9}, Lcom/google/bitcoin/core/Block;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    .line 487
    .local v0, "b":Lcom/google/bitcoin/core/Block;
    invoke-virtual {v0}, Lcom/google/bitcoin/core/Block;->verifyHeader()V

    .line 488
    new-instance v8, Lcom/google/bitcoin/core/StoredBlock;

    invoke-direct {v8, v0, v1, v5}, Lcom/google/bitcoin/core/StoredBlock;-><init>(Lcom/google/bitcoin/core/Block;Ljava/math/BigInteger;I)V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 499
    if-eqz v7, :cond_0

    .line 501
    :try_start_5
    invoke-interface {v7}, Ljava/sql/PreparedStatement;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 502
    :catch_2
    move-exception v2

    .line 503
    .restart local v2    # "e":Ljava/sql/SQLException;
    new-instance v8, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v9, "Failed to close PreparedStatement"

    invoke-direct {v8, v9}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 489
    .end local v0    # "b":Lcom/google/bitcoin/core/Block;
    .end local v1    # "chainWork":Ljava/math/BigInteger;
    .end local v2    # "e":Ljava/sql/SQLException;
    .end local v4    # "hashBytes":[B
    .end local v5    # "height":I
    .end local v6    # "results":Ljava/sql/ResultSet;
    :catch_3
    move-exception v3

    .line 490
    .local v3, "ex":Ljava/sql/SQLException;
    :try_start_6
    new-instance v8, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v8, v3}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 499
    .end local v3    # "ex":Ljava/sql/SQLException;
    :catchall_0
    move-exception v8

    if-eqz v7, :cond_7

    .line 501
    :try_start_7
    invoke-interface {v7}, Ljava/sql/PreparedStatement;->close()V
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_6

    .line 503
    :cond_7
    throw v8

    .line 491
    :catch_4
    move-exception v2

    .line 493
    .local v2, "e":Lcom/google/bitcoin/core/ProtocolException;
    :try_start_8
    new-instance v8, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v8, v2}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 494
    .end local v2    # "e":Lcom/google/bitcoin/core/ProtocolException;
    :catch_5
    move-exception v2

    .line 497
    .local v2, "e":Lcom/google/bitcoin/core/VerificationException;
    new-instance v8, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v8, v2}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 502
    .end local v2    # "e":Lcom/google/bitcoin/core/VerificationException;
    :catch_6
    move-exception v2

    .line 503
    .local v2, "e":Ljava/sql/SQLException;
    new-instance v8, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v9, "Failed to close PreparedStatement"

    invoke-direct {v8, v9}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public getChainHead()Lcom/google/bitcoin/core/StoredBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->chainHeadBlock:Lcom/google/bitcoin/core/StoredBlock;

    return-object v0
.end method

.method public getOnceUndoableStoredBlock(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredBlock;
    .locals 1
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 516
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->get(Lcom/google/bitcoin/core/Sha256Hash;Z)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionOutput(Lcom/google/bitcoin/core/Sha256Hash;J)Lcom/google/bitcoin/core/StoredTransactionOutput;
    .locals 12
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .param p2, "index"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 638
    invoke-direct {p0}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->maybeConnect()V

    .line 639
    const/4 v11, 0x0

    .line 641
    .local v11, "s":Ljava/sql/PreparedStatement;
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Connection;

    const-string v1, "SELECT height, value, scriptBytes FROM openOutputs WHERE hash = ? AND index = ?"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v11

    .line 644
    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v1

    invoke-interface {v11, v0, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 646
    const/4 v0, 0x2

    long-to-int v1, p2

    invoke-interface {v11, v0, v1}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 647
    invoke-interface {v11}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v10

    .line 648
    .local v10, "results":Ljava/sql/ResultSet;
    invoke-interface {v10}, Ljava/sql/ResultSet;->next()Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 649
    const/4 v0, 0x0

    .line 659
    if-eqz v11, :cond_0

    .line 661
    :try_start_1
    invoke-interface {v11}, Ljava/sql/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 662
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v8

    .local v8, "e":Ljava/sql/SQLException;
    new-instance v0, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v1, "Failed to close PreparedStatement"

    invoke-direct {v0, v1}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 652
    .end local v8    # "e":Ljava/sql/SQLException;
    :cond_1
    const/4 v0, 0x1

    :try_start_2
    invoke-interface {v10, v0}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v5

    .line 653
    .local v5, "height":I
    new-instance v4, Ljava/math/BigInteger;

    const/4 v0, 0x2

    invoke-interface {v10, v0}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 655
    .local v4, "value":Ljava/math/BigInteger;
    new-instance v0, Lcom/google/bitcoin/core/StoredTransactionOutput;

    const/4 v6, 0x1

    const/4 v1, 0x3

    invoke-interface {v10, v1}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v7

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/bitcoin/core/StoredTransactionOutput;-><init>(Lcom/google/bitcoin/core/Sha256Hash;JLjava/math/BigInteger;IZ[B)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 659
    if-eqz v11, :cond_0

    .line 661
    :try_start_3
    invoke-interface {v11}, Ljava/sql/PreparedStatement;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 662
    :catch_1
    move-exception v8

    .restart local v8    # "e":Ljava/sql/SQLException;
    new-instance v0, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v1, "Failed to close PreparedStatement"

    invoke-direct {v0, v1}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 656
    .end local v4    # "value":Ljava/math/BigInteger;
    .end local v5    # "height":I
    .end local v8    # "e":Ljava/sql/SQLException;
    .end local v10    # "results":Ljava/sql/ResultSet;
    :catch_2
    move-exception v9

    .line 657
    .local v9, "ex":Ljava/sql/SQLException;
    :try_start_4
    new-instance v0, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v0, v9}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 659
    .end local v9    # "ex":Ljava/sql/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_2

    .line 661
    :try_start_5
    invoke-interface {v11}, Ljava/sql/PreparedStatement;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_3

    .line 662
    :cond_2
    throw v0

    :catch_3
    move-exception v8

    .restart local v8    # "e":Ljava/sql/SQLException;
    new-instance v0, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v1, "Failed to close PreparedStatement"

    invoke-direct {v0, v1}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUndoBlock(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredUndoableBlock;
    .locals 23
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 521
    invoke-direct/range {p0 .. p0}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->maybeConnect()V

    .line 522
    const/4 v14, 0x0

    .line 524
    .local v14, "s":Ljava/sql/PreparedStatement;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/sql/Connection;

    const-string v20, "SELECT txOutChanges, transactions FROM undoableBlocks WHERE hash = ?"

    invoke-interface/range {v19 .. v20}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v14

    .line 527
    const/16 v19, 0x1c

    move/from16 v0, v19

    new-array v7, v0, [B

    .line 528
    .local v7, "hashBytes":[B
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v19

    const/16 v20, 0x3

    const/16 v21, 0x0

    const/16 v22, 0x1c

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v14, v0, v7}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 530
    invoke-interface {v14}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v13

    .line 531
    .local v13, "results":Ljava/sql/ResultSet;
    invoke-interface {v13}, Ljava/sql/ResultSet;->next()Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v19

    if-nez v19, :cond_1

    .line 532
    const/4 v4, 0x0

    .line 572
    if-eqz v14, :cond_0

    .line 574
    :try_start_1
    invoke-interface {v14}, Ljava/sql/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 575
    :cond_0
    :goto_0
    return-object v4

    :catch_0
    move-exception v5

    .local v5, "e":Ljava/sql/SQLException;
    new-instance v19, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v20, "Failed to close PreparedStatement"

    invoke-direct/range {v19 .. v20}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 535
    .end local v5    # "e":Ljava/sql/SQLException;
    :cond_1
    const/16 v19, 0x1

    :try_start_2
    move/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v18

    .line 536
    .local v18, "txOutChanges":[B
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v16

    .line 538
    .local v16, "transactions":[B
    if-nez v18, :cond_3

    .line 539
    const/4 v10, 0x0

    .line 540
    .local v10, "offset":I
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "offset":I
    .local v11, "offset":I
    aget-byte v19, v16, v10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x0

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "offset":I
    .restart local v10    # "offset":I
    aget-byte v20, v16, v11

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x8

    or-int v19, v19, v20

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "offset":I
    .restart local v11    # "offset":I
    aget-byte v20, v16, v10

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x10

    or-int v19, v19, v20

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "offset":I
    .restart local v10    # "offset":I
    aget-byte v20, v16, v11

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x18

    or-int v9, v19, v20

    .line 544
    .local v9, "numTxn":I
    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    .line 545
    .local v15, "transactionList":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v9, :cond_2

    .line 546
    new-instance v17, Lcom/google/bitcoin/core/Transaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->params:Lcom/google/bitcoin/core/NetworkParameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v10}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BI)V

    .line 547
    .local v17, "tx":Lcom/google/bitcoin/core/Transaction;
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    invoke-virtual/range {v17 .. v17}, Lcom/google/bitcoin/core/Transaction;->getMessageSize()I

    move-result v19

    add-int v10, v10, v19

    .line 545
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 550
    .end local v17    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_2
    new-instance v4, Lcom/google/bitcoin/core/StoredUndoableBlock;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v15}, Lcom/google/bitcoin/core/StoredUndoableBlock;-><init>(Lcom/google/bitcoin/core/Sha256Hash;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 572
    .end local v8    # "i":I
    .end local v9    # "numTxn":I
    .end local v10    # "offset":I
    .end local v15    # "transactionList":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    .local v4, "block":Lcom/google/bitcoin/core/StoredUndoableBlock;
    :goto_2
    if-eqz v14, :cond_0

    .line 574
    :try_start_3
    invoke-interface {v14}, Ljava/sql/PreparedStatement;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 575
    :catch_1
    move-exception v5

    .restart local v5    # "e":Ljava/sql/SQLException;
    new-instance v19, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v20, "Failed to close PreparedStatement"

    invoke-direct/range {v19 .. v20}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 552
    .end local v4    # "block":Lcom/google/bitcoin/core/StoredUndoableBlock;
    .end local v5    # "e":Ljava/sql/SQLException;
    :cond_3
    :try_start_4
    new-instance v12, Lcom/google/bitcoin/core/TransactionOutputChanges;

    new-instance v19, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Lcom/google/bitcoin/core/TransactionOutputChanges;-><init>(Ljava/io/InputStream;)V

    .line 554
    .local v12, "outChangesObject":Lcom/google/bitcoin/core/TransactionOutputChanges;
    new-instance v4, Lcom/google/bitcoin/core/StoredUndoableBlock;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v12}, Lcom/google/bitcoin/core/StoredUndoableBlock;-><init>(Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/TransactionOutputChanges;)V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v4    # "block":Lcom/google/bitcoin/core/StoredUndoableBlock;
    goto :goto_2

    .line 557
    .end local v4    # "block":Lcom/google/bitcoin/core/StoredUndoableBlock;
    .end local v7    # "hashBytes":[B
    .end local v12    # "outChangesObject":Lcom/google/bitcoin/core/TransactionOutputChanges;
    .end local v13    # "results":Ljava/sql/ResultSet;
    .end local v16    # "transactions":[B
    .end local v18    # "txOutChanges":[B
    :catch_2
    move-exception v6

    .line 558
    .local v6, "ex":Ljava/sql/SQLException;
    :try_start_5
    new-instance v19, Lcom/google/bitcoin/store/BlockStoreException;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 572
    .end local v6    # "ex":Ljava/sql/SQLException;
    :catchall_0
    move-exception v19

    if-eqz v14, :cond_4

    .line 574
    :try_start_6
    invoke-interface {v14}, Ljava/sql/PreparedStatement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_7

    .line 575
    :cond_4
    throw v19

    .line 559
    :catch_3
    move-exception v5

    .line 561
    .local v5, "e":Ljava/lang/NullPointerException;
    :try_start_7
    new-instance v19, Lcom/google/bitcoin/store/BlockStoreException;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v19

    .line 562
    .end local v5    # "e":Ljava/lang/NullPointerException;
    :catch_4
    move-exception v5

    .line 564
    .local v5, "e":Ljava/lang/ClassCastException;
    new-instance v19, Lcom/google/bitcoin/store/BlockStoreException;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v19

    .line 565
    .end local v5    # "e":Ljava/lang/ClassCastException;
    :catch_5
    move-exception v5

    .line 567
    .local v5, "e":Lcom/google/bitcoin/core/ProtocolException;
    new-instance v19, Lcom/google/bitcoin/store/BlockStoreException;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v19

    .line 568
    .end local v5    # "e":Lcom/google/bitcoin/core/ProtocolException;
    :catch_6
    move-exception v5

    .line 570
    .local v5, "e":Ljava/io/IOException;
    new-instance v19, Lcom/google/bitcoin/store/BlockStoreException;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v19
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 575
    .end local v5    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v5

    .local v5, "e":Ljava/sql/SQLException;
    new-instance v19, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v20, "Failed to close PreparedStatement"

    invoke-direct/range {v19 .. v20}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v19
.end method

.method public getVerifiedChainHead()Lcom/google/bitcoin/core/StoredBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 601
    iget-object v0, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->verifiedChainHeadBlock:Lcom/google/bitcoin/core/StoredBlock;

    return-object v0
.end method

.method public hasUnspentOutputs(Lcom/google/bitcoin/core/Sha256Hash;I)Z
    .locals 8
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .param p2, "numOutputs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 739
    invoke-direct {p0}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->maybeConnect()V

    .line 740
    const/4 v4, 0x0

    .line 742
    .local v4, "s":Ljava/sql/PreparedStatement;
    :try_start_0
    iget-object v5, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/sql/Connection;

    const-string v7, "SELECT COUNT(*) FROM openOutputs WHERE hash = ?"

    invoke-interface {v5, v7}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4

    .line 744
    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v7

    invoke-interface {v4, v5, v7}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 745
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v3

    .line 746
    .local v3, "results":Ljava/sql/ResultSet;
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-nez v5, :cond_1

    .line 747
    new-instance v5, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v6, "Got no results from a COUNT(*) query"

    invoke-direct {v5, v6}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    .end local v3    # "results":Ljava/sql/ResultSet;
    :catch_0
    move-exception v2

    .line 752
    .local v2, "ex":Ljava/sql/SQLException;
    :try_start_1
    new-instance v5, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v5, v2}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 754
    .end local v2    # "ex":Ljava/sql/SQLException;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_0

    .line 756
    :try_start_2
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 757
    :cond_0
    throw v5

    .line 749
    .restart local v3    # "results":Ljava/sql/ResultSet;
    :cond_1
    const/4 v5, 0x1

    :try_start_3
    invoke-interface {v3, v5}, Ljava/sql/ResultSet;->getInt(I)I
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    .line 750
    .local v0, "count":I
    if-eqz v0, :cond_3

    move v5, v6

    .line 754
    :goto_0
    if-eqz v4, :cond_2

    .line 756
    :try_start_4
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 757
    :cond_2
    return v5

    .line 750
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 757
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/sql/SQLException;
    new-instance v5, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v6, "Failed to close PreparedStatement"

    invoke-direct {v5, v6}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v0    # "count":I
    .end local v1    # "e":Ljava/sql/SQLException;
    .end local v3    # "results":Ljava/sql/ResultSet;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/sql/SQLException;
    new-instance v5, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v6, "Failed to close PreparedStatement"

    invoke-direct {v5, v6}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public put(Lcom/google/bitcoin/core/StoredBlock;)V
    .locals 2
    .param p1, "storedBlock"    # Lcom/google/bitcoin/core/StoredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->maybeConnect()V

    .line 383
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->putUpdateStoredBlock(Lcom/google/bitcoin/core/StoredBlock;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v1, v0}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public put(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/StoredUndoableBlock;)V
    .locals 17
    .param p1, "storedBlock"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p2, "undoableBlock"    # Lcom/google/bitcoin/core/StoredUndoableBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-direct/range {p0 .. p0}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->maybeConnect()V

    .line 392
    const/16 v13, 0x1c

    new-array v5, v13, [B

    .line 393
    .local v5, "hashBytes":[B
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v13

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x1c

    move/from16 v0, v16

    invoke-static {v13, v14, v5, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v6

    .line 395
    .local v6, "height":I
    const/4 v10, 0x0

    .line 396
    .local v10, "transactions":[B
    const/4 v12, 0x0

    .line 398
    .local v12, "txOutChanges":[B
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 399
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/StoredUndoableBlock;->getTxOutChanges()Lcom/google/bitcoin/core/TransactionOutputChanges;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 400
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/StoredUndoableBlock;->getTxOutChanges()Lcom/google/bitcoin/core/TransactionOutputChanges;

    move-result-object v13

    invoke-virtual {v13, v2}, Lcom/google/bitcoin/core/TransactionOutputChanges;->serializeToStream(Ljava/io/OutputStream;)V

    .line 401
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    .line 412
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v13}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/sql/Connection;

    const-string v14, "INSERT INTO undoableBlocks(hash, height, txOutChanges, transactions) VALUES(?, ?, ?, ?)"

    invoke-interface {v13, v14}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v9

    .line 422
    .local v9, "s":Ljava/sql/PreparedStatement;
    const/4 v13, 0x1

    invoke-interface {v9, v13, v5}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 423
    const/4 v13, 0x2

    invoke-interface {v9, v13, v6}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 424
    if-nez v10, :cond_2

    .line 425
    const/4 v13, 0x3

    invoke-interface {v9, v13, v12}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 426
    const/4 v13, 0x4

    const/16 v14, 0x7d4

    invoke-interface {v9, v13, v14}, Ljava/sql/PreparedStatement;->setNull(II)V

    .line 431
    :goto_1
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 432
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 434
    const/4 v13, 0x1

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->putUpdateStoredBlock(Lcom/google/bitcoin/core/StoredBlock;Z)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_3

    .line 460
    :goto_2
    return-void

    .line 403
    .end local v9    # "s":Ljava/sql/PreparedStatement;
    :cond_0
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/StoredUndoableBlock;->getTransactions()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v8

    .line 404
    .local v8, "numTxn":I
    shr-int/lit8 v13, v8, 0x0

    and-int/lit16 v13, v13, 0xff

    invoke-virtual {v2, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 405
    shr-int/lit8 v13, v8, 0x8

    and-int/lit16 v13, v13, 0xff

    invoke-virtual {v2, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 406
    shr-int/lit8 v13, v8, 0x10

    and-int/lit16 v13, v13, 0xff

    invoke-virtual {v2, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 407
    shr-int/lit8 v13, v8, 0x18

    and-int/lit16 v13, v13, 0xff

    invoke-virtual {v2, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 408
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/StoredUndoableBlock;->getTransactions()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/bitcoin/core/Transaction;

    .line 409
    .local v11, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {v11, v2}, Lcom/google/bitcoin/core/Transaction;->bitcoinSerialize(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 413
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "numTxn":I
    .end local v11    # "tx":Lcom/google/bitcoin/core/Transaction;
    :catch_0
    move-exception v3

    .line 414
    .local v3, "e":Ljava/io/IOException;
    new-instance v13, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v13, v3}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 410
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "numTxn":I
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v10

    goto :goto_0

    .line 428
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "numTxn":I
    .restart local v9    # "s":Ljava/sql/PreparedStatement;
    :cond_2
    const/4 v13, 0x3

    const/16 v14, 0x7d4

    :try_start_5
    invoke-interface {v9, v13, v14}, Ljava/sql/PreparedStatement;->setNull(II)V

    .line 429
    const/4 v13, 0x4

    invoke-interface {v9, v13, v10}, Ljava/sql/PreparedStatement;->setBytes(I[B)V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 438
    .end local v9    # "s":Ljava/sql/PreparedStatement;
    :catch_1
    move-exception v3

    .line 439
    .local v3, "e":Ljava/sql/SQLException;
    :try_start_6
    invoke-virtual {v3}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v13

    const/16 v14, 0x5bd1

    if-eq v13, v14, :cond_3

    .line 440
    new-instance v13, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v13, v3}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v13
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_2

    .line 457
    :catch_2
    move-exception v4

    .line 458
    .local v4, "ex":Ljava/sql/SQLException;
    new-instance v13, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v13, v4}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 435
    .end local v3    # "e":Ljava/sql/SQLException;
    .end local v4    # "ex":Ljava/sql/SQLException;
    .restart local v9    # "s":Ljava/sql/PreparedStatement;
    :catch_3
    move-exception v3

    .line 436
    .restart local v3    # "e":Ljava/sql/SQLException;
    :try_start_7
    new-instance v13, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v13, v3}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v13
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_1

    .line 443
    .end local v9    # "s":Ljava/sql/PreparedStatement;
    :cond_3
    :try_start_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v13}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/sql/Connection;

    const-string v14, "UPDATE undoableBlocks SET txOutChanges=?, transactions=? WHERE hash = ?"

    invoke-interface {v13, v14}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v9

    .line 446
    .restart local v9    # "s":Ljava/sql/PreparedStatement;
    const/4 v13, 0x3

    invoke-interface {v9, v13, v5}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 447
    if-nez v10, :cond_4

    .line 448
    const/4 v13, 0x1

    invoke-interface {v9, v13, v12}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 449
    const/4 v13, 0x2

    const/16 v14, 0x7d4

    invoke-interface {v9, v13, v14}, Ljava/sql/PreparedStatement;->setNull(II)V

    .line 454
    :goto_4
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 455
    invoke-interface {v9}, Ljava/sql/PreparedStatement;->close()V

    goto/16 :goto_2

    .line 451
    :cond_4
    const/4 v13, 0x1

    const/16 v14, 0x7d4

    invoke-interface {v9, v13, v14}, Ljava/sql/PreparedStatement;->setNull(II)V

    .line 452
    const/4 v13, 0x2

    invoke-interface {v9, v13, v10}, Ljava/sql/PreparedStatement;->setBytes(I[B)V
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_4
.end method

.method public removeUnspentTransactionOutput(Lcom/google/bitcoin/core/StoredTransactionOutput;)V
    .locals 6
    .param p1, "out"    # Lcom/google/bitcoin/core/StoredTransactionOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->maybeConnect()V

    .line 694
    :try_start_0
    iget-object v3, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/sql/Connection;

    const-string v4, "DELETE FROM openOutputs WHERE hash = ? AND index = ?"

    invoke-interface {v3, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    .line 696
    .local v1, "s":Ljava/sql/PreparedStatement;
    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 698
    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getIndex()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-interface {v1, v3, v4}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 699
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 700
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->getUpdateCount()I

    move-result v2

    .line 701
    .local v2, "updateCount":I
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    .line 702
    if-nez v2, :cond_0

    .line 703
    new-instance v3, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v4, "Tried to remove a StoredTransactionOutput from H2FullPrunedBlockStore that it didn\'t have!"

    invoke-direct {v3, v4}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    .end local v1    # "s":Ljava/sql/PreparedStatement;
    .end local v2    # "updateCount":I
    :catch_0
    move-exception v0

    .line 705
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v3, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v3, v0}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 707
    .end local v0    # "e":Ljava/sql/SQLException;
    .restart local v1    # "s":Ljava/sql/PreparedStatement;
    .restart local v2    # "updateCount":I
    :cond_0
    return-void
.end method

.method public resetStore()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->maybeConnect()V

    .line 174
    :try_start_0
    iget-object v2, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/sql/Connection;

    invoke-interface {v2}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v1

    .line 175
    .local v1, "s":Ljava/sql/Statement;
    const-string v2, "DROP TABLE settings"

    invoke-interface {v1, v2}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 176
    const-string v2, "DROP TABLE headers"

    invoke-interface {v1, v2}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 177
    const-string v2, "DROP TABLE undoableBlocks"

    invoke-interface {v1, v2}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 178
    const-string v2, "DROP TABLE openOutputs"

    invoke-interface {v1, v2}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 179
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 180
    invoke-direct {p0}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->createTables()V

    .line 181
    invoke-direct {p0}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->initFromDatabase()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    return-void

    .line 182
    .end local v1    # "s":Ljava/sql/Statement;
    :catch_0
    move-exception v0

    .line 183
    .local v0, "ex":Ljava/sql/SQLException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setChainHead(Lcom/google/bitcoin/core/StoredBlock;)V
    .locals 5
    .param p1, "chainHead"    # Lcom/google/bitcoin/core/StoredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 584
    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    .line 585
    .local v1, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    iput-object v1, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->chainHeadHash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 586
    iput-object p1, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->chainHeadBlock:Lcom/google/bitcoin/core/StoredBlock;

    .line 587
    invoke-direct {p0}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->maybeConnect()V

    .line 589
    :try_start_0
    iget-object v3, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/sql/Connection;

    const-string v4, "UPDATE settings SET value = ? WHERE name = ?"

    invoke-interface {v3, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    .line 591
    .local v2, "s":Ljava/sql/PreparedStatement;
    const/4 v3, 0x2

    const-string v4, "chainhead"

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 592
    const/4 v3, 0x1

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 593
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 594
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    return-void

    .line 595
    .end local v2    # "s":Ljava/sql/PreparedStatement;
    :catch_0
    move-exception v0

    .line 596
    .local v0, "ex":Ljava/sql/SQLException;
    new-instance v3, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v3, v0}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setVerifiedChainHead(Lcom/google/bitcoin/core/StoredBlock;)V
    .locals 5
    .param p1, "chainHead"    # Lcom/google/bitcoin/core/StoredBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 605
    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    .line 606
    .local v1, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    iput-object v1, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->verifiedChainHeadHash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 607
    iput-object p1, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->verifiedChainHeadBlock:Lcom/google/bitcoin/core/StoredBlock;

    .line 608
    invoke-direct {p0}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->maybeConnect()V

    .line 610
    :try_start_0
    iget-object v3, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/sql/Connection;

    const-string v4, "UPDATE settings SET value = ? WHERE name = ?"

    invoke-interface {v3, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    .line 612
    .local v2, "s":Ljava/sql/PreparedStatement;
    const/4 v3, 0x2

    const-string v4, "verifiedchainhead"

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 613
    const/4 v3, 0x1

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 614
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 615
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    iget-object v3, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->chainHeadBlock:Lcom/google/bitcoin/core/StoredBlock;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 620
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->setChainHead(Lcom/google/bitcoin/core/StoredBlock;)V

    .line 621
    :cond_0
    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->fullStoreDepth:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/google/bitcoin/store/H2FullPrunedBlockStore;->removeUndoableBlocksWhereHeightIsLessThan(I)V

    .line 622
    return-void

    .line 616
    .end local v2    # "s":Ljava/sql/PreparedStatement;
    :catch_0
    move-exception v0

    .line 617
    .local v0, "ex":Ljava/sql/SQLException;
    new-instance v3, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v3, v0}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
