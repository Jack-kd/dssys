.class public Lcom/czhj/sdk/common/Constants;
.super Ljava/lang/Object;


# static fields
.field public static final ADSCENE:Ljava/lang/String; = "ad_scene"

.field public static final AD_SCENE_DESC:Ljava/lang/String; = "scene_desc"

.field public static final AD_SCENE_ID:Ljava/lang/String; = "scene_id"

.field public static final AESKEY:Ljava/lang/String; = "sigandroid_mtadb"

.field public static final AGE_RESTRICTED_STATUS:Ljava/lang/String; = "age_restricted_status"

.field public static final BROADCAST_IDENTIFIER_KEY:Ljava/lang/String; = "broadcastIdentifier"

.field public static final CLICK_TYPE:Ljava/lang/String; = "clickType"

.field public static final ENCRYPT:Z = false

.field public static final EXT_GDPR_REGION:Ljava/lang/String; = "gdpr_region"

.field public static final FAIL:Ljava/lang/String; = "0"

.field public static final GCMNONCE:Ljava/lang/String; = "+lx3fUZcRI2mzU/W"

.field public static final GDPR_CONSENT_STATUS:Ljava/lang/String; = "consent_status"

.field public static final GOOGLE_PLAY:Z = false

.field public static final HTTP:Ljava/lang/String; = "http"

.field public static final HTTPS:Ljava/lang/String; = "https"

.field public static final IS_REQUEST_IN_EEA_OR_UNKNOWN:Ljava/lang/String; = "is_request_in_eea_or_unknown"

.field public static final LOAD_ID:Ljava/lang/String; = "loadId"

.field public static final LOG_URL:Ljava/lang/String; = "dc.sigmob.cn/log"

.field public static final RETRYMAXNUM:I = 0xbb8

.field public static final SDK_COMMON_FOLDER:Ljava/lang/String; = "sigmob"

.field public static final SDK_VERSION:I = 0xc7

.field public static final SHOW_DOWNLOAD_DIALOG:Ljava/lang/String; = "showDownloadDialog"

.field public static final SIG_VERSION:I = 0x9f

.field public static final SUCCESS:Ljava/lang/String; = "1"

.field public static final TEMPLATETYPE:Ljava/lang/String; = "templateType"

.field public static final TEN_SECONDS_MILLIS:I = 0x2710

.field public static final TOKEN:Ljava/lang/String; = "token"

.field public static final USER_AGE:Ljava/lang/String; = "user_age"

.field public static sdf:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/czhj/sdk/common/Constants;->sdf:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()I
    .locals 1

    const/16 v0, 0xc7

    return v0
.end method
