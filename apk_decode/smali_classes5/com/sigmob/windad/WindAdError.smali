.class public final enum Lcom/sigmob/windad/WindAdError;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/windad/WindAdError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ERROR_AD_ERROR:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_AD_LOAD_FAIL_INTERVAL:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_AD_LOAD_FAIL_LOADING:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_LOAD_FILTER_FOR_ACTIVITY_ERROR:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_LOAD_FILTER_FOR_INSTALL_PERMISSION_ERROR:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_LOAD_FILTER_FOR_PROGUARD_ERROR:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_LOAD_FILTER_FOR_PROVIDER_ERROR:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_LOAD_FILTER_FOR_PROVIDER_XML_ERROR:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_NO_AD:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_OTHER:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_ADCONTAINER_IS_NULL:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_ADCONTAINER_NOT_VIEWGROUP:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_AD_DB_INSERT:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_AD_PLAY:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_AD_PLAY_CHECK_FAIL:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_AD_PLAY_HAS_PLAYING:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_AD_TIME_OUT:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_BAD_REQUEST:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_BID_TOKEN_IS_EMPTY:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_EXPIRED:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_FILE_MD5:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_GDPR_DENIED:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_INIT_FAIL:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_INSTALL_FAIL:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_NATIVE_ADCOUNT:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_NETWORK:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_NOT_START:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_PERSONALIZED_OFF:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_PLACEMENTID_EMPTY:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_PLAY_VIDEO:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_SPLASH_NOT_READY:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_SPLASH_TIMEOUT:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_SPLASH_UNSUPPORT_ORIENTATION:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_SPLASH_UNSUPPORT_RESOURCE:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SIGMOB_VIDEO_FILE:Lcom/sigmob/windad/WindAdError;

.field public static final enum ERROR_SPLASH_ADBLOCK:Lcom/sigmob/windad/WindAdError;

.field public static final enum MRAID_LOAD_ERROR:Lcom/sigmob/windad/WindAdError;

.field public static final enum RENDER_PROCESS_GONE_UNSPECIFIED:Lcom/sigmob/windad/WindAdError;

.field public static final enum RENDER_PROCESS_GONE_WITH_CRASH:Lcom/sigmob/windad/WindAdError;

.field public static final enum VIDEO_CACHE_ERROR:Lcom/sigmob/windad/WindAdError;

.field private static final synthetic b:[Lcom/sigmob/windad/WindAdError;


# instance fields
.field private a:I

.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 47

    new-instance v1, Lcom/sigmob/windad/WindAdError;

    const v0, 0x92889

    const-string v2, "Provider \u58f0\u660e\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5 AndroidManifest \u6587\u4ef6"

    const-string v3, "ERROR_LOAD_FILTER_FOR_PROVIDER_ERROR"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v0, v2}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_LOAD_FILTER_FOR_PROVIDER_ERROR:Lcom/sigmob/windad/WindAdError;

    new-instance v2, Lcom/sigmob/windad/WindAdError;

    const v0, 0x92888

    const-string v3, "Provider \u7684 Xml \u914d\u7f6e\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5 Xml \u6587\u4ef6\u5185\u5bb9"

    const-string v5, "ERROR_LOAD_FILTER_FOR_PROVIDER_XML_ERROR"

    const/4 v6, 0x1

    invoke-direct {v2, v5, v6, v0, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_LOAD_FILTER_FOR_PROVIDER_XML_ERROR:Lcom/sigmob/windad/WindAdError;

    new-instance v3, Lcom/sigmob/windad/WindAdError;

    const v0, 0x9288a

    const-string v5, "SDK \u6df7\u6dc6\u914d\u7f6e\u9519\u8bef"

    const-string v6, "ERROR_LOAD_FILTER_FOR_PROGUARD_ERROR"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v0, v5}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/sigmob/windad/WindAdError;->ERROR_LOAD_FILTER_FOR_PROGUARD_ERROR:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const v5, 0x9288b

    const-string v6, "AdActivity \u672a\u58f0\u660e\uff0c\u8bf7\u68c0\u67e5 AndroidManifest \u6587\u4ef6"

    const-string v7, "ERROR_LOAD_FILTER_FOR_ACTIVITY_ERROR"

    const/4 v8, 0x3

    invoke-direct {v0, v7, v8, v5, v6}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_LOAD_FILTER_FOR_ACTIVITY_ERROR:Lcom/sigmob/windad/WindAdError;

    new-instance v5, Lcom/sigmob/windad/WindAdError;

    const v6, 0x9288c

    const-string v7, " \u7f3a\u5c11 REQUEST_INSTALL_PACKAGES\uff0c\u8bf7\u68c0\u67e5 AndroidManifest \u6587\u4ef6"

    const-string v8, "ERROR_LOAD_FILTER_FOR_INSTALL_PERMISSION_ERROR"

    const/4 v9, 0x4

    invoke-direct {v5, v8, v9, v6, v7}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/sigmob/windad/WindAdError;->ERROR_LOAD_FILTER_FOR_INSTALL_PERMISSION_ERROR:Lcom/sigmob/windad/WindAdError;

    new-instance v6, Lcom/sigmob/windad/WindAdError;

    const v7, 0x94edc

    const-string v8, "\u5e7f\u544a\u6b63\u5728\u52a0\u8f7d\u4e2d\uff0c\u8bf7\u7a0d\u540e\u518d\u52a0\u8f7d"

    const-string v9, "ERROR_AD_LOAD_FAIL_LOADING"

    const/4 v10, 0x5

    invoke-direct {v6, v9, v10, v7, v8}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/sigmob/windad/WindAdError;->ERROR_AD_LOAD_FAIL_LOADING:Lcom/sigmob/windad/WindAdError;

    new-instance v7, Lcom/sigmob/windad/WindAdError;

    const v8, 0x94edd

    const-string v9, "\u5e7f\u544a\u52a0\u8f7d\u9891\u7e41\uff0c\u8bf7\u7a0d\u540e\u5728\u8bd5"

    const-string v10, "ERROR_AD_LOAD_FAIL_INTERVAL"

    const/4 v11, 0x6

    invoke-direct {v7, v10, v11, v8, v9}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/sigmob/windad/WindAdError;->ERROR_AD_LOAD_FAIL_INTERVAL:Lcom/sigmob/windad/WindAdError;

    new-instance v8, Lcom/sigmob/windad/WindAdError;

    const v9, 0x928ec

    const-string v10, "BidToken is empty"

    const-string v11, "ERROR_SIGMOB_BID_TOKEN_IS_EMPTY"

    const/4 v12, 0x7

    invoke-direct {v8, v11, v12, v9, v10}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_BID_TOKEN_IS_EMPTY:Lcom/sigmob/windad/WindAdError;

    new-instance v9, Lcom/sigmob/windad/WindAdError;

    const v10, 0x92950

    const-string v11, "\u5e7f\u544a\u4e2a\u6027\u5316\u5f00\u5173\u88ab\u5173\u95ed\uff0c\u8bf7\u5f00\u542f\u4e2a\u6027\u5316\u5f00\u5173"

    const-string v12, "ERROR_SIGMOB_PERSONALIZED_OFF"

    const/16 v13, 0x8

    invoke-direct {v9, v12, v13, v10, v11}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_PERSONALIZED_OFF:Lcom/sigmob/windad/WindAdError;

    new-instance v10, Lcom/sigmob/windad/WindAdError;

    const v11, 0x92824

    const-string v12, "\u7f51\u7edc\u9519\u8bef"

    const-string v13, "ERROR_SIGMOB_NETWORK"

    const/16 v14, 0x9

    invoke-direct {v10, v13, v14, v11, v12}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NETWORK:Lcom/sigmob/windad/WindAdError;

    new-instance v11, Lcom/sigmob/windad/WindAdError;

    const v12, 0x92825

    const-string v13, "\u5e7f\u544a\u8bf7\u6c42\u51fa\u9519"

    const-string v14, "ERROR_SIGMOB_REQUEST"

    const/16 v15, 0xa

    invoke-direct {v11, v14, v15, v12, v13}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    new-instance v12, Lcom/sigmob/windad/WindAdError;

    const v13, 0x92874

    const-string v14, "\u5e7f\u544a\u8fc7\u671f"

    const-string v15, "ERROR_SIGMOB_EXPIRED"

    const/16 v4, 0xb

    invoke-direct {v12, v15, v4, v13, v14}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_EXPIRED:Lcom/sigmob/windad/WindAdError;

    new-instance v13, Lcom/sigmob/windad/WindAdError;

    const v4, 0x9eb11

    const-string v14, "\u5e7f\u544a\u8bf7\u6c42\u6570 ad_count \u5fc5\u9700\u5927\u4e8e 0"

    const-string v15, "ERROR_SIGMOB_NATIVE_ADCOUNT"

    move-object/from16 v17, v0

    const/16 v0, 0xc

    invoke-direct {v13, v15, v0, v4, v14}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NATIVE_ADCOUNT:Lcom/sigmob/windad/WindAdError;

    new-instance v14, Lcom/sigmob/windad/WindAdError;

    const v0, 0x92828

    const-string v4, "\u6587\u4ef6\u4e0b\u8f7d\u9519\u8bef"

    const-string v15, "ERROR_SIGMOB_FILE_DOWNLOAD"

    move-object/from16 v18, v1

    const/16 v1, 0xd

    invoke-direct {v14, v15, v1, v0, v4}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v14, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/windad/WindAdError;

    new-instance v15, Lcom/sigmob/windad/WindAdError;

    const v0, 0x92856

    const-string v1, "\u5185\u90e8\u9519\u8bef\uff0c\u8bf7\u8054\u7cfb\u8fd0\u8425\u6216\u6280\u672f\u4eba\u5458"

    const-string v4, "ERROR_SIGMOB_BAD_REQUEST"

    move-object/from16 v19, v2

    const/16 v2, 0xe

    invoke-direct {v15, v4, v2, v0, v1}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v15, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_BAD_REQUEST:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const v1, 0x92829

    const-string v2, "\u52a0\u8f7d\u5e7f\u544a\u8d85\u65f6"

    const-string v4, "ERROR_SIGMOB_AD_TIME_OUT"

    move-object/from16 v20, v3

    const/16 v3, 0xf

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_TIME_OUT:Lcom/sigmob/windad/WindAdError;

    new-instance v1, Lcom/sigmob/windad/WindAdError;

    const v2, 0x9282a

    const-string v3, "\u89c6\u9891\u64ad\u653e\u5931\u8d25"

    const-string v4, "ERROR_SIGMOB_PLAY_VIDEO"

    move-object/from16 v21, v0

    const/16 v0, 0x10

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_PLAY_VIDEO:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const v2, 0x92b44

    const-string v3, "SDK \u672a\u542f\u52a8\uff0c\u8bf7\u5148\u8c03\u7528 start \u65b9\u6cd5\u542f\u52a8 SDK"

    const-string v4, "ERROR_SIGMOB_NOT_START"

    move-object/from16 v22, v1

    const/16 v1, 0x11

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_START:Lcom/sigmob/windad/WindAdError;

    new-instance v1, Lcom/sigmob/windad/WindAdError;

    const v2, 0x92b45

    const-string v3, "\u5e7f\u544a\u4f4d\u4e3a\u7a7a"

    const-string v4, "ERROR_SIGMOB_PLACEMENTID_EMPTY"

    move-object/from16 v23, v0

    const/16 v0, 0x12

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_PLACEMENTID_EMPTY:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const v2, 0x92b47

    const-string v3, "\u5b89\u88c5\u5931\u8d25"

    const-string v4, "ERROR_SIGMOB_INSTALL_FAIL"

    move-object/from16 v24, v1

    const/16 v1, 0x13

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_INSTALL_FAIL:Lcom/sigmob/windad/WindAdError;

    new-instance v1, Lcom/sigmob/windad/WindAdError;

    const v2, 0x92b48

    const-string v3, "\u63d2\u5165\u6570\u636e\u5e93\u5931\u8d25"

    const-string v4, "ERROR_SIGMOB_AD_DB_INSERT"

    move-object/from16 v25, v0

    const/16 v0, 0x14

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_DB_INSERT:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const v2, 0x92b49

    const-string v3, "GDPR \u672a\u6388\u6743"

    const-string v4, "ERROR_SIGMOB_GDPR_DENIED"

    move-object/from16 v26, v1

    const/16 v1, 0x15

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_GDPR_DENIED:Lcom/sigmob/windad/WindAdError;

    new-instance v1, Lcom/sigmob/windad/WindAdError;

    const v2, 0x92b4a

    const-string v3, "SDK \u521d\u59cb\u5316\u5931\u8d25"

    const-string v4, "ERROR_SIGMOB_INIT_FAIL"

    move-object/from16 v27, v0

    const/16 v0, 0x16

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_INIT_FAIL:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const v2, 0x92b4b

    const-string v3, "\u5e7f\u544a\u5bb9\u5668\u4e0d\u80fd\u4e3a null"

    const-string v4, "ERROR_SIGMOB_ADCONTAINER_IS_NULL"

    move-object/from16 v28, v1

    const/16 v1, 0x17

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_ADCONTAINER_IS_NULL:Lcom/sigmob/windad/WindAdError;

    new-instance v1, Lcom/sigmob/windad/WindAdError;

    const v2, 0x92b4c

    const-string v3, "\u5e7f\u544a\u5bb9\u5668\u53ea\u5141\u8bb8\u4e3a ViewGroup \u7c7b\u578b"

    const-string v4, "ERROR_SIGMOB_ADCONTAINER_NOT_VIEWGROUP"

    move-object/from16 v29, v0

    const/16 v0, 0x18

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_ADCONTAINER_NOT_VIEWGROUP:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const v2, 0x92ba7

    const-string v3, ""

    const-string v4, "ERROR_OTHER"

    move-object/from16 v30, v1

    const/16 v1, 0x19

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_OTHER:Lcom/sigmob/windad/WindAdError;

    new-instance v1, Lcom/sigmob/windad/WindAdError;

    const v2, 0x94ed2

    const-string v3, "\u6fc0\u52b1\u89c6\u9891\u64ad\u653e\u51fa\u9519"

    const-string v4, "ERROR_SIGMOB_AD_PLAY"

    move-object/from16 v31, v0

    const/16 v0, 0x1a

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_PLAY:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const v2, 0x94ed3

    const-string v3, "\u5f00\u5c4f\u5e7f\u544a\u672a\u51c6\u5907\u597d"

    const-string v4, "ERROR_SIGMOB_SPLASH_NOT_READY"

    move-object/from16 v32, v1

    const/16 v1, 0x1b

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_SPLASH_NOT_READY:Lcom/sigmob/windad/WindAdError;

    new-instance v1, Lcom/sigmob/windad/WindAdError;

    const v2, 0x94ed4

    const-string v3, "\u5e7f\u544a\u7f3a\u5931\u5173\u952e\u4fe1\u606f"

    const-string v4, "ERROR_SIGMOB_INFORMATION_LOSE"

    move-object/from16 v33, v0

    const/16 v0, 0x1c

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const v2, 0x94ed5

    const-string v3, "\u4e0b\u8f7d\u7684\u6587\u4ef6\u6821\u9a8c md5 \u51fa\u9519"

    const-string v4, "ERROR_SIGMOB_FILE_MD5"

    move-object/from16 v34, v1

    const/16 v1, 0x1d

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_FILE_MD5:Lcom/sigmob/windad/WindAdError;

    new-instance v1, Lcom/sigmob/windad/WindAdError;

    const v2, 0x94ed8

    const-string v3, "\u4e0b\u8f7d\u7684\u89c6\u9891\u6587\u4ef6\u51fa\u9519"

    const-string v4, "ERROR_SIGMOB_VIDEO_FILE"

    move-object/from16 v35, v0

    const/16 v0, 0x1e

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_VIDEO_FILE:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const v2, 0x94ed6

    const-string v3, "\u6fc0\u52b1\u89c6\u9891\u64ad\u63a5\u53e3\u68c0\u67e5\u51fa\u9519\uff08\u5e7f\u544a\u8fc7\u671f\u6216\u8005\u672a Ready\uff09"

    const-string v4, "ERROR_SIGMOB_AD_PLAY_CHECK_FAIL"

    move-object/from16 v36, v1

    const/16 v1, 0x1f

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_PLAY_CHECK_FAIL:Lcom/sigmob/windad/WindAdError;

    new-instance v1, Lcom/sigmob/windad/WindAdError;

    const v2, 0x94ed7

    const-string v3, "\u6fc0\u52b1\u89c6\u9891\u64ad\u63a5\u53e3\u68c0\u67e5\u51fa\u9519\uff08\u6fc0\u52b1\u89c6\u9891\u5f53\u524d\u6709\u5e7f\u544a\u6b63\u5728\u64ad\u653e\u4e2d\uff09"

    const-string v4, "ERROR_SIGMOB_AD_PLAY_HAS_PLAYING"

    move-object/from16 v37, v0

    const/16 v0, 0x20

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_PLAY_HAS_PLAYING:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const v2, 0x975e1

    const-string v3, "\u5f00\u5c4f\u5e7f\u544a\u52a0\u8f7d\u8d85\u65f6"

    const-string v4, "ERROR_SIGMOB_SPLASH_TIMEOUT"

    move-object/from16 v38, v1

    const/16 v1, 0x21

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_SPLASH_TIMEOUT:Lcom/sigmob/windad/WindAdError;

    new-instance v1, Lcom/sigmob/windad/WindAdError;

    const v2, 0x975e2

    const-string v3, "\u5f00\u5c4f\u5e7f\u544a\u4e0d\u652f\u6301\u5f53\u524d\u65b9\u5411"

    const-string v4, "ERROR_SIGMOB_SPLASH_UNSUPPORT_ORIENTATION"

    move-object/from16 v39, v0

    const/16 v0, 0x22

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_SPLASH_UNSUPPORT_ORIENTATION:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const v2, 0x975e3

    const-string v3, "\u5f00\u5c4f\u5e7f\u544a\u4e0d\u652f\u6301\u7684\u8d44\u6e90\u7c7b\u578b"

    const-string v4, "ERROR_SIGMOB_SPLASH_UNSUPPORT_RESOURCE"

    move-object/from16 v40, v1

    const/16 v1, 0x23

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_SPLASH_UNSUPPORT_RESOURCE:Lcom/sigmob/windad/WindAdError;

    new-instance v1, Lcom/sigmob/windad/WindAdError;

    const v2, 0x97964

    const-string v3, "AD BLOCK"

    const-string v4, "ERROR_SPLASH_ADBLOCK"

    move-object/from16 v41, v0

    const/16 v0, 0x24

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_SPLASH_ADBLOCK:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const/16 v2, 0x25

    const-string v3, "AD ERROR"

    const-string v4, "ERROR_AD_ERROR"

    move-object/from16 v42, v1

    const/4 v1, 0x0

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_AD_ERROR:Lcom/sigmob/windad/WindAdError;

    new-instance v1, Lcom/sigmob/windad/WindAdError;

    const v2, 0x97965

    const-string v3, "RENDER PROCESS GONE WITH CRASH"

    const-string v4, "RENDER_PROCESS_GONE_WITH_CRASH"

    move-object/from16 v16, v0

    const/16 v0, 0x26

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/sigmob/windad/WindAdError;->RENDER_PROCESS_GONE_WITH_CRASH:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const v2, 0x97966

    const-string v3, "RENDER PROCESS GONE UNSPECIFIED"

    const-string v4, "RENDER_PROCESS_GONE_UNSPECIFIED"

    move-object/from16 v43, v1

    const/16 v1, 0x27

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->RENDER_PROCESS_GONE_UNSPECIFIED:Lcom/sigmob/windad/WindAdError;

    new-instance v1, Lcom/sigmob/windad/WindAdError;

    const v2, 0x97967

    const-string v3, "MRAID LOAD ERROR"

    const-string v4, "MRAID_LOAD_ERROR"

    move-object/from16 v44, v0

    const/16 v0, 0x28

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/sigmob/windad/WindAdError;->MRAID_LOAD_ERROR:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Lcom/sigmob/windad/WindAdError;

    const v2, 0x97968

    const-string v3, "VIDEO CACHE ERROR"

    const-string v4, "VIDEO_CACHE_ERROR"

    move-object/from16 v45, v1

    const/16 v1, 0x29

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/windad/WindAdError;->VIDEO_CACHE_ERROR:Lcom/sigmob/windad/WindAdError;

    new-instance v1, Lcom/sigmob/windad/WindAdError;

    const v2, 0x30d40

    const-string v3, "\u65e0\u5e7f\u544a\u586b\u5145"

    const-string v4, "ERROR_NO_AD"

    move-object/from16 v46, v0

    const/16 v0, 0x2a

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/sigmob/windad/WindAdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_NO_AD:Lcom/sigmob/windad/WindAdError;

    move-object/from16 v4, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v17, v22

    move-object/from16 v19, v24

    move-object/from16 v20, v25

    move-object/from16 v22, v27

    move-object/from16 v24, v29

    move-object/from16 v25, v30

    move-object/from16 v27, v32

    move-object/from16 v29, v34

    move-object/from16 v30, v35

    move-object/from16 v32, v37

    move-object/from16 v34, v39

    move-object/from16 v35, v40

    move-object/from16 v37, v42

    move-object/from16 v39, v43

    move-object/from16 v40, v44

    move-object/from16 v42, v46

    move-object/from16 v43, v1

    move-object/from16 v1, v18

    move-object/from16 v18, v23

    move-object/from16 v23, v28

    move-object/from16 v28, v33

    move-object/from16 v33, v38

    move-object/from16 v38, v16

    move-object/from16 v16, v21

    move-object/from16 v21, v26

    move-object/from16 v26, v31

    move-object/from16 v31, v36

    move-object/from16 v36, v41

    move-object/from16 v41, v45

    filled-new-array/range {v1 .. v43}, [Lcom/sigmob/windad/WindAdError;

    move-result-object v0

    sput-object v0, Lcom/sigmob/windad/WindAdError;->b:[Lcom/sigmob/windad/WindAdError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sigmob/windad/WindAdError;->a:I

    iput-object p4, p0, Lcom/sigmob/windad/WindAdError;->message:Ljava/lang/String;

    return-void
.end method

.method public static getWindAdError(I)Lcom/sigmob/windad/WindAdError;
    .locals 5

    invoke-static {}, Lcom/sigmob/windad/WindAdError;->values()[Lcom/sigmob/windad/WindAdError;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/windad/WindAdError;
    .locals 1

    const-class v0, Lcom/sigmob/windad/WindAdError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/windad/WindAdError;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/windad/WindAdError;
    .locals 1

    sget-object v0, Lcom/sigmob/windad/WindAdError;->b:[Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, [Lcom/sigmob/windad/WindAdError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/windad/WindAdError;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/sigmob/windad/WindAdError;->a:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/windad/WindAdError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorMessage(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/sigmob/windad/WindAdError;->a:I

    iput-object p2, p0, Lcom/sigmob/windad/WindAdError;->message:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/windad/WindAdError;->message:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget v1, p0, Lcom/sigmob/windad/WindAdError;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/windad/WindAdError;->message:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "{ \"error_code\":%d, \"message\": %s }"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
