.class public Lcom/meishu/sdk/core/exception/ErrorCodeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AD_LOAD_ERROR:Ljava/lang/Integer;

.field public static final AD_LOAD_ERROR_MSG:Ljava/lang/String; = "\u6240\u6709\u5e7f\u544a\u4f4d\u52a0\u8f7d\u5931\u8d25"

.field public static final EMPTY_SRC_URL:Ljava/lang/Integer;

.field public static ERROR_REPORT_URL:[Ljava/lang/String; = null

.field public static final MATERIAL_LOAD_SUCCESS:I = 0xc8

.field public static final NETWORK_ERROR:Ljava/lang/Integer;

.field public static OAID_INIT_ERROR:I = 0x0

.field public static OAID_NOT_EXISTS:I = 0x0

.field public static final RENDER_AD_EXCEPTION:I = 0x895441

.field public static final RENDER_AD_INTERRUPTED:I = 0x895442

.field public static final RENDER_AD_RESULT:I = 0x895443

.field public static final RENDER_AD_STEP:I = 0x895440

.field public static final RES_LOAD_ERROR:Ljava/lang/Integer;

.field public static final RES_LOAD_TIMEOUT:Ljava/lang/Integer;

.field public static final RES_READ_RESPONSE_ERROR:Ljava/lang/Integer;

.field public static UNKNOW_ERROR:I

.field public static final UNSUPPORTED_TYPE:Ljava/lang/Integer;

.field public static final VIDEO_LOAD_ERROR:Ljava/lang/Integer;

.field public static final VIDEO_LOAD_TIMEOUT:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0xc3501

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 9
    .line 10
    const/16 v0, 0x3e9

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->EMPTY_SRC_URL:Ljava/lang/Integer;

    .line 17
    .line 18
    const v0, 0xc3503

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->UNSUPPORTED_TYPE:Ljava/lang/Integer;

    .line 26
    .line 27
    const v0, 0xc3504

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_TIMEOUT:Ljava/lang/Integer;

    .line 35
    .line 36
    const v0, 0xc3506

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_READ_RESPONSE_ERROR:Ljava/lang/Integer;

    .line 44
    .line 45
    const/16 v0, 0x1784

    .line 46
    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->VIDEO_LOAD_ERROR:Ljava/lang/Integer;

    .line 52
    .line 53
    const v0, 0xc5c12

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sput-object v0, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->VIDEO_LOAD_TIMEOUT:Ljava/lang/Integer;

    .line 61
    .line 62
    const/16 v0, 0xbb9

    .line 63
    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sput-object v0, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->NETWORK_ERROR:Ljava/lang/Integer;

    .line 69
    .line 70
    const/16 v0, 0xbba

    .line 71
    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sput-object v0, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->AD_LOAD_ERROR:Ljava/lang/Integer;

    .line 77
    .line 78
    const/16 v0, 0x1a0a

    .line 79
    .line 80
    sput v0, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->UNKNOW_ERROR:I

    .line 81
    .line 82
    const v0, 0xf424b

    .line 83
    .line 84
    .line 85
    sput v0, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->OAID_NOT_EXISTS:I

    .line 86
    .line 87
    const v0, 0xf424c

    .line 88
    .line 89
    .line 90
    sput v0, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->OAID_INIT_ERROR:I

    .line 91
    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
