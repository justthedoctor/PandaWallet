.class public Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;
.super Ljava/lang/Object;
.source "PostgresFullPrunedBlockStore.java"

# interfaces
.implements Lcom/google/bitcoin/store/FullPrunedBlockStore;


# static fields
.field private static final CHAIN_HEAD_SETTING:Ljava/lang/String; = "chainhead"

.field private static final CREATE_HEADERS_HASH_INDEX:Ljava/lang/String; = "CREATE INDEX headershashindex ON headers USING btree (hash);"

.field private static final CREATE_HEADERS_TABLE:Ljava/lang/String; = "CREATE TABLE headers (    hash bytea NOT NULL,    chainwork bytea NOT NULL,    height integer NOT NULL,    header bytea NOT NULL,    wasundoable boolean NOT NULL);"

.field private static final CREATE_OPEN_OUTPUT_TABLE:Ljava/lang/String; = "CREATE TABLE openoutputs (    hash bytea NOT NULL,    index integer NOT NULL,    height integer NOT NULL,    value bytea NOT NULL,    scriptbytes bytea NOT NULL,    toaddress character varying(35),    addresstargetable integer);"

.field private static final CREATE_OUTPUTS_ADDRESS_INDEX:Ljava/lang/String; = "CREATE INDEX idx_address ON openoutputs USING btree (hash, index, height, toaddress);"

.field private static final CREATE_OUTPUTS_HASH_INDEX:Ljava/lang/String; = "CREATE INDEX openoutputshash ON openoutputs USING btree (hash);"

.field private static final CREATE_OUTPUTS_HASH_INDEX_INDEX:Ljava/lang/String; = "CREATE INDEX openoutputshashindex ON openoutputs USING btree (hash, index);"

.field private static final CREATE_OUTPUT_ADDRESS_TYPE_INDEX:Ljava/lang/String; = "CREATE INDEX idx_addresstargetable ON openoutputs USING btree (addresstargetable);"

.field private static final CREATE_SETTINGS_TABLE:Ljava/lang/String; = "CREATE TABLE settings (\n    name character varying(32) NOT NULL,\n    value bytea\n);"

.field private static final CREATE_UNDOABLE_HASH_INDEX:Ljava/lang/String; = "CREATE INDEX undoableblockshashindex ON undoableblocks USING btree (hash);"

.field private static final CREATE_UNDOABLE_TABLE:Ljava/lang/String; = "CREATE TABLE undoableblocks (    hash bytea NOT NULL,    height integer NOT NULL,    txoutchanges bytea,    transactions bytea);"

.field private static final CREATE_UNDOABLE_TABLE_INDEX:Ljava/lang/String; = "CREATE INDEX heightIndex ON undoableBlocks (height)"

.field private static final POSTGRES_DUPLICATE_KEY_ERROR_CODE:Ljava/lang/String; = "23505"

.field private static final VERIFIED_CHAIN_HEAD_SETTING:Ljava/lang/String; = "verifiedchainhead"

.field private static final VERSION_SETTING:Ljava/lang/String; = "version"

.field private static final driver:Ljava/lang/String; = "org.postgresql.Driver"

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

.field private password:Ljava/lang/String;

.field private schemaName:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field private verifiedChainHeadBlock:Lcom/google/bitcoin/core/StoredBlock;

.field private verifiedChainHeadHash:Lcom/google/bitcoin/core/Sha256Hash;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "fullStoreDepth"    # I
    .param p3, "hostname"    # Ljava/lang/String;
    .param p4, "dbName"    # Ljava/lang/String;
    .param p5, "username"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jdbc:postgresql://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "fullStoreDepth"    # I
    .param p3, "hostname"    # Ljava/lang/String;
    .param p4, "dbName"    # Ljava/lang/String;
    .param p5, "username"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "schemaName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jdbc:postgresql://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Lcom/google/bitcoin/core/NetworkParameters;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "params"    # Lcom/google/bitcoin/core/NetworkParameters;
    .param p2, "connectionURL"    # Ljava/lang/String;
    .param p3, "fullStoreDepth"    # I
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "schemaName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->params:Lcom/google/bitcoin/core/NetworkParameters;

    .line 162
    iput p3, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->fullStoreDepth:I

    .line 163
    iput-object p2, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->connectionURL:Ljava/lang/String;

    .line 164
    iput-object p6, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->schemaName:Ljava/lang/String;

    .line 166
    iput-object p4, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->username:Ljava/lang/String;

    .line 167
    iput-object p5, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->password:Ljava/lang/String;

    .line 169
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v1, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    .line 170
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->allConnections:Ljava/util/List;

    .line 173
    :try_start_0
    const-string v1, "org.postgresql.Driver"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 174
    sget-object v1, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    const-string v2, "org.postgresql.Driver loaded. "

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    invoke-direct {p0}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->maybeConnect()V

    .line 183
    :try_start_1
    const-string v1, "settings"

    invoke-direct {p0, v1}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->tableExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->createTables()V

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->initFromDatabase()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 189
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v1, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    const-string v2, "check CLASSPATH for Postgres jar "

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 186
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 187
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v1, v0}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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
    .line 318
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

    .line 321
    .local v3, "storedGenesisHeader":Lcom/google/bitcoin/core/StoredBlock;
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v1

    .line 322
    .local v1, "genesisTransactions":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    new-instance v2, Lcom/google/bitcoin/core/StoredUndoableBlock;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/NetworkParameters;->getGenesisBlock()Lcom/google/bitcoin/core/Block;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lcom/google/bitcoin/core/StoredUndoableBlock;-><init>(Lcom/google/bitcoin/core/Sha256Hash;Ljava/util/List;)V

    .line 323
    .local v2, "storedGenesis":Lcom/google/bitcoin/core/StoredUndoableBlock;
    invoke-virtual {p0, v3, v2}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->put(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/StoredUndoableBlock;)V

    .line 324
    invoke-virtual {p0, v3}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->setChainHead(Lcom/google/bitcoin/core/StoredBlock;)V

    .line 325
    invoke-virtual {p0, v3}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->setVerifiedChainHead(Lcom/google/bitcoin/core/StoredBlock;)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    return-void

    .line 326
    .end local v1    # "genesisTransactions":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    .end local v2    # "storedGenesis":Lcom/google/bitcoin/core/StoredUndoableBlock;
    .end local v3    # "storedGenesisHeader":Lcom/google/bitcoin/core/StoredBlock;
    :catch_0
    move-exception v0

    .line 327
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
    .line 248
    iget-object v1, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Connection;

    invoke-interface {v1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    .line 249
    .local v0, "s":Ljava/sql/Statement;
    sget-object v1, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    sget-object v1, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    const-string v2, "PostgresFullPrunedBlockStore : CREATE headers table"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 251
    :cond_0
    const-string v1, "CREATE TABLE headers (    hash bytea NOT NULL,    chainwork bytea NOT NULL,    height integer NOT NULL,    header bytea NOT NULL,    wasundoable boolean NOT NULL);"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 253
    sget-object v1, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    sget-object v1, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    const-string v2, "PostgresFullPrunedBlockStore : CREATE settings table"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 255
    :cond_1
    const-string v1, "CREATE TABLE settings (\n    name character varying(32) NOT NULL,\n    value bytea\n);"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 257
    sget-object v1, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 258
    sget-object v1, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    const-string v2, "PostgresFullPrunedBlockStore : CREATE undoable block table"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 259
    :cond_2
    const-string v1, "CREATE TABLE undoableblocks (    hash bytea NOT NULL,    height integer NOT NULL,    txoutchanges bytea,    transactions bytea);"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 261
    sget-object v1, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 262
    sget-object v1, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    const-string v2, "PostgresFullPrunedBlockStore : CREATE undoable block index"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 263
    :cond_3
    const-string v1, "CREATE INDEX heightIndex ON undoableBlocks (height)"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 264
    sget-object v1, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 265
    sget-object v1, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    const-string v2, "PostgresFullPrunedBlockStore : CREATE open output table"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 266
    :cond_4
    const-string v1, "CREATE TABLE openoutputs (    hash bytea NOT NULL,    index integer NOT NULL,    height integer NOT NULL,    value bytea NOT NULL,    scriptbytes bytea NOT NULL,    toaddress character varying(35),    addresstargetable integer);"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 269
    const-string v1, "CREATE INDEX headershashindex ON headers USING btree (hash);"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 270
    const-string v1, "CREATE INDEX idx_addresstargetable ON openoutputs USING btree (addresstargetable);"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 271
    const-string v1, "CREATE INDEX idx_address ON openoutputs USING btree (hash, index, height, toaddress);"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 272
    const-string v1, "CREATE INDEX openoutputshash ON openoutputs USING btree (hash);"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 273
    const-string v1, "CREATE INDEX openoutputshashindex ON openoutputs USING btree (hash, index);"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 274
    const-string v1, "CREATE INDEX undoableblockshashindex ON undoableblocks USING btree (hash);"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 277
    const-string v1, "INSERT INTO settings(name, value) VALUES(\'chainhead\', NULL)"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 278
    const-string v1, "INSERT INTO settings(name, value) VALUES(\'verifiedchainhead\', NULL)"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 279
    const-string v1, "INSERT INTO settings(name, value) VALUES(\'version\', \'03\')"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 280
    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    .line 281
    iget-object v1, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-direct {p0, v1}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->createNewStore(Lcom/google/bitcoin/core/NetworkParameters;)V

    .line 282
    return-void
.end method

.method private initFromDatabase()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 285
    iget-object v3, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/sql/Connection;

    invoke-interface {v3}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2

    .line 288
    .local v2, "s":Ljava/sql/Statement;
    const-string v3, "SELECT value FROM settings WHERE name = \'chainhead\'"

    invoke-interface {v2, v3}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    .line 289
    .local v1, "rs":Ljava/sql/ResultSet;
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-nez v3, :cond_0

    .line 290
    new-instance v3, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v4, "corrupt Postgres block store - no chain head pointer"

    invoke-direct {v3, v4}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 292
    :cond_0
    new-instance v0, Lcom/google/bitcoin/core/Sha256Hash;

    invoke-interface {v1, v4}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/bitcoin/core/Sha256Hash;-><init>([B)V

    .line 293
    .local v0, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 294
    invoke-virtual {p0, v0}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->get(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v3

    iput-object v3, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->chainHeadBlock:Lcom/google/bitcoin/core/StoredBlock;

    .line 295
    iput-object v0, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->chainHeadHash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 296
    iget-object v3, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->chainHeadBlock:Lcom/google/bitcoin/core/StoredBlock;

    if-nez v3, :cond_1

    .line 297
    new-instance v3, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v4, "corrupt Postgres block store - head block not found"

    invoke-direct {v3, v4}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 300
    :cond_1
    const-string v3, "SELECT value FROM settings WHERE name = \'verifiedchainhead\'"

    invoke-interface {v2, v3}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    .line 301
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-nez v3, :cond_2

    .line 302
    new-instance v3, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v4, "corrupt Postgres block store - no verified chain head pointer"

    invoke-direct {v3, v4}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 304
    :cond_2
    new-instance v0, Lcom/google/bitcoin/core/Sha256Hash;

    .end local v0    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    invoke-interface {v1, v4}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/bitcoin/core/Sha256Hash;-><init>([B)V

    .line 305
    .restart local v0    # "hash":Lcom/google/bitcoin/core/Sha256Hash;
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 306
    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    .line 307
    invoke-virtual {p0, v0}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->get(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v3

    iput-object v3, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->verifiedChainHeadBlock:Lcom/google/bitcoin/core/StoredBlock;

    .line 308
    iput-object v0, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->verifiedChainHeadHash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 309
    iget-object v3, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->verifiedChainHeadBlock:Lcom/google/bitcoin/core/StoredBlock;

    if-nez v3, :cond_3

    .line 310
    new-instance v3, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v4, "corrupt Postgres block store - verified head block not found"

    invoke-direct {v3, v4}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 312
    :cond_3
    return-void
.end method

.method private declared-synchronized maybeConnect()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_0

    .line 216
    :goto_0
    monitor-exit p0

    return-void

    .line 198
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 199
    .local v2, "props":Ljava/util/Properties;
    const-string v4, "user"

    iget-object v5, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->username:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 200
    const-string v4, "password"

    iget-object v5, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->password:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 202
    iget-object v4, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    iget-object v5, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->connectionURL:Ljava/lang/String;

    invoke-static {v5, v2}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 204
    iget-object v4, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Connection;

    .line 206
    .local v0, "connection":Ljava/sql/Connection;
    iget-object v4, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->schemaName:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 207
    invoke-interface {v0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v3

    .line 208
    .local v3, "s":Ljava/sql/Statement;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE SCHEMA IF NOT EXISTS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->schemaName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set search_path to \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->schemaName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\';"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 211
    .end local v3    # "s":Ljava/sql/Statement;
    :cond_1
    iget-object v4, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->allConnections:Ljava/util/List;

    iget-object v5, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v4, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Made a new connection to database "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->connectionURL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 213
    .end local v0    # "connection":Ljava/sql/Connection;
    .end local v2    # "props":Ljava/util/Properties;
    :catch_0
    move-exception v1

    .line 214
    .local v1, "ex":Ljava/sql/SQLException;
    :try_start_2
    new-instance v4, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v4, v1}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    .end local v1    # "ex":Ljava/sql/SQLException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
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

    .line 418
    :try_start_0
    iget-object v3, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/sql/Connection;

    const-string v4, "INSERT INTO headers(hash, chainWork, height, header, wasUndoable) VALUES(?, ?, ?, ?, ?)"

    invoke-interface {v3, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    .line 422
    .local v2, "s":Ljava/sql/PreparedStatement;
    const/16 v3, 0x1c

    new-array v1, v3, [B

    .line 423
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

    .line 424
    const/4 v3, 0x1

    invoke-interface {v2, v3, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 425
    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getChainWork()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 426
    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v4

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 427
    const/4 v3, 0x4

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Block;->unsafeBitcoinSerialize()[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 428
    const/4 v3, 0x5

    invoke-interface {v2, v3, p2}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    .line 429
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 430
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_0
    return-void

    .line 431
    .end local v1    # "hashBytes":[B
    .end local v2    # "s":Ljava/sql/PreparedStatement;
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "23505"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p2, :cond_1

    .line 435
    :cond_0
    throw v0

    .line 437
    :cond_1
    iget-object v3, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/sql/Connection;

    const-string v4, "UPDATE headers SET wasUndoable=? WHERE hash=?"

    invoke-interface {v3, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    .line 438
    .restart local v2    # "s":Ljava/sql/PreparedStatement;
    invoke-interface {v2, v8, v8}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    .line 440
    new-array v1, v7, [B

    .line 441
    .restart local v1    # "hashBytes":[B
    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v9, v1, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    invoke-interface {v2, v11, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 443
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 444
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    goto :goto_0
.end method

.method private removeUndoableBlocksWhereHeightIsLessThan(I)V
    .locals 5
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 716
    :try_start_0
    iget-object v2, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/sql/Connection;

    const-string v3, "DELETE FROM undoableBlocks WHERE height <= ?"

    invoke-interface {v2, v3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    .line 718
    .local v1, "s":Ljava/sql/PreparedStatement;
    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 720
    sget-object v2, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 721
    sget-object v2, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting undoable undoable block with height <= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 724
    :cond_0
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 725
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    return-void

    .line 726
    .end local v1    # "s":Ljava/sql/PreparedStatement;
    :catch_0
    move-exception v0

    .line 727
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
    .line 332
    iget-object v3, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/sql/Connection;

    invoke-interface {v3}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2

    .line 334
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

    .line 335
    .local v1, "results":Ljava/sql/ResultSet;
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    const/4 v3, 0x1

    .line 340
    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    .end local v1    # "results":Ljava/sql/ResultSet;
    :goto_0
    return v3

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "ex":Ljava/sql/SQLException;
    const/4 v3, 0x0

    .line 340
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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 877
    invoke-direct {p0}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->maybeConnect()V

    .line 878
    sget-object v1, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 879
    sget-object v2, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rollback database batch write with connection: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Connection;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 882
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Connection;

    invoke-interface {v1}, Ljava/sql/Connection;->getAutoCommit()Z

    move-result v1

    if-nez v1, :cond_1

    .line 883
    iget-object v1, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Connection;

    invoke-interface {v1}, Ljava/sql/Connection;->rollback()V

    .line 884
    iget-object v1, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Connection;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 891
    :goto_0
    return-void

    .line 886
    :cond_1
    sget-object v1, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    const-string v2, "Warning: Rollback attempt without transaction"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 888
    :catch_0
    move-exception v0

    .line 889
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v1, v0}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addUnspentTransactionOutput(Lcom/google/bitcoin/core/StoredTransactionOutput;)V
    .locals 10
    .param p1, "out"    # Lcom/google/bitcoin/core/StoredTransactionOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 762
    invoke-direct {p0}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->maybeConnect()V

    .line 763
    const/4 v4, 0x0

    .line 766
    .local v4, "s":Ljava/sql/PreparedStatement;
    const-string v0, ""

    .line 767
    .local v0, "dbAddress":Ljava/lang/String;
    const/4 v6, 0x0

    .line 768
    .local v6, "type":I
    const/4 v2, 0x0

    .line 771
    .local v2, "outputScript":Lcom/google/bitcoin/script/Script;
    :try_start_0
    new-instance v3, Lcom/google/bitcoin/script/Script;

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getScriptBytes()[B

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/google/bitcoin/script/Script;-><init>([B)V
    :try_end_0
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "outputScript":Lcom/google/bitcoin/script/Script;
    .local v3, "outputScript":Lcom/google/bitcoin/script/Script;
    move-object v2, v3

    .line 778
    .end local v3    # "outputScript":Lcom/google/bitcoin/script/Script;
    .restart local v2    # "outputScript":Lcom/google/bitcoin/script/Script;
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/bitcoin/script/Script;->isSentToAddress()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v2}, Lcom/google/bitcoin/script/Script;->isSentToRawPubKey()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v2}, Lcom/google/bitcoin/script/Script;->isPayToScriptHash()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 782
    :cond_0
    invoke-virtual {v2}, Lcom/google/bitcoin/script/Script;->isSentToAddress()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 784
    new-instance v5, Lcom/google/bitcoin/core/Address;

    iget-object v7, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v2}, Lcom/google/bitcoin/script/Script;->getPubKeyHash()[B

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lcom/google/bitcoin/core/Address;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    .line 785
    .local v5, "targetAddr":Lcom/google/bitcoin/core/Address;
    invoke-virtual {v5}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v0

    .line 786
    const/4 v6, 0x1

    .line 805
    .end local v5    # "targetAddr":Lcom/google/bitcoin/core/Address;
    :cond_1
    :goto_1
    :try_start_1
    iget-object v7, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/sql/Connection;

    const-string v8, "INSERT INTO openOutputs (hash, index, height, value, scriptBytes, toAddress, addressTargetable) VALUES (?, ?, ?, ?, ?, ?, ?)"

    invoke-interface {v7, v8}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4

    .line 807
    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 809
    const/4 v7, 0x2

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getIndex()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-interface {v4, v7, v8}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 810
    const/4 v7, 0x3

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getHeight()I

    move-result v8

    invoke-interface {v4, v7, v8}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 811
    const/4 v7, 0x4

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 812
    const/4 v7, 0x5

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getScriptBytes()[B

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 813
    const/4 v7, 0x6

    invoke-interface {v4, v7, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 814
    const/4 v7, 0x7

    invoke-interface {v4, v7, v6}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 815
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 816
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 821
    if-eqz v4, :cond_2

    .line 823
    :try_start_2
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 826
    :cond_2
    :goto_2
    return-void

    .line 773
    :catch_0
    move-exception v1

    .line 776
    .local v1, "e":Lcom/google/bitcoin/core/ScriptException;
    sget-object v7, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not parse script for output: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/bitcoin/core/Sha256Hash;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 788
    .end local v1    # "e":Lcom/google/bitcoin/core/ScriptException;
    :cond_3
    invoke-virtual {v2}, Lcom/google/bitcoin/script/Script;->isSentToRawPubKey()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 795
    iget-object v7, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v2, v7}, Lcom/google/bitcoin/script/Script;->getFromAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v0

    .line 796
    const/4 v6, 0x2

    goto/16 :goto_1

    .line 797
    :cond_4
    invoke-virtual {v2}, Lcom/google/bitcoin/script/Script;->isPayToScriptHash()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 799
    iget-object v7, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->params:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v2}, Lcom/google/bitcoin/script/Script;->getPubKeyHash()[B

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/bitcoin/core/Address;->fromP2SHHash(Lcom/google/bitcoin/core/NetworkParameters;[B)Lcom/google/bitcoin/core/Address;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v0

    .line 800
    const/4 v6, 0x3

    goto/16 :goto_1

    .line 824
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/sql/SQLException;
    new-instance v7, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v7, v1}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 817
    .end local v1    # "e":Ljava/sql/SQLException;
    :catch_2
    move-exception v1

    .line 818
    .restart local v1    # "e":Ljava/sql/SQLException;
    :try_start_3
    invoke-virtual {v1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v7

    const-string v8, "23505"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 819
    new-instance v7, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v7, v1}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 821
    .end local v1    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v7

    if-eqz v4, :cond_5

    .line 823
    :try_start_4
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_4

    .line 824
    :cond_5
    throw v7

    .line 821
    .restart local v1    # "e":Ljava/sql/SQLException;
    :cond_6
    if-eqz v4, :cond_2

    .line 823
    :try_start_5
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 824
    :catch_3
    move-exception v1

    new-instance v7, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v7, v1}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .end local v1    # "e":Ljava/sql/SQLException;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/sql/SQLException;
    new-instance v7, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v7, v1}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public beginDatabaseBatchWrite()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 848
    invoke-direct {p0}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->maybeConnect()V

    .line 849
    sget-object v1, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 850
    sget-object v2, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting database batch write with connection: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Connection;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 854
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Connection;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/sql/Connection;->setAutoCommit(Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    return-void

    .line 855
    :catch_0
    move-exception v0

    .line 856
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v1, v0}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public calculateBalanceForAddress(Lcom/google/bitcoin/core/Address;)Ljava/math/BigInteger;
    .locals 6
    .param p1, "address"    # Lcom/google/bitcoin/core/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 924
    invoke-direct {p0}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->maybeConnect()V

    .line 925
    const/4 v3, 0x0

    .line 929
    .local v3, "s":Ljava/sql/PreparedStatement;
    :try_start_0
    iget-object v4, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/sql/Connection;

    const-string v5, "select sum((\'x\'||lpad(substr(value::text, 3, 50),16,\'0\'))::bit(64)::bigint) from openoutputs where toaddress = ?"

    invoke-interface {v4, v5}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3

    .line 931
    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 932
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    .line 933
    .local v2, "rs":Ljava/sql/ResultSet;
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 934
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 942
    if-eqz v3, :cond_0

    .line 944
    :try_start_1
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 946
    :cond_0
    return-object v4

    .line 945
    :catch_0
    move-exception v0

    .line 946
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v4, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v5, "Could not close statement"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 936
    .end local v0    # "e":Ljava/sql/SQLException;
    :cond_1
    :try_start_2
    new-instance v4, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v5, "Failed to execute balance lookup"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 939
    .end local v2    # "rs":Ljava/sql/ResultSet;
    :catch_1
    move-exception v1

    .line 940
    .local v1, "ex":Ljava/sql/SQLException;
    :try_start_3
    new-instance v4, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v4, v1}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 942
    .end local v1    # "ex":Ljava/sql/SQLException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_2

    .line 944
    :try_start_4
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_2

    .line 946
    :cond_2
    throw v4

    .line 945
    :catch_2
    move-exception v0

    .line 946
    .restart local v0    # "e":Ljava/sql/SQLException;
    new-instance v4, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v5, "Could not close statement"

    invoke-direct {v4, v5}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public declared-synchronized close()V
    .locals 4

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->allConnections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    .local v0, "conn":Ljava/sql/Connection;
    :try_start_1
    invoke-interface {v0}, Ljava/sql/Connection;->getAutoCommit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 222
    invoke-interface {v0}, Ljava/sql/Connection;->rollback()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v1

    .line 225
    .local v1, "ex":Ljava/sql/SQLException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    .end local v0    # "conn":Ljava/sql/Connection;
    .end local v1    # "ex":Ljava/sql/SQLException;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 228
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->allConnections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 229
    monitor-exit p0

    return-void
.end method

.method public commitDatabaseBatchWrite()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 861
    invoke-direct {p0}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->maybeConnect()V

    .line 863
    sget-object v1, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 864
    sget-object v2, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Committing database batch write with connection: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Connection;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 868
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Connection;

    invoke-interface {v1}, Ljava/sql/Connection;->commit()V

    .line 869
    iget-object v1, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Connection;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/sql/Connection;->setAutoCommit(Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    return-void

    .line 870
    :catch_0
    move-exception v0

    .line 871
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
    .line 350
    invoke-direct/range {p0 .. p0}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->maybeConnect()V

    .line 351
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v13}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/sql/Connection;

    invoke-interface {v13}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v4

    .line 352
    .local v4, "s":Ljava/sql/Statement;
    const-wide/16 v7, 0x0

    .line 353
    .local v7, "size":J
    const-wide/16 v9, 0x0

    .line 354
    .local v9, "totalSize":J
    const/4 v2, 0x0

    .line 355
    .local v2, "count":I
    const-string v13, "SELECT name, value FROM settings"

    invoke-interface {v4, v13}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v3

    .line 356
    .local v3, "rs":Ljava/sql/ResultSet;
    :goto_0
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 357
    const/4 v13, 0x1

    invoke-interface {v3, v13}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    int-to-long v13, v13

    add-long/2addr v7, v13

    .line 358
    const/4 v13, 0x2

    invoke-interface {v3, v13}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v13

    array-length v13, v13

    int-to-long v13, v13

    add-long/2addr v7, v13

    .line 359
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 361
    :cond_0
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V

    .line 362
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

    .line 364
    add-long/2addr v9, v7

    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    .line 365
    const-string v13, "SELECT chainWork, header FROM headers"

    invoke-interface {v4, v13}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v3

    .line 366
    :goto_1
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 367
    const-wide/16 v13, 0x1c

    add-long/2addr v7, v13

    .line 368
    const/4 v13, 0x1

    invoke-interface {v3, v13}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v13

    array-length v13, v13

    int-to-long v13, v13

    add-long/2addr v7, v13

    .line 369
    const-wide/16 v13, 0x4

    add-long/2addr v7, v13

    .line 370
    const/4 v13, 0x2

    invoke-interface {v3, v13}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v13

    array-length v13, v13

    int-to-long v13, v13

    add-long/2addr v7, v13

    .line 371
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 373
    :cond_1
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V

    .line 374
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

    .line 376
    add-long/2addr v9, v7

    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    .line 377
    const-string v13, "SELECT txOutChanges, transactions FROM undoableBlocks"

    invoke-interface {v4, v13}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v3

    .line 378
    :goto_2
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 379
    const-wide/16 v13, 0x1c

    add-long/2addr v7, v13

    .line 380
    const-wide/16 v13, 0x4

    add-long/2addr v7, v13

    .line 381
    const/4 v13, 0x1

    invoke-interface {v3, v13}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v12

    .line 382
    .local v12, "txOutChanges":[B
    const/4 v13, 0x2

    invoke-interface {v3, v13}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v11

    .line 383
    .local v11, "transactions":[B
    if-nez v12, :cond_2

    .line 384
    array-length v13, v11

    int-to-long v13, v13

    add-long/2addr v7, v13

    .line 388
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 389
    goto :goto_2

    .line 386
    :cond_2
    array-length v13, v12

    int-to-long v13, v13

    add-long/2addr v7, v13

    goto :goto_3

    .line 390
    .end local v11    # "transactions":[B
    .end local v12    # "txOutChanges":[B
    :cond_3
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V

    .line 391
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

    .line 393
    add-long/2addr v9, v7

    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    .line 394
    const-wide/16 v5, 0x0

    .line 395
    .local v5, "scriptSize":J
    const-string v13, "SELECT value, scriptBytes FROM openOutputs"

    invoke-interface {v4, v13}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v3

    .line 396
    :goto_4
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 397
    const-wide/16 v13, 0x20

    add-long/2addr v7, v13

    .line 398
    const-wide/16 v13, 0x4

    add-long/2addr v7, v13

    .line 399
    const-wide/16 v13, 0x4

    add-long/2addr v7, v13

    .line 400
    const/4 v13, 0x1

    invoke-interface {v3, v13}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v13

    array-length v13, v13

    int-to-long v13, v13

    add-long/2addr v7, v13

    .line 401
    const/4 v13, 0x2

    invoke-interface {v3, v13}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v13

    array-length v13, v13

    int-to-long v13, v13

    add-long/2addr v7, v13

    .line 402
    const/4 v13, 0x2

    invoke-interface {v3, v13}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v13

    array-length v13, v13

    int-to-long v13, v13

    add-long/2addr v5, v13

    .line 403
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 405
    :cond_4
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V

    .line 406
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

    .line 409
    add-long/2addr v9, v7

    .line 410
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

    .line 412
    invoke-interface {v4}, Ljava/sql/Statement;->close()V

    .line 413
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

    .prologue
    .line 602
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->get(Lcom/google/bitcoin/core/Sha256Hash;Z)Lcom/google/bitcoin/core/StoredBlock;

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

    .prologue
    const/4 v8, 0x0

    .line 556
    iget-object v9, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->chainHeadHash:Lcom/google/bitcoin/core/Sha256Hash;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->chainHeadHash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v9, p1}, Lcom/google/bitcoin/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 557
    iget-object v8, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->chainHeadBlock:Lcom/google/bitcoin/core/StoredBlock;

    .line 597
    :cond_0
    :goto_0
    return-object v8

    .line 558
    :cond_1
    iget-object v9, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->verifiedChainHeadHash:Lcom/google/bitcoin/core/Sha256Hash;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->verifiedChainHeadHash:Lcom/google/bitcoin/core/Sha256Hash;

    invoke-virtual {v9, p1}, Lcom/google/bitcoin/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 559
    iget-object v8, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->verifiedChainHeadBlock:Lcom/google/bitcoin/core/StoredBlock;

    goto :goto_0

    .line 560
    :cond_2
    invoke-direct {p0}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->maybeConnect()V

    .line 561
    const/4 v7, 0x0

    .line 563
    .local v7, "s":Ljava/sql/PreparedStatement;
    :try_start_0
    iget-object v9, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v9}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/sql/Connection;

    const-string v10, "SELECT chainWork, height, header, wasUndoable FROM headers WHERE hash = ?"

    invoke-interface {v9, v10}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v7

    .line 566
    const/16 v9, 0x1c

    new-array v4, v9, [B

    .line 567
    .local v4, "hashBytes":[B
    invoke-virtual {p1}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v9

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/16 v12, 0x1c

    invoke-static {v9, v10, v4, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 568
    const/4 v9, 0x1

    invoke-interface {v7, v9, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 569
    invoke-interface {v7}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v6

    .line 570
    .local v6, "results":Ljava/sql/ResultSet;
    invoke-interface {v6}, Ljava/sql/ResultSet;->next()Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-nez v9, :cond_3

    .line 594
    if-eqz v7, :cond_0

    .line 596
    :try_start_1
    invoke-interface {v7}, Ljava/sql/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 597
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/sql/SQLException;
    new-instance v9, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v10, "Failed to close PreparedStatement"

    invoke-direct {v9, v10}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 575
    .end local v2    # "e":Ljava/sql/SQLException;
    :cond_3
    if-eqz p2, :cond_4

    const/4 v9, 0x4

    :try_start_2
    invoke-interface {v6, v9}, Ljava/sql/ResultSet;->getBoolean(I)Z
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    if-nez v9, :cond_4

    .line 594
    if-eqz v7, :cond_0

    .line 596
    :try_start_3
    invoke-interface {v7}, Ljava/sql/PreparedStatement;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 597
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/sql/SQLException;
    new-instance v9, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v10, "Failed to close PreparedStatement"

    invoke-direct {v9, v10}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 578
    .end local v2    # "e":Ljava/sql/SQLException;
    :cond_4
    :try_start_4
    new-instance v1, Ljava/math/BigInteger;

    const/4 v9, 0x1

    invoke-interface {v6, v9}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/math/BigInteger;-><init>([B)V

    .line 579
    .local v1, "chainWork":Ljava/math/BigInteger;
    const/4 v9, 0x2

    invoke-interface {v6, v9}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v5

    .line 580
    .local v5, "height":I
    new-instance v0, Lcom/google/bitcoin/core/Block;

    iget-object v9, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->params:Lcom/google/bitcoin/core/NetworkParameters;

    const/4 v10, 0x3

    invoke-interface {v6, v10}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v10

    invoke-direct {v0, v9, v10}, Lcom/google/bitcoin/core/Block;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[B)V

    .line 581
    .local v0, "b":Lcom/google/bitcoin/core/Block;
    invoke-virtual {v0}, Lcom/google/bitcoin/core/Block;->verifyHeader()V

    .line 582
    new-instance v8, Lcom/google/bitcoin/core/StoredBlock;

    invoke-direct {v8, v0, v1, v5}, Lcom/google/bitcoin/core/StoredBlock;-><init>(Lcom/google/bitcoin/core/Block;Ljava/math/BigInteger;I)V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/bitcoin/core/ProtocolException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/google/bitcoin/core/VerificationException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 594
    .local v8, "stored":Lcom/google/bitcoin/core/StoredBlock;
    if-eqz v7, :cond_0

    .line 596
    :try_start_5
    invoke-interface {v7}, Ljava/sql/PreparedStatement;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 597
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/sql/SQLException;
    new-instance v9, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v10, "Failed to close PreparedStatement"

    invoke-direct {v9, v10}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 584
    .end local v0    # "b":Lcom/google/bitcoin/core/Block;
    .end local v1    # "chainWork":Ljava/math/BigInteger;
    .end local v2    # "e":Ljava/sql/SQLException;
    .end local v4    # "hashBytes":[B
    .end local v5    # "height":I
    .end local v6    # "results":Ljava/sql/ResultSet;
    .end local v8    # "stored":Lcom/google/bitcoin/core/StoredBlock;
    :catch_3
    move-exception v3

    .line 585
    .local v3, "ex":Ljava/sql/SQLException;
    :try_start_6
    new-instance v9, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v9, v3}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 594
    .end local v3    # "ex":Ljava/sql/SQLException;
    :catchall_0
    move-exception v9

    if-eqz v7, :cond_5

    .line 596
    :try_start_7
    invoke-interface {v7}, Ljava/sql/PreparedStatement;->close()V
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_6

    .line 597
    :cond_5
    throw v9

    .line 586
    :catch_4
    move-exception v2

    .line 588
    .local v2, "e":Lcom/google/bitcoin/core/ProtocolException;
    :try_start_8
    new-instance v9, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v9, v2}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 589
    .end local v2    # "e":Lcom/google/bitcoin/core/ProtocolException;
    :catch_5
    move-exception v2

    .line 592
    .local v2, "e":Lcom/google/bitcoin/core/VerificationException;
    new-instance v9, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v9, v2}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 597
    .end local v2    # "e":Lcom/google/bitcoin/core/VerificationException;
    :catch_6
    move-exception v2

    .local v2, "e":Ljava/sql/SQLException;
    new-instance v9, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v10, "Failed to close PreparedStatement"

    invoke-direct {v9, v10}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public getChainHead()Lcom/google/bitcoin/core/StoredBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 670
    iget-object v0, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->chainHeadBlock:Lcom/google/bitcoin/core/StoredBlock;

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

    .prologue
    .line 606
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->get(Lcom/google/bitcoin/core/Sha256Hash;Z)Lcom/google/bitcoin/core/StoredBlock;

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

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->maybeConnect()V

    .line 733
    const/4 v11, 0x0

    .line 735
    .local v11, "s":Ljava/sql/PreparedStatement;
    :try_start_0
    iget-object v1, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Connection;

    const-string v2, "SELECT height, value, scriptBytes FROM openOutputs WHERE hash = ? AND index = ?"

    invoke-interface {v1, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v11

    .line 738
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v2

    invoke-interface {v11, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 740
    const/4 v1, 0x2

    long-to-int v2, p2

    invoke-interface {v11, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 741
    invoke-interface {v11}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v10

    .line 742
    .local v10, "results":Ljava/sql/ResultSet;
    invoke-interface {v10}, Ljava/sql/ResultSet;->next()Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 743
    const/4 v0, 0x0

    .line 754
    if-eqz v11, :cond_0

    .line 756
    :try_start_1
    invoke-interface {v11}, Ljava/sql/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 757
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v8

    .local v8, "e":Ljava/sql/SQLException;
    new-instance v1, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v2, "Failed to close PreparedStatement"

    invoke-direct {v1, v2}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 746
    .end local v8    # "e":Ljava/sql/SQLException;
    :cond_1
    const/4 v1, 0x1

    :try_start_2
    invoke-interface {v10, v1}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v5

    .line 747
    .local v5, "height":I
    new-instance v4, Ljava/math/BigInteger;

    const/4 v1, 0x2

    invoke-interface {v10, v1}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 749
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

    .line 754
    .local v0, "txout":Lcom/google/bitcoin/core/StoredTransactionOutput;
    if-eqz v11, :cond_0

    .line 756
    :try_start_3
    invoke-interface {v11}, Ljava/sql/PreparedStatement;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 757
    :catch_1
    move-exception v8

    .restart local v8    # "e":Ljava/sql/SQLException;
    new-instance v1, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v2, "Failed to close PreparedStatement"

    invoke-direct {v1, v2}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 751
    .end local v0    # "txout":Lcom/google/bitcoin/core/StoredTransactionOutput;
    .end local v4    # "value":Ljava/math/BigInteger;
    .end local v5    # "height":I
    .end local v8    # "e":Ljava/sql/SQLException;
    .end local v10    # "results":Ljava/sql/ResultSet;
    :catch_2
    move-exception v9

    .line 752
    .local v9, "ex":Ljava/sql/SQLException;
    :try_start_4
    new-instance v1, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v1, v9}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 754
    .end local v9    # "ex":Ljava/sql/SQLException;
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_2

    .line 756
    :try_start_5
    invoke-interface {v11}, Ljava/sql/PreparedStatement;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_3

    .line 757
    :cond_2
    throw v1

    :catch_3
    move-exception v8

    .restart local v8    # "e":Ljava/sql/SQLException;
    new-instance v1, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v2, "Failed to close PreparedStatement"

    invoke-direct {v1, v2}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getUndoBlock(Lcom/google/bitcoin/core/Sha256Hash;)Lcom/google/bitcoin/core/StoredUndoableBlock;
    .locals 23
    .param p1, "hash"    # Lcom/google/bitcoin/core/Sha256Hash;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 610
    invoke-direct/range {p0 .. p0}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->maybeConnect()V

    .line 611
    const/4 v14, 0x0

    .line 613
    .local v14, "s":Ljava/sql/PreparedStatement;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/sql/Connection;

    const-string v20, "SELECT txOutChanges, transactions FROM undoableBlocks WHERE hash = ?"

    invoke-interface/range {v19 .. v20}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v14

    .line 617
    const/16 v19, 0x1c

    move/from16 v0, v19

    new-array v7, v0, [B

    .line 618
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

    .line 619
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v14, v0, v7}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 620
    invoke-interface {v14}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v13

    .line 621
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

    .line 622
    const/4 v4, 0x0

    .line 662
    if-eqz v14, :cond_0

    .line 664
    :try_start_1
    invoke-interface {v14}, Ljava/sql/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 665
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

    .line 625
    .end local v5    # "e":Ljava/sql/SQLException;
    :cond_1
    const/16 v19, 0x1

    :try_start_2
    move/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v18

    .line 626
    .local v18, "txOutChanges":[B
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v16

    .line 628
    .local v16, "transactions":[B
    if-nez v18, :cond_3

    .line 629
    const/4 v10, 0x0

    .line 630
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

    .line 634
    .local v9, "numTxn":I
    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    .line 635
    .local v15, "transactionList":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v9, :cond_2

    .line 636
    new-instance v17, Lcom/google/bitcoin/core/Transaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->params:Lcom/google/bitcoin/core/NetworkParameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v10}, Lcom/google/bitcoin/core/Transaction;-><init>(Lcom/google/bitcoin/core/NetworkParameters;[BI)V

    .line 637
    .local v17, "tx":Lcom/google/bitcoin/core/Transaction;
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    invoke-virtual/range {v17 .. v17}, Lcom/google/bitcoin/core/Transaction;->getMessageSize()I

    move-result v19

    add-int v10, v10, v19

    .line 635
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 640
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

    .line 662
    .end local v8    # "i":I
    .end local v9    # "numTxn":I
    .end local v10    # "offset":I
    .end local v15    # "transactionList":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/Transaction;>;"
    .local v4, "block":Lcom/google/bitcoin/core/StoredUndoableBlock;
    :goto_2
    if-eqz v14, :cond_0

    .line 664
    :try_start_3
    invoke-interface {v14}, Ljava/sql/PreparedStatement;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 665
    :catch_1
    move-exception v5

    .restart local v5    # "e":Ljava/sql/SQLException;
    new-instance v19, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v20, "Failed to close PreparedStatement"

    invoke-direct/range {v19 .. v20}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 642
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

    .line 644
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

    .line 647
    .end local v4    # "block":Lcom/google/bitcoin/core/StoredUndoableBlock;
    .end local v7    # "hashBytes":[B
    .end local v12    # "outChangesObject":Lcom/google/bitcoin/core/TransactionOutputChanges;
    .end local v13    # "results":Ljava/sql/ResultSet;
    .end local v16    # "transactions":[B
    .end local v18    # "txOutChanges":[B
    :catch_2
    move-exception v6

    .line 648
    .local v6, "ex":Ljava/sql/SQLException;
    :try_start_5
    new-instance v19, Lcom/google/bitcoin/store/BlockStoreException;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 662
    .end local v6    # "ex":Ljava/sql/SQLException;
    :catchall_0
    move-exception v19

    if-eqz v14, :cond_4

    .line 664
    :try_start_6
    invoke-interface {v14}, Ljava/sql/PreparedStatement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_7

    .line 665
    :cond_4
    throw v19

    .line 649
    :catch_3
    move-exception v5

    .line 651
    .local v5, "e":Ljava/lang/NullPointerException;
    :try_start_7
    new-instance v19, Lcom/google/bitcoin/store/BlockStoreException;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v19

    .line 652
    .end local v5    # "e":Ljava/lang/NullPointerException;
    :catch_4
    move-exception v5

    .line 654
    .local v5, "e":Ljava/lang/ClassCastException;
    new-instance v19, Lcom/google/bitcoin/store/BlockStoreException;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v19

    .line 655
    .end local v5    # "e":Ljava/lang/ClassCastException;
    :catch_5
    move-exception v5

    .line 657
    .local v5, "e":Lcom/google/bitcoin/core/ProtocolException;
    new-instance v19, Lcom/google/bitcoin/store/BlockStoreException;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v19

    .line 658
    .end local v5    # "e":Lcom/google/bitcoin/core/ProtocolException;
    :catch_6
    move-exception v5

    .line 660
    .local v5, "e":Ljava/io/IOException;
    new-instance v19, Lcom/google/bitcoin/store/BlockStoreException;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v19
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 665
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
    .line 691
    iget-object v0, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->verifiedChainHeadBlock:Lcom/google/bitcoin/core/StoredBlock;

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

    .line 894
    invoke-direct {p0}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->maybeConnect()V

    .line 895
    const/4 v4, 0x0

    .line 897
    .local v4, "s":Ljava/sql/PreparedStatement;
    :try_start_0
    iget-object v5, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/sql/Connection;

    const-string v7, "SELECT COUNT(*) FROM openOutputs WHERE hash = ?"

    invoke-interface {v5, v7}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4

    .line 899
    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v7

    invoke-interface {v4, v5, v7}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 900
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v3

    .line 901
    .local v3, "results":Ljava/sql/ResultSet;
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-nez v5, :cond_1

    .line 902
    new-instance v5, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v6, "Got no results from a COUNT(*) query"

    invoke-direct {v5, v6}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 906
    .end local v3    # "results":Ljava/sql/ResultSet;
    :catch_0
    move-exception v2

    .line 907
    .local v2, "ex":Ljava/sql/SQLException;
    :try_start_1
    new-instance v5, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v5, v2}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 909
    .end local v2    # "ex":Ljava/sql/SQLException;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_0

    .line 911
    :try_start_2
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 912
    :cond_0
    throw v5

    .line 904
    .restart local v3    # "results":Ljava/sql/ResultSet;
    :cond_1
    const/4 v5, 0x1

    :try_start_3
    invoke-interface {v3, v5}, Ljava/sql/ResultSet;->getInt(I)I
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    .line 905
    .local v0, "count":I
    if-eqz v0, :cond_3

    move v5, v6

    .line 909
    :goto_0
    if-eqz v4, :cond_2

    .line 911
    :try_start_4
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 912
    :cond_2
    return v5

    .line 905
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 912
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
    .line 449
    invoke-direct {p0}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->maybeConnect()V

    .line 451
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->putUpdateStoredBlock(Lcom/google/bitcoin/core/StoredBlock;Z)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    return-void

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v1, v0}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public put(Lcom/google/bitcoin/core/StoredBlock;Lcom/google/bitcoin/core/StoredUndoableBlock;)V
    .locals 18
    .param p1, "storedBlock"    # Lcom/google/bitcoin/core/StoredBlock;
    .param p2, "undoableBlock"    # Lcom/google/bitcoin/core/StoredUndoableBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 458
    invoke-direct/range {p0 .. p0}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->maybeConnect()V

    .line 460
    const/16 v14, 0x1c

    new-array v5, v14, [B

    .line 461
    .local v5, "hashBytes":[B
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v14

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/16 v17, 0x1c

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v15, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 462
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v6

    .line 463
    .local v6, "height":I
    const/4 v11, 0x0

    .line 464
    .local v11, "transactions":[B
    const/4 v13, 0x0

    .line 466
    .local v13, "txOutChanges":[B
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 467
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/StoredUndoableBlock;->getTxOutChanges()Lcom/google/bitcoin/core/TransactionOutputChanges;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 468
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/StoredUndoableBlock;->getTxOutChanges()Lcom/google/bitcoin/core/TransactionOutputChanges;

    move-result-object v14

    invoke-virtual {v14, v2}, Lcom/google/bitcoin/core/TransactionOutputChanges;->serializeToStream(Ljava/io/OutputStream;)V

    .line 469
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 480
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :try_start_1
    sget-object v14, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    invoke-interface {v14}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 488
    sget-object v14, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Looking for undoable block with hash: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v5}, Lcom/google/bitcoin/core/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 490
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v14}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/sql/Connection;

    const-string v15, "select 1 from undoableBlocks where hash = ?"

    invoke-interface {v14, v15}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4

    .line 491
    .local v4, "findS":Ljava/sql/PreparedStatement;
    const/4 v14, 0x1

    invoke-interface {v4, v14, v5}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 493
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v9

    .line 494
    .local v9, "rs":Ljava/sql/ResultSet;
    invoke-interface {v9}, Ljava/sql/ResultSet;->next()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 497
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->close()V

    .line 501
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v14}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/sql/Connection;

    const-string v15, "UPDATE undoableBlocks SET txOutChanges=?, transactions=? WHERE hash = ?"

    invoke-interface {v14, v15}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v10

    .line 504
    .local v10, "s":Ljava/sql/PreparedStatement;
    const/4 v14, 0x3

    invoke-interface {v10, v14, v5}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 506
    sget-object v14, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    invoke-interface {v14}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 507
    sget-object v14, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Updating undoable block with hash: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v5}, Lcom/google/bitcoin/core/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 510
    :cond_1
    if-nez v11, :cond_5

    .line 511
    const/4 v14, 0x1

    invoke-interface {v10, v14, v13}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 512
    const/4 v14, 0x2

    const/4 v15, -0x2

    invoke-interface {v10, v14, v15}, Ljava/sql/PreparedStatement;->setNull(II)V

    .line 517
    :goto_1
    invoke-interface {v10}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 518
    invoke-interface {v10}, Ljava/sql/PreparedStatement;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 552
    .end local v4    # "findS":Ljava/sql/PreparedStatement;
    .end local v9    # "rs":Ljava/sql/ResultSet;
    .end local v10    # "s":Ljava/sql/PreparedStatement;
    :cond_2
    :goto_2
    return-void

    .line 471
    :cond_3
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/StoredUndoableBlock;->getTransactions()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v8

    .line 472
    .local v8, "numTxn":I
    shr-int/lit8 v14, v8, 0x0

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v2, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 473
    shr-int/lit8 v14, v8, 0x8

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v2, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 474
    shr-int/lit8 v14, v8, 0x10

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v2, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 475
    shr-int/lit8 v14, v8, 0x18

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v2, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 476
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/StoredUndoableBlock;->getTransactions()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/bitcoin/core/Transaction;

    .line 477
    .local v12, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {v12, v2}, Lcom/google/bitcoin/core/Transaction;->bitcoinSerialize(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 481
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "numTxn":I
    .end local v12    # "tx":Lcom/google/bitcoin/core/Transaction;
    :catch_0
    move-exception v3

    .line 482
    .local v3, "e":Ljava/io/IOException;
    new-instance v14, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v14, v3}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 478
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "numTxn":I
    :cond_4
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v11

    goto/16 :goto_0

    .line 514
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "numTxn":I
    .restart local v4    # "findS":Ljava/sql/PreparedStatement;
    .restart local v9    # "rs":Ljava/sql/ResultSet;
    .restart local v10    # "s":Ljava/sql/PreparedStatement;
    :cond_5
    const/4 v14, 0x1

    const/4 v15, -0x2

    :try_start_4
    invoke-interface {v10, v14, v15}, Ljava/sql/PreparedStatement;->setNull(II)V

    .line 515
    const/4 v14, 0x2

    invoke-interface {v10, v14, v11}, Ljava/sql/PreparedStatement;->setBytes(I[B)V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 547
    .end local v4    # "findS":Ljava/sql/PreparedStatement;
    .end local v9    # "rs":Ljava/sql/ResultSet;
    .end local v10    # "s":Ljava/sql/PreparedStatement;
    :catch_1
    move-exception v3

    .line 548
    .local v3, "e":Ljava/sql/SQLException;
    invoke-virtual {v3}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v14

    const-string v15, "23505"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 549
    new-instance v14, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v14, v3}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 523
    .end local v3    # "e":Ljava/sql/SQLException;
    .restart local v4    # "findS":Ljava/sql/PreparedStatement;
    .restart local v9    # "rs":Ljava/sql/ResultSet;
    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v14}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/sql/Connection;

    const-string v15, "INSERT INTO undoableBlocks(hash, height, txOutChanges, transactions) VALUES(?, ?, ?, ?)"

    invoke-interface {v14, v15}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v10

    .line 526
    .restart local v10    # "s":Ljava/sql/PreparedStatement;
    const/4 v14, 0x1

    invoke-interface {v10, v14, v5}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 527
    const/4 v14, 0x2

    invoke-interface {v10, v14, v6}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 529
    sget-object v14, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    invoke-interface {v14}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 530
    sget-object v14, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->log:Lorg/slf4j/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Inserting undoable block with hash: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v5}, Lcom/google/bitcoin/core/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " at height "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 533
    :cond_7
    if-nez v11, :cond_8

    .line 534
    const/4 v14, 0x3

    invoke-interface {v10, v14, v13}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 535
    const/4 v14, 0x4

    const/4 v15, -0x2

    invoke-interface {v10, v14, v15}, Ljava/sql/PreparedStatement;->setNull(II)V

    .line 540
    :goto_4
    invoke-interface {v10}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 541
    invoke-interface {v10}, Ljava/sql/PreparedStatement;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_1

    .line 543
    const/4 v14, 0x1

    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->putUpdateStoredBlock(Lcom/google/bitcoin/core/StoredBlock;Z)V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2

    .line 544
    :catch_2
    move-exception v3

    .line 545
    .restart local v3    # "e":Ljava/sql/SQLException;
    :try_start_7
    new-instance v14, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v14, v3}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 537
    .end local v3    # "e":Ljava/sql/SQLException;
    :cond_8
    const/4 v14, 0x3

    const/4 v15, -0x2

    invoke-interface {v10, v14, v15}, Ljava/sql/PreparedStatement;->setNull(II)V

    .line 538
    const/4 v14, 0x4

    invoke-interface {v10, v14, v11}, Ljava/sql/PreparedStatement;->setBytes(I[B)V
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4
.end method

.method public removeUnspentTransactionOutput(Lcom/google/bitcoin/core/StoredTransactionOutput;)V
    .locals 5
    .param p1, "out"    # Lcom/google/bitcoin/core/StoredTransactionOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 829
    invoke-direct {p0}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->maybeConnect()V

    .line 831
    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getIndex()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->getTransactionOutput(Lcom/google/bitcoin/core/Sha256Hash;J)Lcom/google/bitcoin/core/StoredTransactionOutput;

    move-result-object v2

    if-nez v2, :cond_0

    .line 832
    new-instance v2, Lcom/google/bitcoin/store/BlockStoreException;

    const-string v3, "Tried to remove a StoredTransactionOutput from PostgresFullPrunedBlockStore that it didn\'t have!"

    invoke-direct {v2, v3}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 834
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/sql/Connection;

    const-string v3, "DELETE FROM openOutputs WHERE hash = ? AND index = ?"

    invoke-interface {v2, v3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    .line 836
    .local v1, "s":Ljava/sql/PreparedStatement;
    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 838
    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredTransactionOutput;->getIndex()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v1, v2, v3}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 839
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 840
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    return-void

    .line 841
    .end local v1    # "s":Ljava/sql/PreparedStatement;
    :catch_0
    move-exception v0

    .line 842
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v2, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v2, v0}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public resetStore()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/store/BlockStoreException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->maybeConnect()V

    .line 234
    :try_start_0
    iget-object v2, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/sql/Connection;

    invoke-interface {v2}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v1

    .line 235
    .local v1, "s":Ljava/sql/Statement;
    const-string v2, "DROP TABLE settings"

    invoke-interface {v1, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 236
    const-string v2, "DROP TABLE headers"

    invoke-interface {v1, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 237
    const-string v2, "DROP TABLE undoableBlocks"

    invoke-interface {v1, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 238
    const-string v2, "DROP TABLE openOutputs"

    invoke-interface {v1, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 239
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 240
    invoke-direct {p0}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->createTables()V

    .line 241
    invoke-direct {p0}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->initFromDatabase()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    return-void

    .line 242
    .end local v1    # "s":Ljava/sql/Statement;
    :catch_0
    move-exception v0

    .line 243
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
    .line 674
    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    .line 675
    .local v1, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    iput-object v1, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->chainHeadHash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 676
    iput-object p1, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->chainHeadBlock:Lcom/google/bitcoin/core/StoredBlock;

    .line 677
    invoke-direct {p0}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->maybeConnect()V

    .line 679
    :try_start_0
    iget-object v3, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/sql/Connection;

    const-string v4, "UPDATE settings SET value = ? WHERE name = ?"

    invoke-interface {v3, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    .line 681
    .local v2, "s":Ljava/sql/PreparedStatement;
    const/4 v3, 0x2

    const-string v4, "chainhead"

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 682
    const/4 v3, 0x1

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 683
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 684
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    return-void

    .line 685
    .end local v2    # "s":Ljava/sql/PreparedStatement;
    :catch_0
    move-exception v0

    .line 686
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
    .line 695
    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v1

    .line 696
    .local v1, "hash":Lcom/google/bitcoin/core/Sha256Hash;
    iput-object v1, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->verifiedChainHeadHash:Lcom/google/bitcoin/core/Sha256Hash;

    .line 697
    iput-object p1, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->verifiedChainHeadBlock:Lcom/google/bitcoin/core/StoredBlock;

    .line 698
    invoke-direct {p0}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->maybeConnect()V

    .line 700
    :try_start_0
    iget-object v3, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->conn:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/sql/Connection;

    const-string v4, "UPDATE settings SET value = ? WHERE name = ?"

    invoke-interface {v3, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    .line 702
    .local v2, "s":Ljava/sql/PreparedStatement;
    const/4 v3, 0x2

    const-string v4, "verifiedchainhead"

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 703
    const/4 v3, 0x1

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Sha256Hash;->getBytes()[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 704
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 705
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    iget-object v3, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->chainHeadBlock:Lcom/google/bitcoin/core/StoredBlock;

    invoke-virtual {v3}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 710
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->setChainHead(Lcom/google/bitcoin/core/StoredBlock;)V

    .line 711
    :cond_0
    invoke-virtual {p1}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->fullStoreDepth:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/google/bitcoin/store/PostgresFullPrunedBlockStore;->removeUndoableBlocksWhereHeightIsLessThan(I)V

    .line 712
    return-void

    .line 706
    .end local v2    # "s":Ljava/sql/PreparedStatement;
    :catch_0
    move-exception v0

    .line 707
    .local v0, "ex":Ljava/sql/SQLException;
    new-instance v3, Lcom/google/bitcoin/store/BlockStoreException;

    invoke-direct {v3, v0}, Lcom/google/bitcoin/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
