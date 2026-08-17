.class public Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private act_type:I

.field private action_desc:Ljava/lang/String;

.field private app_info:Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;

.field private app_name:Ljava/lang/String;

.field private clk_area:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private creative_type:I

.field private dUrl:[Ljava/lang/String;

.field private direct_market:I

.field private from_logo:Ljava/lang/String;

.field private h5_ext:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private power_index:I

.field private power_index2:I

.field private reward_tmp_time:I

.field private srcUrls:[Ljava/lang/String;

.field private target_type:I

.field private temp_id:I

.field private title:Ljava/lang/String;

.field private uuid:Ljava/lang/String;

.field private video_cover:Ljava/lang/String;

.field private video_keep_time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static make(Lcom/meishu/sdk/core/ad/AdSlot;Ljava/lang/String;Z)Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;
    .locals 4

    .line 1
    new-instance v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;-><init>()V

    .line 4
    .line 5
    .line 6
    instance-of v1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    move-object v1, p0

    .line 11
    check-cast v1, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iput-object v2, v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;->srcUrls:[Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getVideo_cover()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iput-object v2, v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;->video_cover:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iput v2, v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;->creative_type:I

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iput v2, v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;->target_type:I

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getH5Ext()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iput-object v2, v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;->h5_ext:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getReq_id()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iput-object v2, v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;->uuid:Ljava/lang/String;

    .line 48
    .line 49
    iput-object p1, v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;->app_name:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getTitle()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;->title:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDesc()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;->content:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getIconUrl()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;->icon:Ljava/lang/String;

    .line 68
    .line 69
    instance-of p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 70
    .line 71
    if-eqz p1, :cond_0

    .line 72
    .line 73
    move-object p1, p0

    .line 74
    check-cast p1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 75
    .line 76
    iget-wide v2, p1, Lcom/meishu/sdk/meishu_ad/nativ/f;->i:J

    .line 77
    .line 78
    iput-wide v2, v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;->video_keep_time:J

    .line 79
    .line 80
    :cond_0
    invoke-interface {p0}, Lcom/meishu/sdk/core/ad/AdSlot;->getDirect_market()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    iput p1, v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;->direct_market:I

    .line 85
    .line 86
    invoke-interface {p0}, Lcom/meishu/sdk/core/ad/AdSlot;->getdUrl()[Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    iput-object p0, v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;->dUrl:[Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;->makeAppInfoBean(Lcom/meishu/sdk/core/ad/BaseAdSlot;)Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    iput-object p0, v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;->app_info:Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getReward_tmp_time()I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    iput p0, v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;->reward_tmp_time:I

    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_1

    .line 113
    .line 114
    iput-object p0, v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;->from_logo:Ljava/lang/String;

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_1
    const-string p0, "data:image/png;base64,"

    .line 118
    .line 119
    invoke-static {p0}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    sget v2, Lcom/meishu/sdk/R$drawable;->ms_ad:I

    .line 128
    .line 129
    invoke-static {p1, v2}, Lcom/meishu/sdk/core/webview/q;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    iput-object p0, v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;->from_logo:Ljava/lang/String;

    .line 141
    .line 142
    :goto_0
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    iput p0, v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;->act_type:I

    .line 147
    .line 148
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAction_desc()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    iput-object p0, v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;->action_desc:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getClk_area()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    iput-object p0, v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;->clk_area:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_index()I

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    iput p0, v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;->power_index:I

    .line 165
    .line 166
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_index2()I

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    iput p0, v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;->power_index2:I

    .line 171
    .line 172
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getWebTempId()I

    .line 173
    .line 174
    .line 175
    move-result p0

    .line 176
    iput p0, v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;->temp_id:I

    .line 177
    .line 178
    if-eqz p2, :cond_2

    .line 179
    .line 180
    if-gtz p0, :cond_2

    .line 181
    .line 182
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getRewardTmpId()I

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    iput p0, v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean;->temp_id:I

    .line 187
    .line 188
    :cond_2
    return-object v0
.end method

.method private static makeAppInfoBean(Lcom/meishu/sdk/core/ad/BaseAdSlot;)Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;
    .locals 2
    .param p0    # Lcom/meishu/sdk/core/ad/BaseAdSlot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;->access$002(Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_intro()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;->access$102(Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_intor_url()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;->access$202(Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_ver()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;->access$302(Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_size()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;->access$402(Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_permission()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;->access$502(Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;Ljava/util/List;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getApp_permission_url()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;->access$602(Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPrivacy_agreement()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;->access$702(Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDeveloper()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;->access$802(Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPackageName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {v0, p0}, Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;->access$902(Lcom/meishu/sdk/core/webview/jsbridge/bean/GetH5AdInfoResBean$AppInfoBean;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    return-object v0
.end method
