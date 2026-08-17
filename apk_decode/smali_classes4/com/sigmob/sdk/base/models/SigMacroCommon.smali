.class public Lcom/sigmob/sdk/base/models/SigMacroCommon;
.super Lcom/czhj/sdk/common/track/BaseMacroCommon;


# static fields
.field public static final DEFAULT_XY:Ljava/lang/String; = "-999"

.field public static final _ADSCENEID_:Ljava/lang/String; = "_ADSCENEID_"

.field public static final _ADSCENE_:Ljava/lang/String; = "_ADSCENE_"

.field public static final _BEGINTIME_:Ljava/lang/String; = "_BEGINTIME_"

.field public static final _BEHAVIOR_:Ljava/lang/String; = "_BEHAVIOR_"

.field public static final _CLICKAREA_:Ljava/lang/String; = "_CLICKAREA_"

.field public static final _CLICKID_:Ljava/lang/String; = "_CLICKID_"

.field public static final _CLICKSCENE_:Ljava/lang/String; = "_CLICKSCENE_"

.field public static final _COMPLETED_:Ljava/lang/String; = "_COMPLETED_"

.field public static final _CURRENCY_:Ljava/lang/String; = "_CURRENCY_"

.field public static final _DOWNTS_:Ljava/lang/String; = "_DOWNTS_"

.field public static final _DOWNX_:Ljava/lang/String; = "_DOWNX_"

.field public static final _DOWNY_:Ljava/lang/String; = "_DOWNY_"

.field public static final _ENDTIME_:Ljava/lang/String; = "_ENDTIME_"

.field public static final _FINALCLICK_:Ljava/lang/String; = "_FINALCLICK_"

.field public static final _HEIGHT_:Ljava/lang/String; = "_HEIGHT_"

.field public static final _HIGHESTLOSSPRICE_:Ljava/lang/String; = "_HIGHESTLOSSPRICE_"

.field public static final _ISNC_:Ljava/lang/String; = "_ISNC_"

.field public static final _IS_TRUNCATION_:Ljava/lang/String; = "_ISTRUNCATION_"

.field public static final _PLAYFIRSTFRAME_:Ljava/lang/String; = "_PLAYFIRSTFRAME_"

.field public static final _PLAYLASTFRAME_:Ljava/lang/String; = "_PLAYLASTFRAME_"

.field public static final _PROGRESS_:Ljava/lang/String; = "_PROGRESS_"

.field public static final _PUBLISHERPRICE_:Ljava/lang/String; = "_PUBLISHERPRICE_"

.field public static final _SCENE_:Ljava/lang/String; = "_SCENE_"

.field public static final _SETCLOSETIME_:Ljava/lang/String; = "_SETCLOSETIME_"

.field public static final _SHOWSKIPTIME_:Ljava/lang/String; = "_SHOWSKIPTIME_"

.field public static final _SLD_:Ljava/lang/String; = "_SLD_"

.field public static final _SLOTHEIGHT_:Ljava/lang/String; = "_SLOTHEIGHT_"

.field public static final _SLOTWIDTH_:Ljava/lang/String; = "_SLOTWIDTH_"

.field public static final _STATUS_:Ljava/lang/String; = "_STATUS_"

.field public static final _TEMPLATE_:Ljava/lang/String; = "_TEMPLATE_"

.field public static final _TYPE_:Ljava/lang/String; = "_TYPE_"

.field public static final _UPTS_:Ljava/lang/String; = "_UPTS_"

.field public static final _UPX_:Ljava/lang/String; = "_UPX_"

.field public static final _UPY_:Ljava/lang/String; = "_UPY_"

.field public static final _VIDEOTIME_:Ljava/lang/String; = "_VIDEOTIME_"

.field public static final _VMD5_:Ljava/lang/String; = "_VMD5_"

.field public static final _VURL_:Ljava/lang/String; = "_VURL_"

.field public static final _WIDTH_:Ljava/lang/String; = "_WIDTH_"

.field private static final initialCurrentTimeMillis:J

.field private static final initialUptimeMillis:J

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/sigmob/sdk/base/models/SigMacroCommon;->initialUptimeMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/sigmob/sdk/base/models/SigMacroCommon;->initialCurrentTimeMillis:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/czhj/sdk/common/track/BaseMacroCommon;-><init>()V

    return-void
.end method

.method public static convertUptimeMillisToCurrentTimeMillis(J)J
    .locals 2

    sget-wide v0, Lcom/sigmob/sdk/base/models/SigMacroCommon;->initialUptimeMillis:J

    sub-long/2addr p0, v0

    sget-wide v0, Lcom/sigmob/sdk/base/models/SigMacroCommon;->initialCurrentTimeMillis:J

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static getCoordinate(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Z)Ljava/lang/String;
    .locals 3

    .line 2
    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    :goto_2
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    :goto_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {v1, v0}, Lcom/czhj/sdk/common/utils/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0}, Lcom/czhj/sdk/common/utils/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v2, v0}, Lcom/czhj/sdk/common/utils/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, p0, v2, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%d,%d,%d,%d"

    invoke-static {p2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getMacroValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "unFind"

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "_SLOTWIDTH_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "_STATUS_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "_WIDTH_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_3
    const-string v1, "_BEHAVIOR_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "_SCENE_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v1, "_HEIGHT_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_1

    :sswitch_6
    const-string v1, "_SLOTHEIGHT_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_7
    const-string v1, "_TYPE_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_8
    const-string v1, "_BEGINTIME_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    const-string v1, "0"

    packed-switch p0, :pswitch_data_0

    return-object v0

    :pswitch_0
    :try_start_1
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealHeightDip()Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lcom/czhj/sdk/common/ClientMetadata;->getDeviceScreenRealWidthDip()Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    return-object v1

    :pswitch_3
    const-string p0, "2"

    return-object p0

    :pswitch_4
    return-object v1

    :pswitch_5
    const-string p0, "1"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5eca2e18 -> :sswitch_8
        -0x591a3c9a -> :sswitch_7
        -0x2779fd65 -> :sswitch_6
        -0x18cb3927 -> :sswitch_5
        0x32e2ea92 -> :sswitch_4
        0x3520a2ce -> :sswitch_3
        0x3a0a7c98 -> :sswitch_2
        0x4647616e -> :sswitch_1
        0x7ba1c096 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCoordinate()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "_DOWNX_"

    invoke-virtual {p0, v0}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->getMarcoKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_DOWNY_"

    invoke-virtual {p0, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->getMarcoKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_UPX_"

    invoke-virtual {p0, v2}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->getMarcoKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_UPY_"

    invoke-virtual {p0, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->getMarcoKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s,%s,%s,%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replaceWithDefault(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-super {p0, p1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->replaceWithDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "macroProcess() called with:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v4, "unFind"

    if-eqz v1, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->getMacroValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "macroProcess() called with: ["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    return-object v0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public updateClickMarco(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Z)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    move-object p1, p2

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    :goto_2
    if-eqz p3, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p3

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p1

    invoke-static {v1, v0}, Lcom/czhj/sdk/common/utils/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "_DOWNX_"

    invoke-virtual {p0, v6, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/czhj/sdk/common/utils/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_DOWNY_"

    invoke-virtual {p0, v2, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v0}, Lcom/czhj/sdk/common/utils/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_UPX_"

    invoke-virtual {p0, v2, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lcom/czhj/sdk/common/utils/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "_UPY_"

    invoke-virtual {p0, v0, p3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->convertUptimeMillisToCurrentTimeMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string v0, "_DOWNTS_"

    invoke-virtual {p0, v0, p3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->convertUptimeMillisToCurrentTimeMillis(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "_UPTS_"

    invoke-virtual {p0, p2, p1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_SLD_"

    const-string p2, "0"

    invoke-virtual {p0, p1, p2}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateClickMarco(Lcom/czhj/sdk/common/utils/TouchLocation;Lcom/czhj/sdk/common/utils/TouchLocation;)V
    .locals 3

    .line 2
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    if-nez p1, :cond_1

    move-object v1, p2

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, p2

    :goto_1
    invoke-virtual {v1}, Lcom/czhj/sdk/common/utils/TouchLocation;->getX()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2, v0}, Lcom/czhj/sdk/common/utils/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lcom/czhj/sdk/common/utils/TouchLocation;->getY()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, v0}, Lcom/czhj/sdk/common/utils/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/czhj/sdk/common/utils/TouchLocation;->getX()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2, v0}, Lcom/czhj/sdk/common/utils/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/czhj/sdk/common/utils/TouchLocation;->getY()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, v1, v2, p1}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->updateClickMarco(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_SLD_"

    const-string p2, "0"

    invoke-virtual {p0, p1, p2}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateClickMarco(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 3
    const-string v0, "_DOWNX_"

    invoke-virtual {p0, v0, p1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_DOWNY_"

    invoke-virtual {p0, v0, p2}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "_UPX_"

    invoke-virtual {p0, p2, p3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "_UPY_"

    invoke-virtual {p0, p2, p4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "-999"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "_DOWNTS_"

    invoke-virtual {p0, p1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->getMarcoKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "_UPTS_"

    invoke-virtual {p0, p3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->getMarcoKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p4}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 p1, 0x32

    invoke-virtual {p2, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
