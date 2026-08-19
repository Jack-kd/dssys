.class Lcom/sigmob/sdk/base/common/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/u;


# static fields
.field public static final a:Ljava/lang/String; = "RewardVideoViewAbilitySession"


# instance fields
.field private b:I

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/sdk/base/common/af;->b:I

    iput v0, p0, Lcom/sigmob/sdk/base/common/af;->e:I

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    const-string p1, "0"

    return-object p1

    :cond_0
    div-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic a(ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/Object;)V
    .locals 4

    .line 2
    instance-of v0, p4, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_3

    check-cast p4, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    iget v0, p0, Lcom/sigmob/sdk/base/common/af;->b:I

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/common/af;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setVtime(Ljava/lang/String;)V

    iget v0, p0, Lcom/sigmob/sdk/base/common/af;->d:I

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/base/common/af;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setSkip_show_time(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/af;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setCurrent_time(Ljava/lang/String;)V

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/af;->b()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setPlay_process(Ljava/lang/String;)V

    const-string v0, "start"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_scene_id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setScene_id(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_scene_desc()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setScene_desc(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getBid_token()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setBid_token(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/af;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setPlay_time(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iget p2, p0, Lcom/sigmob/sdk/base/common/af;->e:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "%d"

    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setSet_close_time(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/af;->a()Z

    move-result p1

    const-string p2, "0"

    const-string p3, "1"

    if-eqz p1, :cond_1

    move-object p1, p3

    goto :goto_0

    :cond_1
    move-object p1, p2

    :goto_0
    invoke-virtual {p4, p1}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setIs_truncation(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/sigmob/sdk/base/common/af;->c:Z

    if-eqz p1, :cond_2

    move-object p2, p3

    :cond_2
    invoke-virtual {p4, p2}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setIs_force(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/models/BaseAdUnit;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    const-string v0, "play"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sigmob/sdk/base/common/af;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object p3

    const-string v0, "_ENDTIME_"

    invoke-direct {p0, p2}, Lcom/sigmob/sdk/base/common/af;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v0, p2}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "_PROGRESS_"

    invoke-virtual {p3, p2, p4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p5}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/sigmob/sdk/base/common/N;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/sigmob/sdk/base/common/N;-><init>(Lcom/sigmob/sdk/base/common/af;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-static {p2, p4, p1, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method private static synthetic a(Ljava/util/HashMap;Ljava/lang/Object;)V
    .locals 1

    .line 5
    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-static {p0}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private a()Z
    .locals 2

    .line 6
    iget v0, p0, Lcom/sigmob/sdk/base/common/af;->e:I

    if-lez v0, :cond_0

    mul-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/sigmob/sdk/base/common/af;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private b()I
    .locals 3

    .line 2
    iget v0, p0, Lcom/sigmob/sdk/base/common/af;->e:I

    if-lez v0, :cond_0

    mul-int/lit16 v1, v0, 0x3e8

    iget v2, p0, Lcom/sigmob/sdk/base/common/af;->b:I

    if-ge v1, v2, :cond_0

    mul-int/lit16 v0, v0, 0x3e8

    return v0

    :cond_0
    iget v0, p0, Lcom/sigmob/sdk/base/common/af;->b:I

    return v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 2

    .line 3
    if-nez p1, :cond_0

    const-string p1, "0"

    return-object p1

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    int-to-float p1, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%.2f"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;I)V
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sigmob/sdk/base/common/af;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/HashMap;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/common/af;->a(Ljava/util/HashMap;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Lcom/sigmob/sdk/base/common/af;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sigmob/sdk/base/common/af;->a(ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .locals 0

    .line 7
    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;II)Z
    .locals 0

    .line 8
    iput p2, p0, Lcom/sigmob/sdk/base/common/af;->b:I

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getEndTime()I

    move-result p2

    iput p2, p0, Lcom/sigmob/sdk/base/common/af;->e:I

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object p1

    iget p2, p0, Lcom/sigmob/sdk/base/common/af;->b:I

    invoke-direct {p0, p2}, Lcom/sigmob/sdk/base/common/af;->a(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "_VIDEOTIME_"

    invoke-virtual {p1, p3, p2}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;I)Z
    .locals 21

    .line 9
    move-object/from16 v6, p2

    const-string v0, "5"

    :try_start_0
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "show"

    const-string v3, "click"

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    :try_start_1
    const-string v1, "play_complete"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x17

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    const/16 v16, 0x1

    goto/16 :goto_20

    :sswitch_1
    const-string v1, "companion_click"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "ad_vclose"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "play_two_quarters"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x15

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "full_video_click"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "start"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_1

    :sswitch_6
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "skip"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_1

    :sswitch_8
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "mute"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "rotation"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "play_three_quarters"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x16

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "ad_video_start"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x13

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "fourElements_close"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "closecard_close"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "complete"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "click_skip"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x18

    goto :goto_1

    :sswitch_11
    const-string v1, "unmute"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    goto :goto_1

    :sswitch_12
    const-string v1, "reward"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto :goto_1

    :sswitch_13
    const-string v1, "fourElements_show"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_14
    const-string v1, "finish"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto :goto_1

    :sswitch_15
    const-string v1, "show_skip"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_16
    const-string v1, "ad_motion_click"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_17
    const-string v1, "play_quarter"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x14

    goto :goto_1

    :sswitch_18
    const-string v1, "closecard_show"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v4, "_VIDEOTIME_"

    const-string v5, "_COMPLETED_"

    const-string v9, "silent"

    const-string v10, "_FINALCLICK_"

    const-string v11, "_CLICKSCENE_"

    const-string v12, "_CLICKAREA_"

    const-string v13, "_TEMPLATE_"

    const-string v14, "_AH_"

    const-string v15, "_AW_"

    const/16 v16, 0x1

    const-string v7, "_AY_"

    const-string v8, "_AX_"

    move/from16 v18, v1

    const-string v1, "1"

    const-string v6, "_ENDTIME_"

    move-object/from16 v19, v2

    const-string v2, "_PROGRESS_"

    move-object/from16 v20, v3

    const-string v3, "0"

    packed-switch v18, :pswitch_data_0

    :try_start_2
    invoke-direct/range {p0 .. p3}, Lcom/sigmob/sdk/base/common/af;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;I)V

    invoke-static/range {p1 .. p2}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :goto_2
    move-object/from16 v1, p0

    goto/16 :goto_21

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_20

    :pswitch_0
    invoke-direct/range {p0 .. p3}, Lcom/sigmob/sdk/base/common/af;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_1
    const-string v4, "0.85"

    const-string v5, "85"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    move/from16 v3, p3

    :goto_3
    invoke-direct/range {v1 .. v6}, Lcom/sigmob/sdk/base/common/af;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    const-string v4, "0.75"

    const-string v5, "75"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    move/from16 v3, p3

    goto :goto_3

    :pswitch_3
    const-string v4, "0.50"

    const-string v5, "50"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    move/from16 v3, p3

    goto :goto_3

    :pswitch_4
    :try_start_3
    const-string v4, "0.25"

    const-string v5, "25"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    move/from16 v3, p3

    :try_start_4
    invoke-direct/range {v1 .. v6}, Lcom/sigmob/sdk/base/common/af;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v7, v1

    :cond_1
    :goto_4
    move-object v1, v7

    goto/16 :goto_21

    :catchall_2
    move-exception v0

    move-object v7, v1

    goto/16 :goto_20

    :catchall_3
    move-exception v0

    move-object/from16 v7, p0

    :goto_5
    move-object v1, v7

    goto/16 :goto_20

    :pswitch_5
    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v8, p3

    :try_start_5
    const-string v1, "play"

    invoke-direct {v7, v0, v1, v8, v3}, Lcom/sigmob/sdk/base/common/af;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    :catchall_4
    move-exception v0

    goto :goto_5

    :pswitch_6
    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v8, p3

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "screenswitch"

    invoke-virtual {v1}, Lcom/czhj/sdk/common/ClientMetadata;->getRotation()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v2, v8, v1}, Lcom/sigmob/sdk/base/common/af;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    :pswitch_7
    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v8, p3

    invoke-direct {v7, v0, v9, v8, v3}, Lcom/sigmob/sdk/base/common/af;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    :pswitch_8
    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v8, p3

    invoke-direct {v7, v0, v9, v8, v1}, Lcom/sigmob/sdk/base/common/af;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    :pswitch_9
    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v8, p3

    const-string v1, "vclose"

    const/4 v2, 0x0

    invoke-direct {v7, v0, v1, v8, v2}, Lcom/sigmob/sdk/base/common/af;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    :pswitch_a
    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move/from16 v8, p3

    if-nez v8, :cond_2

    invoke-direct {v7}, Lcom/sigmob/sdk/base/common/af;->b()I

    move-result v4

    goto :goto_6

    :cond_2
    move v4, v8

    :goto_6
    invoke-direct {v7, v0, v9, v4}, Lcom/sigmob/sdk/base/common/af;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v8

    iget v10, v7, Lcom/sigmob/sdk/base/common/af;->b:I

    if-lez v10, :cond_3

    if-lez v4, :cond_3

    mul-int/lit8 v3, v4, 0x64

    invoke-direct {v7}, Lcom/sigmob/sdk/base/common/af;->b()I

    move-result v10

    div-int/2addr v3, v10

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-virtual {v8, v2, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v5, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_PLAYLASTFRAME_"

    invoke-virtual {v8, v2, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v4}, Lcom/sigmob/sdk/base/common/af;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v6, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    invoke-static/range {p1 .. p2}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_b
    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move/from16 v8, p3

    if-nez v8, :cond_4

    invoke-direct {v7}, Lcom/sigmob/sdk/base/common/af;->b()I

    move-result v1

    goto :goto_8

    :cond_4
    move v1, v8

    :goto_8
    invoke-direct {v7, v0, v9, v1}, Lcom/sigmob/sdk/base/common/af;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_c
    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move/from16 v8, p3

    if-nez v8, :cond_5

    invoke-direct {v7}, Lcom/sigmob/sdk/base/common/af;->b()I

    move-result v1

    goto :goto_9

    :cond_5
    move v1, v8

    :goto_9
    invoke-direct {v7, v0, v9, v1}, Lcom/sigmob/sdk/base/common/af;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v3

    invoke-direct {v7, v1}, Lcom/sigmob/sdk/base/common/af;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "100"

    invoke-virtual {v3, v2, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_d
    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move/from16 v8, p3

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v1

    const-string v5, "_SHOWSKIPTIME_"

    invoke-direct {v7, v8}, Lcom/sigmob/sdk/base/common/af;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v5, v10}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, v7, Lcom/sigmob/sdk/base/common/af;->b:I

    if-lez v5, :cond_6

    if-lez v8, :cond_6

    mul-int/lit8 v3, v8, 0x64

    invoke-direct {v7}, Lcom/sigmob/sdk/base/common/af;->b()I

    move-result v5

    div-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :cond_6
    invoke-virtual {v1, v2, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lcom/sigmob/sdk/base/common/af;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v7, Lcom/sigmob/sdk/base/common/af;->b:I

    invoke-direct {v7, v2}, Lcom/sigmob/sdk/base/common/af;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_7

    :pswitch_e
    move-object/from16 v4, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move/from16 v5, p3

    if-nez v5, :cond_7

    :try_start_6
    invoke-direct {v4}, Lcom/sigmob/sdk/base/common/af;->b()I

    move-result v5

    goto :goto_a

    :catchall_5
    move-exception v0

    move-object v1, v4

    goto/16 :goto_20

    :cond_7
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v0

    move-object/from16 v17, v1

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    if-eqz v1, :cond_8

    move-object/from16 v1, v17

    goto :goto_b

    :cond_8
    move-object v1, v3

    :goto_b
    invoke-virtual {v0, v8, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v7

    invoke-virtual {v7}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealWidthDip()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v15, v8}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealHeightDip()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v14, v7}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTemplateId()I

    move-result v7

    if-lez v7, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTemplateId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v13, v7}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v7

    iget-object v7, v7, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    invoke-static {v7}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v7

    iget-object v7, v7, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v12, v7}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v7

    iget-object v7, v7, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    invoke-static {v7}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v7

    iget-object v7, v7, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v11, v7}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v0, v10, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/sigmob/sdk/base/common/af;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v4, Lcom/sigmob/sdk/base/common/af;->b:I

    if-lez v1, :cond_c

    if-lez v5, :cond_c

    mul-int/lit8 v5, v5, 0x64

    invoke-direct {v4}, Lcom/sigmob/sdk/base/common/af;->b()I

    move-result v1

    div-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_c
    invoke-virtual {v0, v2, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    invoke-static/range {p1 .. p2}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :goto_d
    move-object v1, v4

    goto/16 :goto_21

    :pswitch_f
    move-object/from16 v4, p0

    move-object/from16 v9, p2

    move/from16 v5, p3

    move-object/from16 v17, v1

    if-nez v5, :cond_d

    invoke-direct {v4}, Lcom/sigmob/sdk/base/common/af;->b()I

    move-result v0

    goto :goto_e

    :cond_d
    move v0, v5

    :goto_e
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    if-eqz v1, :cond_e

    move-object/from16 v1, v17

    goto :goto_f

    :cond_e
    move-object v1, v3

    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v5

    invoke-virtual {v5, v8, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v7

    invoke-virtual {v7}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealWidthDip()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v15, v8}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealHeightDip()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v14, v7}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTemplateId()I

    move-result v7

    if-lez v7, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTemplateId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v13, v7}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v7

    iget-object v7, v7, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    invoke-static {v7}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v7

    iget-object v7, v7, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v12, v7}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v7

    iget-object v7, v7, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    invoke-static {v7}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v7

    iget-object v7, v7, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v11, v7}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v5, v10, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v0}, Lcom/sigmob/sdk/base/common/af;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v4, Lcom/sigmob/sdk/base/common/af;->b:I

    if-lez v1, :cond_12

    if-lez v0, :cond_12

    mul-int/lit8 v0, v0, 0x64

    invoke-direct {v4}, Lcom/sigmob/sdk/base/common/af;->b()I

    move-result v1

    div-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_12
    invoke-virtual {v5, v2, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :pswitch_10
    move-object/from16 v4, p0

    move/from16 v5, p3

    move-object/from16 v17, v1

    if-nez v5, :cond_13

    invoke-direct {v4}, Lcom/sigmob/sdk/base/common/af;->b()I

    move-result v5

    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v9

    iget-boolean v1, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    if-eqz v1, :cond_14

    move-object/from16 v1, v17

    :goto_10
    move-object/from16 v18, v2

    goto :goto_11

    :cond_14
    move-object v1, v3

    goto :goto_10

    :goto_11
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v2

    invoke-virtual {v2, v8, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v7

    invoke-virtual {v7}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealWidthDip()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v15, v8}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealHeightDip()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v14, v8}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "-999"

    iget-object v14, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const-string v15, "_SLD_"

    if-eqz v14, :cond_15

    :try_start_7
    invoke-virtual {v2, v8, v8, v8, v8}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->updateClickMarco(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    invoke-virtual {v2, v15, v8}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_TURNX_"

    iget-object v14, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_x:Ljava/lang/String;

    invoke-virtual {v2, v8, v14}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_TURNY_"

    iget-object v14, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_y:Ljava/lang/String;

    invoke-virtual {v2, v8, v14}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_TURNZ_"

    iget-object v14, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_z:Ljava/lang/String;

    invoke-virtual {v2, v8, v14}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_TURNTIME_"

    iget-object v14, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_time:Ljava/lang/String;

    invoke-virtual {v2, v8, v14}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 p2, v7

    goto :goto_12

    :cond_15
    const-string v14, "2"

    move-object/from16 p2, v7

    iget-object v7, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-virtual {v2, v8, v8, v8, v8}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->updateClickMarco(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    invoke-virtual {v2, v15, v7}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "_XMAXACC_"

    iget-object v8, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->x_max_acc:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "_YMAXACC_"

    iget-object v8, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->y_max_acc:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "_ZMAXACC_"

    iget-object v8, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->z_max_acc:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_16
    iget-object v7, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->down:Lcom/czhj/sdk/common/utils/TouchLocation;

    iget-object v8, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->up:Lcom/czhj/sdk/common/utils/TouchLocation;

    invoke-virtual {v2, v7, v8}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->updateClickMarco(Lcom/czhj/sdk/common/utils/TouchLocation;Lcom/czhj/sdk/common/utils/TouchLocation;)V

    invoke-virtual {v2, v15, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTemplateId()I

    move-result v7

    if-lez v7, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTemplateId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v13, v7}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    iget-object v7, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    invoke-static {v7}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v7, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v12, v7}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    iget-object v7, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    invoke-static {v7}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_19

    iget-object v7, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v11, v7}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    invoke-virtual {v2, v10, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/sigmob/sdk/base/common/af;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget v6, v4, Lcom/sigmob/sdk/base/common/af;->b:I

    if-lez v6, :cond_1a

    if-lez v5, :cond_1a

    mul-int/lit8 v5, v5, 0x64

    invoke-direct {v4}, Lcom/sigmob/sdk/base/common/af;->b()I

    move-result v6

    div-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v18

    invoke-virtual {v2, v6, v5}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    move-object/from16 v5, p1

    move-object/from16 v6, v20

    goto :goto_14

    :cond_1a
    move-object/from16 v6, v18

    invoke-virtual {v2, v6, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :goto_14
    invoke-static {v5, v6}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "template_id"

    iget-object v10, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->template_id:Ljava/lang/String;

    invoke-virtual {v7, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "sld"

    iget-object v10, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    invoke-virtual {v7, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "adarea_x"

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "adarea_y"

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "adarea_w"

    invoke-virtual/range {p2 .. p2}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealWidthDip()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "adarea_h"

    invoke-virtual/range {p2 .. p2}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealHeightDip()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "turn_x"

    iget-object v3, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_x:Ljava/lang/String;

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "turn_y"

    iget-object v3, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_y:Ljava/lang/String;

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "turn_z"

    iget-object v3, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_z:Ljava/lang/String;

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "turn_time"

    iget-object v3, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_time:Ljava/lang/String;

    :goto_15
    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_1b
    const-string v0, "2"

    iget-object v3, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "x_max_acc"

    iget-object v3, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->x_max_acc:Ljava/lang/String;

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "y_max_acc"

    iget-object v3, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->y_max_acc:Ljava/lang/String;

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "z_max_acc"

    iget-object v3, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->z_max_acc:Ljava/lang/String;

    goto :goto_15

    :cond_1c
    :goto_16
    const-string v0, "click_area"

    iget-object v3, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "click_scene"

    iget-object v3, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cwidth"

    invoke-virtual/range {p2 .. p2}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealWidthDip()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cheight"

    invoke-virtual/range {p2 .. p2}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealHeightDip()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "is_final_click"

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "coordinate"

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->getCoordinate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v9, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    new-instance v1, Lcom/sigmob/sdk/base/common/O;

    invoke-direct {v1, v7}, Lcom/sigmob/sdk/base/common/O;-><init>(Ljava/util/HashMap;)V

    invoke-static {v0, v6, v5, v1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    goto/16 :goto_d

    :pswitch_11
    move-object/from16 v4, p0

    move-object/from16 v9, p2

    move/from16 v5, p3

    move-object/from16 v17, v1

    move-object v0, v2

    if-nez v5, :cond_1d

    invoke-direct {v4}, Lcom/sigmob/sdk/base/common/af;->b()I

    move-result v1

    goto :goto_17

    :cond_1d
    move v1, v5

    :goto_17
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v5

    iget-boolean v5, v5, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    if-eqz v5, :cond_1e

    move-object/from16 v5, v17

    goto :goto_18

    :cond_1e
    move-object v5, v3

    :goto_18
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v2

    invoke-virtual {v2, v8, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v7

    invoke-virtual {v7}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealWidthDip()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v15, v8}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealHeightDip()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v14, v7}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTemplateId()I

    move-result v7

    if-lez v7, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTemplateId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v13, v7}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v7

    iget-object v7, v7, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    invoke-static {v7}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v7

    iget-object v7, v7, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v12, v7}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v7

    iget-object v7, v7, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    invoke-static {v7}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_21

    invoke-virtual/range {p1 .. p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v7

    iget-object v7, v7, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v11, v7}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    invoke-virtual {v2, v10, v5}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v1}, Lcom/sigmob/sdk/base/common/af;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, v4, Lcom/sigmob/sdk/base/common/af;->b:I

    if-lez v5, :cond_22

    if-lez v1, :cond_22

    mul-int/lit8 v1, v1, 0x64

    invoke-direct {v4}, Lcom/sigmob/sdk/base/common/af;->b()I

    move-result v3

    div-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_22
    invoke-virtual {v2, v0, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :pswitch_12
    move-object/from16 v4, p0

    move-object/from16 v9, p2

    move/from16 v5, p3

    move-object v0, v2

    if-nez v5, :cond_23

    invoke-direct {v4}, Lcom/sigmob/sdk/base/common/af;->b()I

    move-result v1

    goto :goto_19

    :cond_23
    move v1, v5

    :goto_19
    const-string v2, "endcard"

    move-object/from16 v7, p1

    invoke-direct {v4, v7, v2, v1, v9}, Lcom/sigmob/sdk/base/common/af;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v7}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v2

    invoke-direct {v4, v1}, Lcom/sigmob/sdk/base/common/af;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, v4, Lcom/sigmob/sdk/base/common/af;->b:I

    if-lez v5, :cond_24

    if-lez v1, :cond_24

    mul-int/lit8 v1, v1, 0x64

    invoke-direct {v4}, Lcom/sigmob/sdk/base/common/af;->b()I

    move-result v3

    div-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :cond_24
    invoke-virtual {v2, v0, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    invoke-static/range {p1 .. p2}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    goto/16 :goto_d

    :pswitch_13
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move/from16 v5, p3

    if-nez v5, :cond_25

    invoke-direct {v4}, Lcom/sigmob/sdk/base/common/af;->b()I

    move-result v0

    goto :goto_1b

    :cond_25
    move v0, v5

    :goto_1b
    const-string v1, "fourElements"

    const-string v2, "close"

    :goto_1c
    invoke-direct {v4, v7, v1, v0, v2}, Lcom/sigmob/sdk/base/common/af;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_d

    :pswitch_14
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move/from16 v5, p3

    if-nez v5, :cond_26

    invoke-direct {v4}, Lcom/sigmob/sdk/base/common/af;->b()I

    move-result v0

    goto :goto_1d

    :cond_26
    move v0, v5

    :goto_1d
    const-string v1, "fourElements"

    move-object/from16 v2, v19

    goto :goto_1c

    :pswitch_15
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move/from16 v5, p3

    if-nez v5, :cond_27

    invoke-direct {v4}, Lcom/sigmob/sdk/base/common/af;->b()I

    move-result v0

    goto :goto_1e

    :cond_27
    move v0, v5

    :goto_1e
    const-string v1, "closecard"

    const-string v2, "close"

    goto :goto_1c

    :pswitch_16
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move/from16 v5, p3

    move-object/from16 v2, v19

    if-nez v5, :cond_28

    invoke-direct {v4}, Lcom/sigmob/sdk/base/common/af;->b()I

    move-result v0

    goto :goto_1f

    :cond_28
    move v0, v5

    :goto_1f
    const-string v1, "closecard"

    goto :goto_1c

    :pswitch_17
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move-object/from16 v9, p2

    move/from16 v5, p3

    move-object v0, v2

    invoke-direct/range {p0 .. p3}, Lcom/sigmob/sdk/base/common/af;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;I)V

    invoke-virtual {v7}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v1

    invoke-direct {v4, v5}, Lcom/sigmob/sdk/base/common/af;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v4, Lcom/sigmob/sdk/base/common/af;->b:I

    if-lez v2, :cond_29

    if-lez v5, :cond_29

    mul-int/lit8 v2, v5, 0x64

    invoke-direct {v4}, Lcom/sigmob/sdk/base/common/af;->b()I

    move-result v3

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_29
    invoke-virtual {v1, v0, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto/16 :goto_1a

    :pswitch_18
    move-object/from16 v7, p1

    move-object/from16 v9, p2

    move/from16 v8, p3

    move-object/from16 v17, v1

    const/4 v2, 0x0

    move-object/from16 v1, p0

    :try_start_8
    invoke-direct {v1, v7, v9, v8, v2}, Lcom/sigmob/sdk/base/common/af;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v7}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v0

    const-string v2, "_SETCLOSETIME_"

    iget v8, v1, Lcom/sigmob/sdk/base/common/af;->e:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v2, v8}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v1, Lcom/sigmob/sdk/base/common/af;->b:I

    invoke-direct {v1, v2}, Lcom/sigmob/sdk/base/common/af;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_PLAYFIRSTFRAME_"

    invoke-virtual {v0, v2, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_ISTRUNCATION_"

    invoke-direct {v1}, Lcom/sigmob/sdk/base/common/af;->a()Z

    move-result v4

    if-eqz v4, :cond_2a

    move-object/from16 v3, v17

    :cond_2a
    invoke-virtual {v0, v2, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p2}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_21

    :catchall_6
    move-exception v0

    :goto_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RewardVideoViewAbilitySessionrecordDisplayEvent: error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_21
    return v16

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7cd3242c -> :sswitch_18
        -0x7a3c9f5f -> :sswitch_17
        -0x7222c9a5 -> :sswitch_16
        -0x7172e67f -> :sswitch_15
        -0x4bf6736d -> :sswitch_14
        -0x3a82fa41 -> :sswitch_13
        -0x37b0b0d1 -> :sswitch_12
        -0x321793ce -> :sswitch_11
        -0x2e4ef22a -> :sswitch_10
        -0x23bacec7 -> :sswitch_f
        -0x1e7107ff -> :sswitch_e
        -0x16bbf48a -> :sswitch_d
        -0x1244fe7e -> :sswitch_c
        -0xe1ebacd -> :sswitch_b
        -0x266f082 -> :sswitch_a
        0x335219 -> :sswitch_9
        0x35dafd -> :sswitch_8
        0x35e57f -> :sswitch_7
        0x5a5c588 -> :sswitch_6
        0x68ac462 -> :sswitch_5
        0x6dbd714 -> :sswitch_4
        0x1c1dab05 -> :sswitch_3
        0x32554ade -> :sswitch_2
        0x3a209295 -> :sswitch_1
        0x5b4d31e4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;ZI)Z
    .locals 0

    .line 10
    iput-boolean p2, p0, Lcom/sigmob/sdk/base/common/af;->c:Z

    iput p3, p0, Lcom/sigmob/sdk/base/common/af;->d:I

    const/4 p1, 0x1

    return p1
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .locals 3

    .line 5
    const-string v0, "ad_close"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/af;->b()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sigmob/sdk/base/common/af;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
