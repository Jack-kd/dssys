.class public Lcom/sigmob/sdk/nativead/h;
.super Lcom/sigmob/sdk/base/common/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;I)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "5"

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "video_link"

    const-string v7, "video_restart"

    const-string v8, "ad_show"

    const-string v9, "complete"

    const-string v10, "click"

    const-string v11, "video_pause"

    const-string v12, "video_start"

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    :try_start_1
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x5

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :sswitch_1
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x6

    goto/16 :goto_1

    :sswitch_2
    const-string v5, "play_two_quarters"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v5, "start"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto/16 :goto_1

    :sswitch_4
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xb

    goto :goto_1

    :sswitch_5
    const-string v5, "play_three_quarters"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x9

    goto :goto_1

    :sswitch_6
    const-string v5, "fourElements_close"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xd

    goto :goto_1

    :sswitch_7
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xa

    goto :goto_1

    :sswitch_8
    const-string v5, "fourElements_show"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0xc

    goto :goto_1

    :sswitch_9
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_1

    :sswitch_a
    const-string v5, "ad_hide"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_b
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_1

    :sswitch_c
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_d
    const-string v5, "play_quarter"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_0

    const/4 v5, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v5, -0x1

    :goto_1
    const-string v14, "fourElements"

    const-string v15, "play"

    const/4 v13, 0x0

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    :try_start_2
    const-string v2, "close"

    :goto_2
    invoke-virtual {v1, v0, v14, v2, v13}, Lcom/sigmob/sdk/base/common/l;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_a

    :pswitch_1
    const-string v2, "show"

    goto :goto_2

    :pswitch_2
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v5

    iget-boolean v6, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    if-eqz v6, :cond_1

    const-string v6, "1"

    goto :goto_3

    :cond_1
    const-string v6, "0"

    :goto_3
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v7

    const-string v8, "_SLD_"

    iget-object v9, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_AX_"

    iget-object v9, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->adarea_x:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_AY_"

    iget-object v9, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->adarea_y:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_AW_"

    iget-object v9, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->adarea_w:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_AH_"

    iget-object v9, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->adarea_h:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "-999"

    iget-object v9, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v11, "2"

    const-string v12, "_CPTIDS_"

    if-eqz v9, :cond_2

    :try_start_3
    invoke-virtual {v7, v8, v8, v8, v8}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->updateClickMarco(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_TURNX_"

    iget-object v9, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_x:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_TURNY_"

    iget-object v9, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_y:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_TURNZ_"

    iget-object v9, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_z:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_TURNTIME_"

    iget-object v9, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_time:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget v8, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->widget_id:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v12, v8}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    iget-object v9, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v7, v8, v8, v8, v8}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->updateClickMarco(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v8, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->widget_id:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v12, v8}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_XMAXACC_"

    iget-object v9, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->x_max_acc:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_YMAXACC_"

    iget-object v9, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->y_max_acc:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_ZMAXACC_"

    iget-object v9, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->z_max_acc:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    iget-object v8, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->down:Lcom/czhj/sdk/common/utils/TouchLocation;

    iget-object v9, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->up:Lcom/czhj/sdk/common/utils/TouchLocation;

    invoke-virtual {v7, v8, v9}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->updateClickMarco(Lcom/czhj/sdk/common/utils/TouchLocation;Lcom/czhj/sdk/common/utils/TouchLocation;)V

    :goto_4
    iget-object v8, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    const-string v9, "_TEMPLATE_"

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTemplateId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v9, v12}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "_CLICKAREA_"

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v9, v12}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "_CLICKSCENE_"

    iget-object v12, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v9, v12}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "_FINALCLICK_"

    invoke-virtual {v7, v9, v6}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "appinfo"

    invoke-static {v8, v9}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/sigmob/sdk/base/common/l;->a:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "recordDisplayEvent: Do Not Track"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/sigmob/sdk/base/common/l;->a:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "recordDisplayEvent: Track"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-static/range {p1 .. p2}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :goto_5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v9, "template_id"

    iget-object v12, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->template_id:Ljava/lang/String;

    invoke-virtual {v2, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "sld"

    iget-object v12, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    invoke-virtual {v2, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "adarea_x"

    iget-object v12, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->adarea_x:Ljava/lang/String;

    invoke-virtual {v2, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "adarea_y"

    iget-object v12, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->adarea_y:Ljava/lang/String;

    invoke-virtual {v2, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "adarea_w"

    iget-object v12, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->adarea_w:Ljava/lang/String;

    invoke-virtual {v2, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "adarea_h"

    iget-object v12, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->adarea_h:Ljava/lang/String;

    invoke-virtual {v2, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v9, "cpt_id"

    if-eqz v3, :cond_5

    :try_start_4
    const-string v3, "turn_x"

    iget-object v11, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_x:Ljava/lang/String;

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "turn_y"

    iget-object v11, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_y:Ljava/lang/String;

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "turn_z"

    iget-object v11, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_z:Ljava/lang/String;

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->widget_id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "turn_time"

    iget-object v9, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_time:Ljava/lang/String;

    invoke-virtual {v2, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_5
    iget-object v3, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "x_max_acc"

    iget-object v11, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->x_max_acc:Ljava/lang/String;

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "y_max_acc"

    iget-object v11, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->y_max_acc:Ljava/lang/String;

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "z_max_acc"

    iget-object v11, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->z_max_acc:Ljava/lang/String;

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->widget_id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_6
    const-string v3, "click_area"

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "click_scene"

    iget-object v8, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "cwidth"

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v8

    invoke-virtual {v8}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealWidthDip()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "cheight"

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v8

    invoke-virtual {v8}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealHeightDip()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "is_final_click"

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "coordinate"

    invoke-virtual {v7}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->getCoordinate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "click_lose_rate"

    iget-object v6, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->click_lose_rate:Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "click_cb_state"

    iget-object v6, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->click_cb_state:Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->aim:Ljava/lang/Integer;

    invoke-static {v3}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "aim"

    iget-object v6, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->aim:Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v13, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->aim:Ljava/lang/Integer;

    :cond_7
    iget-object v3, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->cpt_render_type:Ljava/lang/Integer;

    invoke-static {v3}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "cpt_render_type"

    iget-object v6, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->cpt_render_type:Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v13, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->cpt_render_type:Ljava/lang/Integer;

    :cond_8
    iget-object v3, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    invoke-virtual {v1, v0, v3, v10, v2}, Lcom/sigmob/sdk/base/common/l;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_a

    :pswitch_3
    invoke-virtual {v1, v0, v2, v4, v9}, Lcom/sigmob/sdk/base/common/l;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_a

    :pswitch_4
    invoke-static/range {p1 .. p2}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    const-string v2, "0.75"

    :goto_7
    invoke-virtual {v1, v0, v15, v2, v13}, Lcom/sigmob/sdk/base/common/l;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_a

    :pswitch_5
    invoke-static/range {p1 .. p2}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    const-string v2, "0.50"

    goto :goto_7

    :pswitch_6
    invoke-static/range {p1 .. p2}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    const-string v2, "0.25"

    goto :goto_7

    :pswitch_7
    invoke-virtual {v1, v0, v2, v4, v11}, Lcom/sigmob/sdk/base/common/l;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_a

    :pswitch_8
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v12}, Lcom/sigmob/sdk/base/common/l;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_a

    :pswitch_9
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v7}, Lcom/sigmob/sdk/base/common/l;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_a

    :pswitch_a
    invoke-virtual {v1, v0, v2, v4, v6}, Lcom/sigmob/sdk/base/common/l;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_a

    :pswitch_b
    invoke-static/range {p1 .. p2}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :goto_8
    invoke-virtual {v1, v0, v2, v13, v13}, Lcom/sigmob/sdk/base/common/l;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_a

    :pswitch_c
    invoke-static/range {p1 .. p2}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v8, v13, v13}, Lcom/sigmob/sdk/base/common/l;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_a

    :pswitch_d
    invoke-static/range {p1 .. p2}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/sigmob/sdk/base/common/l;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "recordDisplayEvent: error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_a
    return v4

    :sswitch_data_0
    .sparse-switch
        -0x7a3c9f5f -> :sswitch_d
        -0x607216c2 -> :sswitch_c
        -0x45c851b5 -> :sswitch_b
        -0x44b35822 -> :sswitch_a
        -0x44ae5a67 -> :sswitch_9
        -0x3a82fa41 -> :sswitch_8
        -0x23bacec7 -> :sswitch_7
        -0x16bbf48a -> :sswitch_6
        -0xe1ebacd -> :sswitch_5
        0x5a5c588 -> :sswitch_4
        0x68ac462 -> :sswitch_3
        0x1c1dab05 -> :sswitch_2
        0x52641532 -> :sswitch_1
        0x5296b39e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
