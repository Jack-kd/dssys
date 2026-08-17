.class public final Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;
.super Lcom/czhj/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/Message$Builder<",
        "Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;",
        "Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public charge_percent:Ljava/lang/Integer;

.field public charge_seconds:Ljava/lang/Integer;

.field public click_setting:Lcom/sigmob/sdk/base/models/rtb/ClickAreaSetting;

.field public confirm_dialog:Ljava/lang/Integer;

.field public disable_auto_load:Ljava/lang/Boolean;

.field public enable_exit_on_video_close:Ljava/lang/Boolean;

.field public end_impression_time:Ljava/lang/Integer;

.field public end_time:Ljava/lang/Integer;

.field public endcard_close_image:Ljava/lang/Integer;

.field public endcard_close_position:Ljava/lang/Integer;

.field public finished:Ljava/lang/Float;

.field public full_click_on_video:Ljava/lang/Boolean;

.field public if_mute:Ljava/lang/Integer;

.field public invisible_ad_label:Ljava/lang/Boolean;

.field public mute_postion:Ljava/lang/Integer;

.field public reward_percent:Ljava/lang/Integer;

.field public reward_seconds:Ljava/lang/Integer;

.field public reward_style:Ljava/lang/Integer;

.field public skip_percent:Ljava/lang/Integer;

.field public skip_seconds:Ljava/lang/Integer;

.field public video_close_position:Ljava/lang/Integer;

.field public video_error_reward:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/czhj/wire/Message$Builder;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;->DEFAULT_IF_MUTE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->if_mute:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;->DEFAULT_FINISHED:Ljava/lang/Float;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->finished:Ljava/lang/Float;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;->DEFAULT_VIDEO_CLOSE_POSITION:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->video_close_position:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;->DEFAULT_ENDCARD_CLOSE_POSITION:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->endcard_close_position:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;->DEFAULT_MUTE_POSTION:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->mute_postion:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;->DEFAULT_SKIP_PERCENT:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->skip_percent:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;->DEFAULT_ENABLE_EXIT_ON_VIDEO_CLOSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->enable_exit_on_video_close:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;->DEFAULT_FULL_CLICK_ON_VIDEO:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->full_click_on_video:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;->DEFAULT_INVISIBLE_AD_LABEL:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->invisible_ad_label:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;->DEFAULT_END_TIME:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->end_time:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;->DEFAULT_ENDCARD_CLOSE_IMAGE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->endcard_close_image:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;->DEFAULT_END_IMPRESSION_TIME:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->end_impression_time:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;->DEFAULT_DISABLE_AUTO_LOAD:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->disable_auto_load:Ljava/lang/Boolean;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;->DEFAULT_CHARGE_SECONDS:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->charge_seconds:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;->DEFAULT_CHARGE_PERCENT:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->charge_percent:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;->DEFAULT_REWARD_SECONDS:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->reward_seconds:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;->DEFAULT_REWARD_PERCENT:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->reward_percent:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;->DEFAULT_CONFIRM_DIALOG:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->confirm_dialog:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;->DEFAULT_REWARD_STYLE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->reward_style:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;->DEFAULT_VIDEO_ERROR_REWARD:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->video_error_reward:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/czhj/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->build()Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;
    .locals 26

    .line 2
    move-object/from16 v0, p0

    new-instance v1, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;

    iget-object v2, v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->if_mute:Ljava/lang/Integer;

    iget-object v3, v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->finished:Ljava/lang/Float;

    iget-object v4, v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->video_close_position:Ljava/lang/Integer;

    iget-object v5, v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->endcard_close_position:Ljava/lang/Integer;

    iget-object v6, v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->mute_postion:Ljava/lang/Integer;

    iget-object v7, v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->skip_percent:Ljava/lang/Integer;

    iget-object v8, v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->skip_seconds:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->enable_exit_on_video_close:Ljava/lang/Boolean;

    iget-object v10, v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->full_click_on_video:Ljava/lang/Boolean;

    iget-object v11, v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->click_setting:Lcom/sigmob/sdk/base/models/rtb/ClickAreaSetting;

    iget-object v12, v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->invisible_ad_label:Ljava/lang/Boolean;

    iget-object v13, v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->end_time:Ljava/lang/Integer;

    iget-object v14, v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->endcard_close_image:Ljava/lang/Integer;

    iget-object v15, v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->end_impression_time:Ljava/lang/Integer;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->disable_auto_load:Ljava/lang/Boolean;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->charge_seconds:Ljava/lang/Integer;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->charge_percent:Ljava/lang/Integer;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->reward_seconds:Ljava/lang/Integer;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->reward_percent:Ljava/lang/Integer;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->confirm_dialog:Ljava/lang/Integer;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->reward_style:Ljava/lang/Integer;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->video_error_reward:Ljava/lang/Boolean;

    invoke-super {v0}, Lcom/czhj/wire/Message$Builder;->buildUnknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v24

    move-object/from16 v25, v23

    move-object/from16 v23, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v25

    invoke-direct/range {v1 .. v24}, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting;-><init>(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/sigmob/sdk/base/models/rtb/ClickAreaSetting;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/czhj/wire/okio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public charge_percent(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->charge_percent:Ljava/lang/Integer;

    return-object p0
.end method

.method public charge_seconds(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->charge_seconds:Ljava/lang/Integer;

    return-object p0
.end method

.method public click_setting(Lcom/sigmob/sdk/base/models/rtb/ClickAreaSetting;)Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->click_setting:Lcom/sigmob/sdk/base/models/rtb/ClickAreaSetting;

    return-object p0
.end method

.method public confirm_dialog(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->confirm_dialog:Ljava/lang/Integer;

    return-object p0
.end method

.method public disable_auto_load(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->disable_auto_load:Ljava/lang/Boolean;

    return-object p0
.end method

.method public enable_exit_on_video_close(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->enable_exit_on_video_close:Ljava/lang/Boolean;

    return-object p0
.end method

.method public end_impression_time(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->end_impression_time:Ljava/lang/Integer;

    return-object p0
.end method

.method public end_time(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->end_time:Ljava/lang/Integer;

    return-object p0
.end method

.method public endcard_close_image(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->endcard_close_image:Ljava/lang/Integer;

    return-object p0
.end method

.method public endcard_close_position(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->endcard_close_position:Ljava/lang/Integer;

    return-object p0
.end method

.method public finished(Ljava/lang/Float;)Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->finished:Ljava/lang/Float;

    return-object p0
.end method

.method public full_click_on_video(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->full_click_on_video:Ljava/lang/Boolean;

    return-object p0
.end method

.method public if_mute(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->if_mute:Ljava/lang/Integer;

    return-object p0
.end method

.method public invisible_ad_label(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->invisible_ad_label:Ljava/lang/Boolean;

    return-object p0
.end method

.method public mute_postion(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->mute_postion:Ljava/lang/Integer;

    return-object p0
.end method

.method public reward_percent(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->reward_percent:Ljava/lang/Integer;

    return-object p0
.end method

.method public reward_seconds(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->reward_seconds:Ljava/lang/Integer;

    return-object p0
.end method

.method public reward_style(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->reward_style:Ljava/lang/Integer;

    return-object p0
.end method

.method public skip_percent(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->skip_percent:Ljava/lang/Integer;

    return-object p0
.end method

.method public skip_seconds(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->skip_seconds:Ljava/lang/Integer;

    return-object p0
.end method

.method public video_close_position(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->video_close_position:Ljava/lang/Integer;

    return-object p0
.end method

.method public video_error_reward(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/rtb/RvAdSetting$Builder;->video_error_reward:Ljava/lang/Boolean;

    return-object p0
.end method
