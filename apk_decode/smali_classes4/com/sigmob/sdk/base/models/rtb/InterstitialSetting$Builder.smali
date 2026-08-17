.class public final Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;
.super Lcom/czhj/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;",
        "Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public charge_time:Ljava/lang/Integer;

.field public click_close_ad:Ljava/lang/Boolean;

.field public disable_auto_load:Ljava/lang/Boolean;

.field public endcard_close_position:Ljava/lang/Integer;

.field public if_mute:Ljava/lang/Integer;

.field public mute_position:Ljava/lang/Integer;

.field public seconds_close_ad:Ljava/lang/Integer;

.field public shake_level:Ljava/lang/Integer;

.field public show_skip_seconds:Ljava/lang/Integer;

.field public skip_close_ad:Ljava/lang/Boolean;

.field public skip_position:Ljava/lang/Integer;

.field public skip_seconds_btn_pic_show:Ljava/lang/Integer;

.field public skip_seconds_btn_video_show:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;->DEFAULT_IF_MUTE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->if_mute:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;->DEFAULT_SHOW_SKIP_SECONDS:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->show_skip_seconds:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;->DEFAULT_SKIP_CLOSE_AD:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->skip_close_ad:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;->DEFAULT_SKIP_POSITION:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->skip_position:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;->DEFAULT_ENDCARD_CLOSE_POSITION:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->endcard_close_position:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;->DEFAULT_MUTE_POSITION:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->mute_position:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;->DEFAULT_SHAKE_LEVEL:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->shake_level:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;->DEFAULT_CHARGE_TIME:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->charge_time:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;->DEFAULT_DISABLE_AUTO_LOAD:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->disable_auto_load:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;->DEFAULT_CLICK_CLOSE_AD:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->click_close_ad:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;->DEFAULT_SECONDS_CLOSE_AD:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->seconds_close_ad:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;->DEFAULT_SKIP_SECONDS_BTN_PIC_SHOW:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->skip_seconds_btn_pic_show:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;->DEFAULT_SKIP_SECONDS_BTN_VIDEO_SHOW:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->skip_seconds_btn_video_show:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->build()Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;
    .locals 15

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->if_mute:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->show_skip_seconds:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->skip_close_ad:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->skip_position:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->endcard_close_position:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->mute_position:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->shake_level:Ljava/lang/Integer;

    iget-object v8, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->charge_time:Ljava/lang/Integer;

    iget-object v9, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->disable_auto_load:Ljava/lang/Boolean;

    iget-object v10, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->click_close_ad:Ljava/lang/Boolean;

    iget-object v11, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->seconds_close_ad:Ljava/lang/Integer;

    iget-object v12, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->skip_seconds_btn_pic_show:Ljava/lang/Integer;

    iget-object v13, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->skip_seconds_btn_video_show:Ljava/lang/Integer;

    invoke-super {p0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v14

    invoke-direct/range {v0 .. v14}, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/czhj/wire/okio/ByteString;)V

    return-object v0
.end method

.method public charge_time(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->charge_time:Ljava/lang/Integer;

    return-object p0
.end method

.method public click_close_ad(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->click_close_ad:Ljava/lang/Boolean;

    return-object p0
.end method

.method public disable_auto_load(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->disable_auto_load:Ljava/lang/Boolean;

    return-object p0
.end method

.method public endcard_close_position(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->endcard_close_position:Ljava/lang/Integer;

    return-object p0
.end method

.method public if_mute(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->if_mute:Ljava/lang/Integer;

    return-object p0
.end method

.method public mute_position(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->mute_position:Ljava/lang/Integer;

    return-object p0
.end method

.method public seconds_close_ad(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->seconds_close_ad:Ljava/lang/Integer;

    return-object p0
.end method

.method public shake_level(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->shake_level:Ljava/lang/Integer;

    return-object p0
.end method

.method public show_skip_seconds(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->show_skip_seconds:Ljava/lang/Integer;

    return-object p0
.end method

.method public skip_close_ad(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->skip_close_ad:Ljava/lang/Boolean;

    return-object p0
.end method

.method public skip_position(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->skip_position:Ljava/lang/Integer;

    return-object p0
.end method

.method public skip_seconds_btn_pic_show(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->skip_seconds_btn_pic_show:Ljava/lang/Integer;

    return-object p0
.end method

.method public skip_seconds_btn_video_show(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/InterstitialSetting$Builder;->skip_seconds_btn_video_show:Ljava/lang/Integer;

    return-object p0
.end method
