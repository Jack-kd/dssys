.class public Lcom/meishu/sdk/core/ad/BaseAdSlot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/ad/AdSlot;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;,
        Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;,
        Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    }
.end annotation


# instance fields
.field private act_ext:Ljava/lang/String;

.field private act_type:I

.field private action_desc:Ljava/lang/String;

.field public adPatternType:I

.field private ad_type:I

.field private ader_id:Ljava/lang/String;

.field private adg:I

.field private adp:I

.field public appId:Ljava/lang/String;

.field public appName:Ljava/lang/String;

.field private app_feature:Ljava/lang/String;

.field private app_intor_url:Ljava/lang/String;

.field private app_intro:Ljava/lang/String;

.field private app_permission:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/domain/MeishuAdInfo$PermissionBean;",
            ">;"
        }
    .end annotation
.end field

.field private app_permission_url:Ljava/lang/String;

.field private app_privacy:Ljava/lang/String;

.field private app_size:Ljava/lang/String;

.field private app_ver:Ljava/lang/String;

.field private appendInfo:Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;

.field private cat:Ljava/lang/String;

.field private cbc:I

.field private cid:Ljava/lang/String;

.field public clickUrl:[Ljava/lang/String;

.field public clickid:Ljava/lang/String;

.field private clkActType:I

.field private clkPower:I

.field private clk_area:Ljava/lang/String;

.field private clk_type:I

.field private closeUrl:[Ljava/lang/String;

.field public comments:I

.field public dUrl:[Ljava/lang/String;

.field private dclk:Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;

.field public deep_link:Ljava/lang/String;

.field private defImage:Ljava/lang/String;

.field private default_coord:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field private developer:Ljava/lang/String;

.field private direct_market:I

.field public dn_active:[Ljava/lang/String;

.field public dn_inst_start:[Ljava/lang/String;

.field public dn_inst_succ:[Ljava/lang/String;

.field public dn_start:[Ljava/lang/String;

.field public dn_succ:[Ljava/lang/String;

.field public downNum:I

.field private dpSign:Ljava/lang/String;

.field public dp_fail:[Ljava/lang/String;

.field public dp_start:[Ljava/lang/String;

.field public dp_succ:[Ljava/lang/String;

.field private dpsign:Ljava/lang/String;

.field private drawing:I

.field private dynamicMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ecpm:I

.field private errorUrl:[Ljava/lang/String;

.field private eventUrl:[Ljava/lang/String;

.field private expire_timestamp:I

.field private extend_down:I

.field private extend_interval:I

.field private extend_left:I

.field private extend_max_count:I

.field private extend_right:I

.field private extend_up:I

.field private fieldExport:Ljava/lang/Integer;

.field public fromLogo:Ljava/lang/String;

.field public from_id:Ljava/lang/String;

.field private h5_ext:Ljava/lang/String;

.field private h5_url:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public imageUrls:[Ljava/lang/String;

.field public interactionType:I

.field private isAdClosed:Z

.field private isClkDynamic:Z

.field private isRewardBrowserOpenLandingPage:Z

.field private loadedTime:J

.field private lossUrl:[Ljava/lang/String;

.field private material_timeout:I

.field public monitorUrl:[Ljava/lang/String;

.field private nativeSE:I

.field private nop:I

.field public packageName:Ljava/lang/String;

.field private payment_types:Ljava/lang/String;

.field public posId:Ljava/lang/String;

.field private power_count:I

.field private power_delay:I

.field private power_index:I

.field private power_index2:I

.field private privacy_agreement:Ljava/lang/String;

.field private req_id:Ljava/lang/String;

.field public responUrl:[Ljava/lang/String;

.field private reward_tmp_id:I

.field private reward_tmp_time:I

.field private reward_tmp_type:I

.field private reward_tmp_url:Ljava/lang/String;

.field private rs:Ljava/lang/Integer;

.field private s_code:Ljava/lang/String;

.field private s_ext:Ljava/lang/String;

.field private scale_type:I

.field private scheme:Ljava/lang/String;

.field public score:F

.field private shakeResult:Lcom/meishu/sdk/platform/ms/splash/ShakeResult;

.field private skipBtnLocation:I

.field public title:Ljava/lang/String;

.field private uob:Ljava/lang/Integer;

.field public video_cover:Ljava/lang/String;

.field private webTempId:I

.field private webTempUrl:Ljava/lang/String;

.field private winUrl:[Ljava/lang/String;

.field private wx_appid:Ljava/lang/String;

.field private wx_fail:[Ljava/lang/String;

.field private wx_path:Ljava/lang/String;

.field private wx_start:[Ljava/lang/String;

.field private wx_succ:[Ljava/lang/String;

.field private wx_username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->clk_type:I

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->drawing:I

    .line 9
    .line 10
    iput v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->act_type:I

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->scale_type:I

    .line 14
    .line 15
    new-instance v0, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->appendInfo:Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic access$002(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->icon:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$1002(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->cid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$102(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->developer:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$1102(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->cat:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$1202(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->ader_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$1302(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->wx_username:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$1402(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->wx_path:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$1502(Lcom/meishu/sdk/core/ad/BaseAdSlot;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->wx_start:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$1602(Lcom/meishu/sdk/core/ad/BaseAdSlot;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->wx_succ:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$1702(Lcom/meishu/sdk/core/ad/BaseAdSlot;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->wx_fail:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$1802(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->req_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$1902(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->direct_market:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$2002(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->ecpm:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$202(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->app_intro:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$2102(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->extend_up:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$2202(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->extend_down:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$2302(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->extend_left:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$2402(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->extend_right:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$2502(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->extend_interval:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$2602(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->extend_max_count:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$2702(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->s_code:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$2802(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->s_ext:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$2902(Lcom/meishu/sdk/core/ad/BaseAdSlot;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->loadedTime:J

    .line 2
    .line 3
    return-wide p1
.end method

.method public static synthetic access$3002(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->expire_timestamp:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$302(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->app_feature:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$3102(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->clk_type:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$3202(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->clk_area:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$3302(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->power_index:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$3402(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->power_index2:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$3502(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->power_delay:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$3602(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->power_count:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$3702(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->drawing:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$3802(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->app_permission:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$3902(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->app_permission_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$4002(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->app_intor_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$402(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->payment_types:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$4102(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->act_type:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$4202(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->ad_type:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$4302(Lcom/meishu/sdk/core/ad/BaseAdSlot;Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;)Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->dclk:Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$4402(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->cbc:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$4502(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->nop:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$4602(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->wx_appid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$4702(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->scale_type:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$4802(Lcom/meishu/sdk/core/ad/BaseAdSlot;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->eventUrl:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$4902(Lcom/meishu/sdk/core/ad/BaseAdSlot;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->winUrl:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$5002(Lcom/meishu/sdk/core/ad/BaseAdSlot;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->lossUrl:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$502(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->app_size:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$5102(Lcom/meishu/sdk/core/ad/BaseAdSlot;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->closeUrl:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$5202(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->action_desc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$5302(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->scheme:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$5402(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->dynamicMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$5502(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->fieldExport:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$5602(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->adp:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$5702(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->adg:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$5802(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->defImage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$5902(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->default_coord:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$6002(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->dpsign:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$602(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->app_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$6102(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->material_timeout:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$6202(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->h5_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$6302(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->h5_ext:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$6402(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->reward_tmp_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$6502(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->reward_tmp_type:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$6602(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->reward_tmp_time:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$6702(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->reward_tmp_id:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$6802(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->act_ext:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$6902(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->uob:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$7002(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->rs:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$702(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->app_privacy:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$7102(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->dpSign:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$7202(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->nativeSE:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$7302(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->webTempId:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$7402(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->webTempUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$7502(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->skipBtnLocation:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$802(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->privacy_agreement:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$902(Lcom/meishu/sdk/core/ad/BaseAdSlot;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->errorUrl:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method private clearClickExtInfo()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppendInfo()Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->getClickExtInfo()Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;->clear()Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public getAct_ext()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->act_ext:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAct_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->act_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getAction_desc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->action_desc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdPatternType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->adPatternType:I

    .line 2
    .line 3
    return v0
.end method

.method public getAd_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->ad_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getAder_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->ader_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdg()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->adg:I

    .line 2
    .line 3
    return v0
.end method

.method public getAdp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->adp:I

    .line 2
    .line 3
    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->appName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApp_feature()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->app_feature:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApp_intor_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->app_intor_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApp_intro()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->app_intro:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApp_permission()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/domain/MeishuAdInfo$PermissionBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->app_permission:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApp_permission_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->app_permission_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApp_privacy()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->app_privacy:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApp_size()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->app_size:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApp_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->app_ver:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppendInfo()Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->appendInfo:Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->cat:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCbc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->cbc:I

    .line 2
    .line 3
    return v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->cid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClickUrl()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->clickUrl:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClickid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->clickid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClkActType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->clkActType:I

    .line 2
    .line 3
    return v0
.end method

.method public getClkPower()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->clkPower:I

    .line 2
    .line 3
    return v0
.end method

.method public getClk_area()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->clk_area:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClk_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->clk_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getCloseUrl()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->closeUrl:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getComments()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->comments:I

    .line 2
    .line 3
    return v0
.end method

.method public getDPSIGN()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->dpSign:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDclk()Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->dclk:Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeep_link()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->deep_link:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDefImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->defImage:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDefault_coord()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->default_coord:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->desc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeveloper()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->developer:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDirect_market()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->direct_market:I

    .line 2
    .line 3
    return v0
.end method

.method public getDn_active()[Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    return-object v0
.end method

.method public getDn_inst_start()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->dn_inst_start:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDn_inst_succ()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->dn_inst_succ:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDn_start()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->dn_start:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDn_succ()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->dn_succ:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->downNum:I

    .line 2
    .line 3
    return v0
.end method

.method public getDpSign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->dpsign:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDp_fail()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->dp_fail:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDp_start()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->dp_start:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDp_succ()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->dp_succ:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDpsign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->dpsign:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDrawing()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->drawing:I

    .line 2
    .line 3
    return v0
.end method

.method public getDynamicMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->dynamicMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEcpm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->ecpm:I

    .line 2
    .line 3
    return v0
.end method

.method public getErrorUrl()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->errorUrl:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEventUrl()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->eventUrl:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExpire_timestamp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->expire_timestamp:I

    .line 2
    .line 3
    return v0
.end method

.method public getExtend_down()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->extend_down:I

    .line 2
    .line 3
    return v0
.end method

.method public getExtend_interval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->extend_interval:I

    .line 2
    .line 3
    return v0
.end method

.method public getExtend_left()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->extend_left:I

    .line 2
    .line 3
    return v0
.end method

.method public getExtend_max_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->extend_max_count:I

    .line 2
    .line 3
    return v0
.end method

.method public getExtend_right()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->extend_right:I

    .line 2
    .line 3
    return v0
.end method

.method public getExtend_up()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->extend_up:I

    .line 2
    .line 3
    return v0
.end method

.method public getFieldExport()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->fieldExport:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFromId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->from_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFromLogo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->fromLogo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getH5Ext()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->h5_ext:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getH5Url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->h5_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->icon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->iconUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImageUrls()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->imageUrls:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->interactionType:I

    .line 2
    .line 3
    return v0
.end method

.method public getIsAdClosed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->isAdClosed:Z

    .line 2
    .line 3
    return v0
.end method

.method public getIsRewardUseBrowser()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->isRewardBrowserOpenLandingPage:Z

    .line 2
    .line 3
    return v0
.end method

.method public getLoadedTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->loadedTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLossUrl()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->lossUrl:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaterialTimeout(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->material_timeout:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    return p1
.end method

.method public getMonitorUrl()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->monitorUrl:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNativeSE()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->nativeSE:I

    .line 2
    .line 3
    return v0
.end method

.method public getNop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->nop:I

    .line 2
    .line 3
    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPayment_types()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->payment_types:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPosId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->posId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPower_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->power_count:I

    .line 2
    .line 3
    return v0
.end method

.method public getPower_delay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->power_delay:I

    .line 2
    .line 3
    return v0
.end method

.method public getPower_index()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->power_index:I

    .line 2
    .line 3
    return v0
.end method

.method public getPower_index2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->power_index2:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->power_index:I

    .line 6
    .line 7
    :cond_0
    return v0
.end method

.method public getPrivacy_agreement()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->privacy_agreement:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReq_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->req_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResponUrl()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->responUrl:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRewardTmpId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->reward_tmp_id:I

    .line 2
    .line 3
    return v0
.end method

.method public getReward_tmp_time()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->reward_tmp_time:I

    .line 2
    .line 3
    return v0
.end method

.method public getReward_tmp_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->reward_tmp_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getReward_tmp_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->reward_tmp_url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRs()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->rs:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getS_code()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->s_code:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getS_ext()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->s_ext:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScale_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->scale_type:I

    .line 2
    .line 3
    return v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->scheme:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScore()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->score:F

    .line 2
    .line 3
    return v0
.end method

.method public getShakeResult()Lcom/meishu/sdk/platform/ms/splash/ShakeResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->shakeResult:Lcom/meishu/sdk/platform/ms/splash/ShakeResult;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSkipBtnLocation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->skipBtnLocation:I

    .line 2
    .line 3
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUob()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->uob:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideo_cover()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->video_cover:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWebTempId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->webTempId:I

    .line 2
    .line 3
    return v0
.end method

.method public getWebTempUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->webTempUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWinUrl()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->winUrl:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWx_appid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->wx_appid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWx_fail()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->wx_fail:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWx_path()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->wx_path:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWx_start()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->wx_start:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWx_succ()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->wx_succ:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWx_username()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->wx_username:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getdUrl()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->dUrl:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isDynamic()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->isClkDynamic:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAct_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->act_type:I

    .line 2
    .line 3
    return-void
.end method

.method public setAdClosed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->isAdClosed:Z

    .line 2
    .line 3
    return-void
.end method

.method public setAdPatternType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->adPatternType:I

    .line 2
    .line 3
    return-void
.end method

.method public setAppendInfo(Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->appendInfo:Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;

    .line 5
    .line 6
    return-void
.end method

.method public setClickUrl([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->clickUrl:[Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setClkActType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->clkActType:I

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->clearClickExtInfo()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setClkPower(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->clkPower:I

    .line 2
    .line 3
    return-void
.end method

.method public setDp_start([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->dp_start:[Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDynamic(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->isClkDynamic:Z

    .line 2
    .line 3
    return-void
.end method

.method public setHasExposed(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->appendInfo:Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->setHasExposed(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setHasVideoStart(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->appendInfo:Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->setHasVideoStart(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setImageUrls([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->imageUrls:[Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMonitorUrl([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->monitorUrl:[Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRewardBrowserOpenLandingPage(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->isRewardBrowserOpenLandingPage:Z

    .line 2
    .line 3
    return-void
.end method

.method public setShakeResult(Lcom/meishu/sdk/platform/ms/splash/ShakeResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->shakeResult:Lcom/meishu/sdk/platform/ms/splash/ShakeResult;

    .line 2
    .line 3
    return-void
.end method

.method public setdUrl([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->dUrl:[Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
