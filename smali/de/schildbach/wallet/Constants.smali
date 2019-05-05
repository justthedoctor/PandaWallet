.class public Lde/schildbach/wallet/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ADDRESS_FORMAT_GROUP_SIZE:I = 0x4

.field public static final ADDRESS_FORMAT_LINE_SIZE:I = 0xc

.field public static final AUTHOR_GOOGLEPLUS_URL:Ljava/lang/String; = "https://profiles.google.com/HashEngineering"

.field public static final AUTHOR_TWITTER_URL:Ljava/lang/String; = "https://twitter.com/#!/Sk1rmant"

.field public static final BINARY_URL:Ljava/lang/String;

.field public static final BLOCKCHAIN_FILENAME:Ljava/lang/String;

.field public static final BLOCKCHAIN_STATE_BROADCAST_THROTTLE_MS:J = 0x3e8L

.field public static final BLOCKCHAIN_UPTODATE_THRESHOLD_MS:J = 0x36ee80L

.field public static final BTC_MAX_PRECISION:I = 0x8

.field public static final BUG_OPENSSL_HEARTBLEED:Z

.field public static final CHAR_ALMOST_EQUAL_TO:C = '\u2248'

.field public static final CHAR_CHECKMARK:C = '\u2713'

.field public static final CHAR_HAIR_SPACE:C = '\u200a'

.field public static final CHAR_THIN_SPACE:C = '\u2009'

.field public static final CHECKPOINTS_FILENAME:Ljava/lang/String;

.field public static final COMMUNITY_GOOGLEPLUS_URL:Ljava/lang/String; = "https://plus.google.com/communities/105515929887248493912"

.field public static final CREDITS_BITCOINJ_URL:Ljava/lang/String;

.field public static final CREDITS_FORUM_URL:Ljava/lang/String; = "https://t.me/DigitalPandacoin"

.field public static final CREDITS_ICON_URL:Ljava/lang/String; = "https://bitcointalk.org/index.php?action=profile;u=2062"

.field public static final CREDITS_WEBSITE_URL:Ljava/lang/String; = "https://pandacoin.tech/"

.field public static final CREDITS_ZXING_URL:Ljava/lang/String; = "http://code.google.com/p/zxing/"

.field public static final CURRENCY_CODE_BTC:Ljava/lang/String; = "PND"

.field public static final CURRENCY_CODE_MBTC:Ljava/lang/String; = "mPND"

.field public static final CURRENCY_CODE_UBTC:Ljava/lang/String; = "\u00b5PND"

.field public static final CURRENCY_MINUS_SIGN:Ljava/lang/String; = "-\u2009"

.field public static final CURRENCY_PLUS_SIGN:Ljava/lang/String; = "+\u2009"

.field public static final DEFAULT_EXCHANGE_CURRENCY:Ljava/lang/String; = "USD"

.field public static final DONATION_ADDRESS:Ljava/lang/String; = "PBAdSebKmFuDUJP257xReuLnijkAtsP25E"

.field public static final EXPLORE_ADDRESS_PATH:Ljava/lang/String; = "address/"

.field public static final EXPLORE_BASE_URL:Ljava/lang/String;

.field private static final EXPLORE_BASE_URL_PROD:Ljava/lang/String; = "https://chainz.cryptoid.info/pnd/"

.field private static final EXPLORE_BASE_URL_TEST:Ljava/lang/String; = "https://chainz.cryptoid.info/pnd/"

.field public static final EXPLORE_BLOCK_PATH:Ljava/lang/String; = "block/"

.field public static final EXPLORE_TRANSACTION_PATH:Ljava/lang/String; = "tx/"

.field public static final EXTERNAL_WALLET_BACKUP_DIR:Ljava/io/File;

.field public static final EXTERNAL_WALLET_KEY_BACKUP:Ljava/lang/String;

.field private static final FILENAME_NETWORK_SUFFIX:Ljava/lang/String;

.field public static final FORKED_FROM_SOURCE:Ljava/lang/String; = "based on bitcoin-wallet 3.46\n"

.field public static final FORKED_FROM_SOURCE_BITCOINJ:Ljava/lang/String; = "based on bitcoinj 0.12\n"

.field public static final HTTP_TIMEOUT_MS:I = 0x3a98

.field public static final LAST_USAGE_THRESHOLD_JUST_MS:J = 0x36ee80L

.field public static final LAST_USAGE_THRESHOLD_RECENTLY_MS:J = 0xa4cb800L

.field public static final LICENSE_URL:Ljava/lang/String; = "http://www.gnu.org/licenses/gpl-3.0.txt"

.field public static final LOCAL_PRECISION:I = 0x8

.field public static final MARKET_APP_URL:Ljava/lang/String; = "market://details?id=%s"

.field public static final MARKET_PUBLISHER_URL:Ljava/lang/String; = "market://search?q=pub:\"Hash Engineering Solutions\""

.field public static final MAX_NUM_CONFIRMATIONS:I = 0x7

.field public static final MBTC_MAX_PRECISION:I = 0x5

.field public static final MEMORY_CLASS_LOWEND:I = 0x30

.field public static final MIMETYPE_BACKUP_PRIVATE_KEYS:Ljava/lang/String;

.field public static final MIMETYPE_TRANSACTION:Ljava/lang/String;

.field public static final NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

.field public static final PREFIX_ALMOST_EQUAL_TO:Ljava/lang/String;

.field public static final REPORT_EMAIL:Ljava/lang/String; = "jommy@pandacoin.tech"

.field public static final REPORT_SUBJECT_CRASH:Ljava/lang/String; = "Crash report"

.field public static final REPORT_SUBJECT_ISSUE:Ljava/lang/String; = "Reported issue"

.field public static final SDK_DEPRECATED_BELOW:I = 0xe

.field public static final SDK_JELLY_BEAN:I = 0x10

.field public static final SDK_JELLY_BEAN_MR2:I = 0x12

.field public static final SOURCE_URL:Ljava/lang/String;

.field public static final TEST:Z

.field public static final UBTC_MAX_PRECISION:I = 0x2

.field public static final USER_AGENT:Ljava/lang/String; = "Pandacoin Wallet"

.field public static final US_ASCII:Ljava/nio/charset/Charset;

.field public static final UTF_8:Ljava/nio/charset/Charset;

.field public static final VERSION_URL:Ljava/lang/String; = "http://wallet.schildbach.de/version"

.field public static final WALLET_FILENAME_PROTOBUF:Ljava/lang/String;

.field public static final WALLET_KEY_BACKUP_BASE58:Ljava/lang/String;

.field public static final WALLET_KEY_BACKUP_PROTOBUF:Ljava/lang/String;

.field public static final WALLET_OPERATION_STACK_SIZE:I = 0x40000

.field public static final WEBMARKET_APP_URL:Ljava/lang/String; = "https://play.google.com/store/apps/details?id=%s"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-class v0, Lcc/pandacoin/wallet/R;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lde/schildbach/wallet/Constants;->TEST:Z

    .line 40
    sget-boolean v0, Lde/schildbach/wallet/Constants;->TEST:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/bitcoin/params/TestNet3Params;->get()Lcom/google/bitcoin/params/TestNet3Params;

    move-result-object v0

    :goto_0
    sput-object v0, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    .line 41
    sget-object v0, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.pandacoin.production"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    sput-object v0, Lde/schildbach/wallet/Constants;->FILENAME_NETWORK_SUFFIX:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wallet-protobuf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lde/schildbach/wallet/Constants;->FILENAME_NETWORK_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/Constants;->WALLET_FILENAME_PROTOBUF:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key-backup-base58"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lde/schildbach/wallet/Constants;->FILENAME_NETWORK_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/Constants;->WALLET_KEY_BACKUP_BASE58:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key-backup-protobuf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lde/schildbach/wallet/Constants;->FILENAME_NETWORK_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/Constants;->WALLET_KEY_BACKUP_PROTOBUF:Ljava/lang/String;

    .line 48
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/Constants;->EXTERNAL_WALLET_BACKUP_DIR:Ljava/io/File;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pandacoin"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-wallet-keys"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lde/schildbach/wallet/Constants;->FILENAME_NETWORK_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/Constants;->EXTERNAL_WALLET_KEY_BACKUP:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blockchain"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lde/schildbach/wallet/Constants;->FILENAME_NETWORK_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/Constants;->BLOCKCHAIN_FILENAME:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkpoints"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lde/schildbach/wallet/Constants;->FILENAME_NETWORK_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/Constants;->CHECKPOINTS_FILENAME:Ljava/lang/String;

    .line 57
    sget-object v0, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.pandacoin.production"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "https://chainz.cryptoid.info/pnd/"

    :goto_2
    sput-object v0, Lde/schildbach/wallet/Constants;->EXPLORE_BASE_URL:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/x-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PND"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/Constants;->MIMETYPE_TRANSACTION:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "x-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Pandacoin"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/private-keys"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/Constants;->MIMETYPE_BACKUP_PRIVATE_KEYS:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2248

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2009

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/Constants;->PREFIX_ALMOST_EQUAL_TO:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://github.com/pandacoin-official/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Pandacoin"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-wallet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/Constants;->SOURCE_URL:Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://github.com/pandacoin-official/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Pandacoin"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-wallet/releases"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/Constants;->BINARY_URL:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://github.com/pandacoin-official/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Pandacoin"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "j"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/Constants;->CREDITS_BITCOINJ_URL:Ljava/lang/String;

    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "4.1.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    sput-boolean v0, Lde/schildbach/wallet/Constants;->BUG_OPENSSL_HEARTBLEED:Z

    .line 142
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/Constants;->UTF_8:Ljava/nio/charset/Charset;

    .line 143
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/Constants;->US_ASCII:Ljava/nio/charset/Charset;

    return-void

    .line 40
    :cond_0
    invoke-static {}, Lcom/google/bitcoin/params/MainNetParams;->get()Lcom/google/bitcoin/params/MainNetParams;

    move-result-object v0

    goto/16 :goto_0

    .line 41
    :cond_1
    const-string v0, "-testnet"

    goto/16 :goto_1

    .line 57
    :cond_2
    const-string v0, "https://chainz.cryptoid.info/pnd/"

    goto/16 :goto_2

    .line 138
    :cond_3
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
