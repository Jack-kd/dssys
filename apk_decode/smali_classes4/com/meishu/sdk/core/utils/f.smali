.class public Lcom/meishu/sdk/core/utils/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/ad/AdSlot;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 192
    const-string v0, "com.tencent.mm.opensdk.openapi.BaseWXApiImplV10"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 193
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const-class v4, Ljava/lang/String;

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 195
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {p0, p1, v3, v4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 196
    const-string p1, "com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram$Req"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v1, 0x0

    .line 197
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 198
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 199
    const-string v3, "userName"

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 200
    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 201
    invoke-interface {p2}, Lcom/meishu/sdk/core/ad/AdSlot;->getWx_username()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    const-string v3, "path"

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 203
    invoke-virtual {p1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 204
    invoke-interface {p2}, Lcom/meishu/sdk/core/ad/AdSlot;->getWx_path()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    const-string p1, "com.tencent.mm.opensdk.modelbase.BaseReq"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 206
    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object p1

    const-string p2, "sendReq"

    invoke-virtual {v0, p2, p1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 207
    invoke-virtual {p1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 208
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;ILcom/meishu/sdk/platform/ms/splash/ShakeResult;)Ljava/lang/String;
    .locals 7

    .line 167
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v1, p1, :cond_9

    if-eq v0, p1, :cond_9

    const/16 v3, 0x200

    if-ne v3, p1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v3, 0x4

    if-eq v3, p1, :cond_7

    const/16 v3, 0x40

    if-ne v3, p1, :cond_1

    goto :goto_3

    :cond_1
    const/16 v1, 0x8

    if-eq v1, p1, :cond_6

    const/16 v1, 0x100

    if-ne v1, p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 p2, 0x80

    if-eq p2, p1, :cond_5

    const/16 p2, 0x20

    if-ne p2, p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :cond_4
    :goto_0
    move v1, v0

    goto/16 :goto_5

    :cond_5
    :goto_1
    const/4 p1, 0x3

    move v1, p1

    goto/16 :goto_5

    :cond_6
    :goto_2
    const/4 v0, 0x5

    if-eqz p2, :cond_4

    .line 168
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/ms/splash/ShakeResult;->getTurnX()F

    move-result p1

    float-to-int p1, p1

    .line 169
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/ms/splash/ShakeResult;->getTurnY()F

    move-result v1

    float-to-int v1, v1

    .line 170
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/ms/splash/ShakeResult;->getTurnZ()F

    move-result v2

    float-to-int v2, v2

    .line 171
    const-string v3, "__M_TURN_X__"

    const-string v4, "__M_TURN_Y__"

    const-string v5, "__M_TURN_Z__"

    const-string v6, "__M_TURN_TIME__"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 173
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/ms/splash/ShakeResult;->getTotalTurnTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, v1, v2, p2}, [Ljava/lang/String;

    move-result-object p1

    .line 176
    invoke-static {p0, v3, p1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 177
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_7
    :goto_3
    if-eqz p2, :cond_8

    .line 178
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/ms/splash/ShakeResult;->getShakeX()F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 179
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/ms/splash/ShakeResult;->getShakeY()F

    move-result v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 180
    invoke-virtual {p2}, Lcom/meishu/sdk/platform/ms/splash/ShakeResult;->getShakeZ()F

    move-result p2

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 181
    const-string v0, "__M_XMAX_ACC__"

    const-string v3, "__M_YMAX_ACC__"

    const-string v4, "__M_ZMAX_ACC__"

    filled-new-array {v0, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, v2, p2}, [Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-static {p0, v0, p1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 186
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_8
    move v0, v1

    goto :goto_5

    :cond_9
    :goto_4
    move v1, v0

    move v0, v2

    .line 187
    :goto_5
    const-string p1, "__M_SLD__"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 188
    const-string p1, "__M_SLD2__"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 189
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 190
    const-string p2, "__M_DENSITY__"

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 191
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/BaseAdSlot;)Ljava/lang/String;
    .locals 2

    .line 52
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppendInfo()Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppendInfo()Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->getClickExtInfo()Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 54
    :cond_1
    const-string v0, "__REWARD_TMP_ID__"

    const-string v1, "__WEB_TEMP_ID__"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;->getRewardTempId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot$ClickExtInfo;->getWebTempId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-static {p0, v0, p1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 58
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    return-object p0

    .line 59
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p1

    .line 1
    const-string v1, "-999"

    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/IAd;->getTouchData()Lcom/meishu/sdk/core/ad/TouchData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/TouchData;->getTouchPosition()Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;

    move-result-object v2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/16 v5, -0x3e7

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v2}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->getDownX()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->getDownX()I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v5

    :goto_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {v2}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->getDownY()I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->getDownY()I

    move-result v7

    goto :goto_3

    :cond_3
    :goto_2
    move v7, v5

    :goto_3
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v2, :cond_5

    .line 5
    invoke-virtual {v2}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->getUpX()I

    move-result v8

    if-nez v8, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->getUpX()I

    move-result v8

    goto :goto_5

    :cond_5
    :goto_4
    move v8, v5

    :goto_5
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v2, :cond_7

    .line 6
    invoke-virtual {v2}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->getUpY()I

    move-result v9

    if-nez v9, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->getUpY()I

    move-result v5

    :cond_7
    :goto_6
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v9, 0x3e8

    if-eqz v2, :cond_9

    .line 7
    invoke-virtual {v2}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->getTouchTime()Ljava/sql/Timestamp;

    move-result-object v11

    if-nez v11, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v2}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->getTouchTime()Ljava/sql/Timestamp;

    move-result-object v11

    invoke-virtual {v11}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v11

    div-long/2addr v11, v9

    goto :goto_8

    :cond_9
    :goto_7
    div-long v11, v3, v9

    :goto_8
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    if-eqz v2, :cond_b

    .line 8
    invoke-virtual {v2}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->getTouchTime()Ljava/sql/Timestamp;

    move-result-object v9

    if-nez v9, :cond_a

    goto :goto_9

    :cond_a
    invoke-virtual {v2}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->getTouchTime()Ljava/sql/Timestamp;

    move-result-object v3

    invoke-virtual {v3}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v3

    :cond_b
    :goto_9
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    if-eqz v2, :cond_d

    .line 9
    invoke-virtual {v2}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->getDownTime()Ljava/sql/Timestamp;

    move-result-object v3

    if-nez v3, :cond_c

    goto :goto_a

    :cond_c
    invoke-virtual {v2}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->getDownTime()Ljava/sql/Timestamp;

    move-result-object v3

    invoke-virtual {v3}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_b

    :cond_d
    :goto_a
    const-string v3, "__M_DOWN_TIME__"

    :goto_b
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    if-eqz v2, :cond_f

    .line 10
    invoke-virtual {v2}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->getUpTime()Ljava/sql/Timestamp;

    move-result-object v3

    if-nez v3, :cond_e

    goto :goto_c

    :cond_e
    invoke-virtual {v2}, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->getUpTime()Ljava/sql/Timestamp;

    move-result-object v2

    invoke-virtual {v2}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_d

    :cond_f
    :goto_c
    const-string v2, "__M_UP_TIME__"

    :goto_d
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 11
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, -0x80000000

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/meishu/sdk/core/utils/m;->b(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    .line 12
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "0"

    if-eqz v3, :cond_10

    move-object v8, v4

    .line 13
    :cond_10
    :try_start_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_11

    move-object v5, v4

    .line 14
    :catchall_0
    :cond_11
    :try_start_2
    instance-of v2, v0, Lcom/meishu/sdk/platform/ms/c;

    if-eqz v2, :cond_15

    .line 15
    check-cast v0, Lcom/meishu/sdk/platform/ms/c;

    invoke-interface {v0}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    move-result-object v0

    .line 16
    instance-of v2, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    if-eqz v2, :cond_15

    .line 17
    check-cast v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDefault_coord()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 18
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object v6, v0

    .line 19
    :cond_12
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object v7, v0

    .line 20
    :cond_13
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move-object v8, v0

    .line 21
    :cond_14
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_15

    move-object/from16 v13, p0

    move-object/from16 v17, v0

    :goto_e
    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    goto :goto_10

    :cond_15
    :goto_f
    move-object/from16 v13, p0

    move-object/from16 v17, v5

    goto :goto_e

    :catchall_1
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f

    .line 23
    :goto_10
    invoke-static/range {v13 .. v21}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)Ljava/lang/String;
    .locals 12

    const-string v1, "__CLICK_ID__"

    .line 35
    :try_start_0
    invoke-interface {p1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    move-result-object v2

    .line 36
    instance-of v0, v2, Lcom/meishu/sdk/core/ad/BaseAdSlot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    .line 37
    :try_start_1
    move-object v0, v2

    check-cast v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getClkActType()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    const/16 v3, 0x40

    if-eq v0, v3, :cond_0

    const/16 v3, 0x100

    if-eq v0, v3, :cond_0

    .line 38
    :try_start_2
    invoke-static {p0, p1}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, p0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto :goto_2

    .line 39
    :cond_0
    :try_start_3
    move-object p1, v2

    check-cast p1, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDefault_coord()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    if-eqz v4, :cond_1

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 41
    div-long v5, v7, v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const-string v10, "__M_DOWN_TIME__"

    const-string v11, "__M_UP_TIME__"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v3, p0

    move-object v8, p1

    :try_start_4
    invoke-static/range {v3 .. v11}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v3, p0

    goto :goto_0

    :cond_1
    move-object v3, p0

    .line 42
    const-string v4, "-999"

    move-wide p0, v5

    const-string v5, "-999"

    const-string v6, "-999"

    const-string v7, "-999"

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 44
    div-long p0, v8, p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const-string v10, "__M_DOWN_TIME__"

    const-string v11, "__M_UP_TIME__"

    move-object v8, p0

    invoke-static/range {v3 .. v11}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 45
    :goto_1
    :try_start_5
    move-object p0, v2

    check-cast p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-static {p1, p0}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/BaseAdSlot;)Ljava/lang/String;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :goto_2
    move-object p0, p1

    move-object p1, v3

    .line 46
    :goto_3
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p0, p1

    goto :goto_5

    :catch_0
    move-exception v0

    :goto_4
    move-object p0, v0

    goto :goto_7

    :cond_2
    move-object v3, p0

    .line 47
    :goto_5
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-interface {v2}, Lcom/meishu/sdk/core/ad/AdSlot;->getClickid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_6

    :cond_3
    invoke-interface {v2}, Lcom/meishu/sdk/core/ad/AdSlot;->getClickid()Ljava/lang/String;

    move-result-object v1

    :goto_6
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 50
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-object p0

    :catch_1
    move-exception v0

    move-object v3, p0

    goto :goto_4

    .line 51
    :goto_7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 24
    const-string v6, "__M_DOWN_TIME__"

    const-string v7, "__M_UP_TIME__"

    const-string v0, "__DOWN_X__"

    const-string v1, "__DOWN_Y__"

    const-string v2, "__UP_X__"

    const-string v3, "__UP_Y__"

    const-string v4, "__MS_EVENT_SEC__"

    const-string v5, "__MS_EVENT_MSEC__"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 27
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 28
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 29
    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    .line 30
    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    .line 31
    invoke-static {p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static/range {p8 .. p8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object p7, v1

    move-object/from16 p8, v2

    filled-new-array/range {p1 .. p8}, [Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-static {p0, v0, p1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 34
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/meishu/sdk/core/ad/AdSlot;Lcom/meishu/sdk/platform/ms/c;I)V
    .locals 3

    .line 285
    :try_start_0
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getDp_fail()[Ljava/lang/String;

    move-result-object p1

    .line 286
    invoke-static {p1, p3}, Lcom/meishu/sdk/core/utils/i0;->a([Ljava/lang/String;I)[Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 287
    const-string p3, "ClickHandler"

    const-string v0, "send dp_fail"

    invoke-static {p3, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    array-length p3, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    aget-object v1, p1, v0

    .line 289
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 290
    invoke-static {v1, p2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    invoke-static {p0, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    .line 291
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/meishu/sdk/platform/ms/c;)V
    .locals 5

    .line 221
    :try_start_0
    invoke-interface {p1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    move-result-object v0

    .line 222
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/AdSlot;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/AdSlot;->getDn_succ()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/AdSlot;->getDn_inst_start()[Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/AdSlot;->getDn_inst_succ()[Ljava/lang/String;

    move-result-object v4

    .line 223
    sput-object v1, Lcom/meishu/sdk/core/utils/AppStoreUtil;->a:Ljava/lang/String;

    .line 224
    sput-object v2, Lcom/meishu/sdk/core/utils/AppStoreUtil;->b:[Ljava/lang/String;

    .line 225
    sput-object v3, Lcom/meishu/sdk/core/utils/AppStoreUtil;->c:[Ljava/lang/String;

    .line 226
    sput-object v4, Lcom/meishu/sdk/core/utils/AppStoreUtil;->d:[Ljava/lang/String;

    .line 227
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/AdSlot;->getDn_start()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/meishu/sdk/core/utils/f;->a([Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 228
    const-string v1, "ClickHandler"

    const-string v2, "Report send dn_start"

    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 230
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 231
    new-instance v4, Lcom/meishu/sdk/core/utils/i;

    invoke-direct {v4}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    invoke-static {p0, v3, v4}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/AdSlot;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 233
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 234
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 235
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "honor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 236
    const-string p1, "com.hihonor.appmarket"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static a(Lcom/meishu/sdk/core/ad/AdSlot;Landroid/content/Context;Lcom/meishu/sdk/platform/ms/c;Z)V
    .locals 3

    .line 279
    :try_start_0
    invoke-interface {p0}, Lcom/meishu/sdk/core/ad/AdSlot;->getDp_succ()[Ljava/lang/String;

    move-result-object p0

    .line 280
    invoke-static {p0, p3}, Lcom/meishu/sdk/core/utils/i0;->a([Ljava/lang/String;I)[Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 281
    array-length p3, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    aget-object v1, p0, v0

    .line 282
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 283
    invoke-static {v1, p2}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/meishu/sdk/core/utils/i;

    invoke-direct {v2}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    invoke-static {p1, v1, v2}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    .line 284
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static a(Lcom/meishu/sdk/platform/ms/c;Landroid/content/Context;Lcom/meishu/sdk/core/ad/AdSlot;Z)V
    .locals 4

    .line 154
    :try_start_0
    invoke-interface {p0}, Lcom/meishu/sdk/platform/ms/c;->getInteractionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 155
    invoke-interface {p0}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    move-result-object p2

    invoke-interface {p2}, Lcom/meishu/sdk/core/ad/AdSlot;->getDirect_market()I

    move-result p2

    if-ne p2, v1, :cond_0

    invoke-interface {p0}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    move-result-object p2

    invoke-interface {p2}, Lcom/meishu/sdk/core/ad/AdSlot;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 156
    invoke-static {p1, p0}, Lcom/meishu/sdk/core/utils/f;->a(Landroid/content/Context;Lcom/meishu/sdk/platform/ms/c;)V

    return-void

    .line 157
    :cond_0
    invoke-static {p1, p0}, Lcom/meishu/sdk/core/utils/f;->b(Landroid/content/Context;Lcom/meishu/sdk/platform/ms/c;)V

    return-void

    .line 158
    :cond_1
    invoke-interface {p0}, Lcom/meishu/sdk/platform/ms/c;->getInteractionType()I

    move-result v0

    if-nez v0, :cond_6

    if-eqz p3, :cond_5

    .line 159
    sget p3, Lcom/meishu/sdk/core/utils/r0;->o:I

    const/4 v0, 0x0

    if-ne p3, v1, :cond_2

    move p3, v1

    goto :goto_0

    :cond_2
    move p3, v0

    .line 160
    :goto_0
    instance-of v2, p2, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    if-eqz v2, :cond_4

    .line 161
    move-object v2, p2

    check-cast v2, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getUob()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 162
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getUob()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    move v1, p3

    .line 163
    :goto_1
    invoke-static {p0, p1, p2, v1}, Lcom/meishu/sdk/core/utils/f;->b(Lcom/meishu/sdk/platform/ms/c;Landroid/content/Context;Lcom/meishu/sdk/core/ad/AdSlot;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 164
    :cond_5
    :try_start_1
    check-cast p2, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/meishu/sdk/core/utils/p1;->a([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception p0

    .line 165
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 166
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_2
    return-void
.end method

.method public static a(Lcom/meishu/sdk/platform/ms/c;Lcom/meishu/sdk/core/ad/AdSlot;)V
    .locals 13

    const-string v0, ","

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 118
    :try_start_0
    instance-of v5, p1, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    if-eqz v5, :cond_3

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, p1

    check-cast v6, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v6}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_index()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, p1

    check-cast v6, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v6}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getClkPower()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 120
    move-object v5, p1

    check-cast v5, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getLoadedTime()J

    .line 121
    move-object v5, p1

    check-cast v5, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    move-result-object v5

    .line 122
    invoke-static {v5, v2}, Lcom/meishu/sdk/core/utils/v0;->a(Ljava/lang/String;I)V

    .line 123
    sget-object v6, Lcom/meishu/sdk/core/utils/v0;->a:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v8, p1

    check-cast v8, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v8}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getLoadedTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meishu/sdk/core/utils/v0$a;

    if-nez v6, :cond_0

    .line 124
    new-instance v6, Lcom/meishu/sdk/core/utils/v0$a;

    invoke-direct {v6}, Lcom/meishu/sdk/core/utils/v0$a;-><init>()V

    goto :goto_0

    :catch_0
    move-exception v5

    move v7, v3

    goto :goto_3

    .line 125
    :cond_0
    :goto_0
    iget-boolean v7, v6, Lcom/meishu/sdk/core/utils/v0$a;->b:Z

    if-nez v7, :cond_1

    .line 126
    iget-boolean v7, v6, Lcom/meishu/sdk/core/utils/v0$a;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    if-nez v7, :cond_2

    .line 127
    :try_start_1
    invoke-static {v5, v1}, Lcom/meishu/sdk/core/utils/v0;->a(Ljava/lang/String;I)V

    goto :goto_2

    :catch_1
    move-exception v5

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v8, 0x1

    .line 128
    iput-boolean v8, v6, Lcom/meishu/sdk/core/utils/v0$a;->b:Z

    .line 129
    sget-object v8, Lcom/meishu/sdk/core/utils/v0;->a:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, p1

    check-cast v5, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getLoadedTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :cond_3
    move v7, v3

    goto :goto_4

    .line 130
    :goto_3
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 131
    :goto_4
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getClickUrl()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 132
    const-string v6, "ClickHandler"

    const-string v8, "send handleClick"

    invoke-static {v6, v8}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    array-length v6, v5

    move v8, v3

    :goto_5
    if-ge v8, v6, :cond_c

    aget-object v9, v5, v8

    .line 134
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 135
    invoke-interface {p0}, Lcom/meishu/sdk/core/ad/IAd;->getAdView()Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 136
    invoke-interface {p0}, Lcom/meishu/sdk/core/ad/IAd;->getAdView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-interface {p0}, Lcom/meishu/sdk/core/ad/IAd;->getAdView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-static {v9, v10, v11}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    :cond_4
    if-eqz v7, :cond_6

    .line 137
    move-object v10, p1

    check-cast v10, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v10}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDclk()Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, p1

    check-cast v10, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v10}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDclk()Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;->getPower()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v10, p1

    check-cast v10, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v10}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getClkPower()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 139
    :cond_5
    const-string v10, "__MS_DCLK_S__"

    const-string v11, "1"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 140
    :cond_6
    instance-of v10, p1, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    if-eqz v10, :cond_a

    .line 141
    move-object v10, p1

    check-cast v10, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v10}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getClkActType()I

    move-result v10

    .line 142
    const-string v11, "__MS_CT__"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    if-eq v10, v2, :cond_7

    if-eq v10, v1, :cond_7

    const/16 v11, 0x40

    if-eq v10, v11, :cond_7

    const/16 v11, 0x100

    if-ne v10, v11, :cond_9

    .line 143
    :cond_7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, p1

    check-cast v11, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v11}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getPower_index()I

    move-result v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v11, p1

    check-cast v11, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v11}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getClkPower()I

    move-result v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 145
    :cond_8
    const-string v11, "__MS_CP__"

    invoke-static {v4}, Lcom/meishu/sdk/core/utils/i0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 146
    :cond_9
    move-object v11, p1

    check-cast v11, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v11}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getShakeResult()Lcom/meishu/sdk/platform/ms/splash/ShakeResult;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;ILcom/meishu/sdk/platform/ms/splash/ShakeResult;)Ljava/lang/String;

    move-result-object v9

    .line 147
    :cond_a
    invoke-interface {p0}, Lcom/meishu/sdk/core/ad/IAd;->getAdView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v9, p0}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)Ljava/lang/String;

    move-result-object v9

    new-instance v11, Lcom/meishu/sdk/core/utils/i;

    invoke-direct {v11}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    invoke-static {v10, v9, v11}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    .line 148
    :cond_c
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getdUrl()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 149
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 150
    array-length v2, v0

    move v4, v3

    :goto_6
    if-ge v3, v2, :cond_d

    aget-object v5, v0, v3

    add-int/lit8 v6, v4, 0x1

    .line 151
    invoke-static {v5, p0}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_6

    .line 152
    :cond_d
    invoke-interface {p1, v1}, Lcom/meishu/sdk/core/ad/AdSlot;->setdUrl([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception p0

    .line 153
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_7
    return-void
.end method

.method public static a(Lcom/meishu/sdk/platform/ms/c;Z)V
    .locals 12

    const-string v0, "send wx_start"

    const-string v1, "ClickHandler"

    .line 60
    :try_start_0
    const-string v2, "handleClick"

    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-interface {p0}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    move-result-object v4

    .line 62
    invoke-static {p0, v4}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/platform/ms/c;Lcom/meishu/sdk/core/ad/AdSlot;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    .line 63
    :try_start_1
    invoke-interface {p0}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    move-result-object v3

    instance-of v3, v3, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    if-eqz v3, :cond_0

    .line 64
    invoke-interface {p0}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    move-result-object v3

    check-cast v3, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAppendInfo()Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot$AppendInfo;->setHasClicked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :catch_0
    :cond_0
    :try_start_2
    invoke-interface {p0}, Lcom/meishu/sdk/platform/ms/c;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 66
    invoke-interface {p0}, Lcom/meishu/sdk/platform/ms/c;->b()Lcom/meishu/sdk/core/ad/AdType;

    move-result-object v3

    sget-object v5, Lcom/meishu/sdk/core/ad/AdType;->FEED:Lcom/meishu/sdk/core/ad/AdType;

    if-ne v3, v5, :cond_1

    instance-of v3, p0, Lcom/meishu/sdk/meishu_ad/nativ/d;

    if-eqz v3, :cond_1

    move-object v3, p0

    check-cast v3, Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 67
    iget v3, v3, Lcom/meishu/sdk/meishu_ad/nativ/d;->b:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 68
    move-object v3, p0

    check-cast v3, Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 69
    iget-boolean v3, v3, Lcom/meishu/sdk/meishu_ad/nativ/d;->g:Z

    if-eqz v3, :cond_1

    .line 70
    invoke-interface {p0}, Lcom/meishu/sdk/core/ad/IAd;->getAdView()Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    if-eqz v3, :cond_1

    .line 71
    invoke-interface {p0}, Lcom/meishu/sdk/core/ad/IAd;->getAdView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    invoke-virtual {p0, p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->a(Z)V

    goto/16 :goto_a

    .line 72
    :cond_1
    invoke-interface {v4}, Lcom/meishu/sdk/core/ad/AdSlot;->getWx_username()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v3, :cond_c

    .line 73
    :try_start_3
    invoke-interface {v4}, Lcom/meishu/sdk/core/ad/AdSlot;->getWx_start()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 74
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    array-length v7, v3

    move v8, v6

    :goto_0
    if-ge v8, v7, :cond_3

    aget-object v10, v3, v8

    .line 76
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 77
    invoke-static {v10}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 78
    invoke-static {v10, p0}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/meishu/sdk/core/utils/i;

    invoke-direct {v11}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    invoke-static {v9, v10, v11}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 79
    :cond_3
    instance-of v3, v4, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    if-eqz v3, :cond_4

    .line 80
    move-object v3, v4

    check-cast v3, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getWx_appid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 81
    move-object v3, v4

    check-cast v3, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getWx_appid()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v3, v5

    :goto_1
    if-nez v3, :cond_5

    .line 82
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v7, "wx_appid"

    invoke-interface {v3, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_5
    if-nez v3, :cond_7

    .line 83
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meishu/sdk/core/MSAdConfig;->getWxAppid()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    move-object v3, v5

    .line 84
    :cond_7
    :goto_2
    invoke-static {v9, v3, v4}, Lcom/meishu/sdk/core/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/ad/AdSlot;)Ljava/lang/Object;

    move-result-object v3

    .line 85
    instance-of v7, v3, Ljava/lang/Boolean;

    if-eqz v7, :cond_c

    .line 86
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 87
    invoke-interface {v4}, Lcom/meishu/sdk/core/ad/AdSlot;->getWx_succ()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 88
    const-string v7, "send wx_success"

    invoke-static {v1, v7}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    array-length v7, v3

    move v8, v6

    :goto_3
    if-ge v8, v7, :cond_11

    aget-object v10, v3, v8

    .line 90
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 91
    invoke-static {v10}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 92
    invoke-static {v10, p0}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/meishu/sdk/core/utils/i;

    invoke-direct {v11}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    invoke-static {v9, v10, v11}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 93
    :cond_9
    invoke-interface {v4}, Lcom/meishu/sdk/core/ad/AdSlot;->getWx_fail()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 94
    const-string v7, "send wx_fail"

    invoke-static {v1, v7}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    array-length v7, v3

    move v8, v6

    :goto_4
    if-ge v8, v7, :cond_c

    aget-object v10, v3, v8

    .line 96
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 97
    invoke-static {v10}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 98
    invoke-static {v10, p0}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/meishu/sdk/core/utils/i;

    invoke-direct {v11}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    invoke-static {v9, v10, v11}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 99
    :catch_1
    :try_start_4
    invoke-interface {v4}, Lcom/meishu/sdk/core/ad/AdSlot;->getWx_fail()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 100
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    array-length v0, v3

    move v1, v6

    :goto_5
    if-ge v1, v0, :cond_c

    aget-object v7, v3, v1

    .line 102
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 103
    invoke-static {v7}, Lcom/meishu/sdk/core/utils/i0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 104
    invoke-static {v7, p0}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/meishu/sdk/core/utils/i;

    invoke-direct {v8}, Lcom/meishu/sdk/core/utils/i;-><init>()V

    invoke-static {v9, v7, v8}, Lcom/meishu/sdk/core/utils/a0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/utils/i;)V

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 105
    :cond_c
    invoke-interface {v4}, Lcom/meishu/sdk/core/ad/AdSlot;->getDeep_link()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_f

    .line 106
    :try_start_5
    invoke-interface {v4}, Lcom/meishu/sdk/core/ad/AdSlot;->getDeep_link()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 107
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 109
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 110
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_e

    if-eqz v9, :cond_d

    move-object v3, v9

    goto :goto_6

    .line 111
    :cond_d
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v3, v0

    :goto_6
    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v5, p0

    move v7, p1

    .line 112
    :try_start_6
    invoke-static/range {v3 .. v8}, Lcom/meishu/sdk/core/utils/f;->a(Landroid/content/Context;Lcom/meishu/sdk/core/ad/AdSlot;Lcom/meishu/sdk/platform/ms/c;ZZLcom/meishu/sdk/core/utils/p0$a;)Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_a

    :catch_2
    move-exception v0

    :goto_7
    move-object p0, v0

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v5, p0

    goto :goto_7

    :cond_e
    move-object v5, p0

    .line 113
    invoke-static {v5, v6}, Lcom/meishu/sdk/core/utils/f;->b(Lcom/meishu/sdk/platform/ms/c;Z)V

    const/4 p0, 0x3

    .line 114
    invoke-static {v9, v4, v5, p0}, Lcom/meishu/sdk/core/utils/f;->a(Landroid/content/Context;Lcom/meishu/sdk/core/ad/AdSlot;Lcom/meishu/sdk/platform/ms/c;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_9

    .line 115
    :goto_8
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    :cond_f
    move-object v5, p0

    .line 116
    :cond_10
    :goto_9
    invoke-static {v5, v9, v4, v2}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/platform/ms/c;Landroid/content/Context;Lcom/meishu/sdk/core/ad/AdSlot;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_11
    :goto_a
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 209
    :goto_0
    :try_start_0
    sget-object v2, Lcom/meishu/sdk/core/utils/r0;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 210
    sget-object v2, Lcom/meishu/sdk/core/utils/r0;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meishu/sdk/core/utils/PackageBean$DpFlagBean;

    .line 211
    invoke-virtual {v2}, Lcom/meishu/sdk/core/utils/PackageBean$DpFlagBean;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 212
    :cond_0
    invoke-virtual {v2}, Lcom/meishu/sdk/core/utils/PackageBean$DpFlagBean;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 213
    invoke-virtual {v2}, Lcom/meishu/sdk/core/utils/PackageBean$DpFlagBean;->getFlag()Ljava/util/List;

    move-result-object v2

    move v3, v0

    .line 214
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 215
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 216
    const-string v5, "FLAG_ACTIVITY_SINGLE_TOP"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/high16 v5, 0x20000000

    .line 217
    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 218
    :cond_1
    const-string v5, "FLAG_ACTIVITY_CLEAR_TASK"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x8000

    .line 219
    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    .line 220
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/meishu/sdk/core/utils/p0$a;Lcom/meishu/sdk/platform/ms/c;ZZZLandroid/content/Context;Lcom/meishu/sdk/core/ad/AdSlot;Z)V
    .locals 1

    .line 268
    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 269
    invoke-interface {p1, p8}, Lcom/meishu/sdk/core/utils/p0$a;->a(Z)V

    .line 270
    :cond_0
    invoke-static {p2, p8}, Lcom/meishu/sdk/core/utils/f;->b(Lcom/meishu/sdk/platform/ms/c;Z)V

    if-nez p8, :cond_3

    if-eqz p3, :cond_3

    .line 271
    const-string p0, "ClickHandler"

    const-string p1, "openDeepLink error. call defaultInteraction"

    invoke-static {p0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 p1, 0x1

    if-eqz p4, :cond_1

    if-nez p5, :cond_1

    move p3, p0

    goto :goto_0

    :cond_1
    move p3, p1

    .line 272
    :goto_0
    sget p4, Lcom/meishu/sdk/core/utils/r0;->q:I

    if-ne p4, p1, :cond_2

    goto :goto_1

    :cond_2
    move p0, p3

    .line 273
    :goto_1
    invoke-interface {p2}, Lcom/meishu/sdk/platform/ms/c;->getInteractionType()I

    move-result p1

    if-nez p1, :cond_3

    .line 274
    invoke-static {p2, p6, p7, p0}, Lcom/meishu/sdk/core/utils/f;->a(Lcom/meishu/sdk/platform/ms/c;Landroid/content/Context;Lcom/meishu/sdk/core/ad/AdSlot;Z)V

    :cond_3
    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 4

    if-eqz p0, :cond_1

    .line 276
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 277
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 278
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/meishu/sdk/core/loader/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 344
    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 345
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 346
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    return v0

    .line 347
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static a(Landroid/content/Context;Lcom/meishu/sdk/core/ad/AdSlot;Lcom/meishu/sdk/platform/ms/c;ZZLcom/meishu/sdk/core/utils/p0$a;)Z
    .locals 14

    move-object/from16 v1, p5

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 244
    :try_start_0
    sget v0, Lcom/meishu/sdk/core/utils/r0;->t:I

    if-eq v0, v10, :cond_1

    .line 245
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getDeep_link()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meishu/sdk/core/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    const-string v0, "ClickHandler"

    const-string v3, "limit dp"

    invoke-static {v0, v3}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 247
    invoke-interface {v1, v9}, Lcom/meishu/sdk/core/utils/p0$a;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    return v9

    .line 248
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 249
    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/meishu/sdk/core/utils/f;->b(Lcom/meishu/sdk/core/ad/AdSlot;Lcom/meishu/sdk/platform/ms/c;)V

    .line 250
    :try_start_1
    instance-of v0, p1, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getNop()I

    move-result v0

    if-ne v0, v10, :cond_2

    move v5, v10

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v13, p2

    goto/16 :goto_5

    :cond_2
    move v5, v9

    :goto_2
    xor-int/lit8 v0, v5, 0x1

    .line 251
    sget v3, Lcom/meishu/sdk/core/utils/r0;->q:I

    if-ne v3, v10, :cond_3

    move v11, v9

    goto :goto_3

    :cond_3
    move v11, v0

    .line 252
    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 253
    sget-object v12, Lcom/meishu/sdk/core/utils/p0$b;->a:Lcom/meishu/sdk/core/utils/p0;

    new-instance v0, Lcom/meishu/sdk/core/utils/A;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v6, p4

    move-object/from16 v2, p5

    :try_start_2
    invoke-direct/range {v0 .. v8}, Lcom/meishu/sdk/core/utils/A;-><init>(Ljava/util/List;Lcom/meishu/sdk/core/utils/p0$a;Lcom/meishu/sdk/platform/ms/c;ZZZLandroid/content/Context;Lcom/meishu/sdk/core/ad/AdSlot;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    move-object v13, v3

    .line 254
    :try_start_3
    iput-object v1, v12, Lcom/meishu/sdk/core/utils/p0;->a:Lcom/meishu/sdk/core/utils/p0$a;

    .line 255
    new-instance v12, Lcom/meishu/sdk/core/utils/m0;

    const-wide/16 v1, -0x1

    .line 256
    invoke-direct {v12, v1, v2, v9}, Lcom/meishu/sdk/core/utils/m0;-><init>(JZ)V

    .line 257
    invoke-static {v12}, Lcom/meishu/sdk/core/service/d;->a(Lcom/meishu/sdk/core/service/e;)V

    .line 258
    instance-of v1, p1, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    if-eqz v1, :cond_4

    .line 259
    move-object v1, p1

    check-cast v1, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDPSIGN()Ljava/lang/String;

    move-result-object v1

    .line 260
    move-object v2, p1

    check-cast v2, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    move-result-object v2

    move-object v5, v1

    move-object v6, v2

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    move-object v5, v1

    move-object v6, v5

    .line 261
    :goto_4
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getDeep_link()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getDpSign()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getDp_start()[Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v7, v11

    invoke-static/range {v1 .. v7}, Lcom/meishu/sdk/core/utils/p0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    move v6, v7

    .line 262
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 263
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v13}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 264
    new-instance v11, Ljava/lang/Thread;

    move-object v5, v0

    new-instance v0, Lcom/meishu/sdk/core/utils/f$a;

    move-object v2, p1

    move-object v4, v12

    invoke-direct/range {v0 .. v6}, Lcom/meishu/sdk/core/utils/f$a;-><init>(Ljava/lang/ref/SoftReference;Lcom/meishu/sdk/core/ad/AdSlot;Ljava/lang/ref/SoftReference;Lcom/meishu/sdk/core/utils/m0;Ljava/util/List;Z)V

    invoke-direct {v11, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 265
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return v10

    :catch_3
    move-exception v0

    move-object v13, v3

    :goto_5
    const/4 v1, 0x4

    .line 266
    invoke-static {p0, p1, v13, v1}, Lcom/meishu/sdk/core/utils/f;->a(Landroid/content/Context;Lcom/meishu/sdk/core/ad/AdSlot;Lcom/meishu/sdk/platform/ms/c;I)V

    .line 267
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v9
.end method

.method public static a(Lcom/meishu/sdk/core/ad/AdSlot;Lcom/meishu/sdk/platform/ms/c;)Z
    .locals 14

    .line 292
    const-string v0, "queryKeyLastTimeMap"

    const-string v1, "_"

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/meishu/sdk/core/utils/r0;->j:Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;

    if-eqz v3, :cond_f

    .line 293
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 294
    instance-of v4, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    .line 295
    move-object v4, p0

    check-cast v4, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDynamicMap()Ljava/util/HashMap;

    move-result-object v4

    if-eqz p1, :cond_0

    .line 296
    invoke-interface {p1}, Lcom/meishu/sdk/platform/ms/c;->b()Lcom/meishu/sdk/core/ad/AdType;

    move-result-object p1

    sget-object v7, Lcom/meishu/sdk/core/ad/AdType;->SPLASH:Lcom/meishu/sdk/core/ad/AdType;

    if-ne p1, v7, :cond_0

    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meishu/sdk/core/MSAdConfig;->isSplashClickToClosed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 297
    move-object p1, p0

    check-cast p1, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {p1, v6}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setAdClosed(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    .line 298
    :cond_0
    :goto_0
    move-object p1, p0

    check-cast p1, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getIsAdClosed()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/meishu/sdk/core/utils/r0;->j:Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;

    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;->getX()I

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_a

    :cond_1
    move-object v4, v5

    .line 299
    :cond_2
    sget-object p1, Lcom/meishu/sdk/core/utils/r0;->j:Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;

    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;->getI()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-object v9, Lcom/meishu/sdk/core/utils/r0;->j:Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;

    invoke-virtual {v9}, Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;->getLastTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    int-to-long v9, p1

    cmp-long p1, v7, v9

    if-lez p1, :cond_f

    .line 301
    sget-object p1, Lcom/meishu/sdk/core/utils/r0;->j:Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;

    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;->getK()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    const-string v7, ""

    if-eqz p1, :cond_a

    move v8, v2

    move-object v9, v7

    .line 303
    :goto_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v8, v10, :cond_b

    .line 304
    :try_start_2
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 305
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v11, :cond_9

    .line 306
    :try_start_3
    const-class v11, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 307
    invoke-virtual {v11, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 308
    invoke-virtual {v11, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 309
    invoke-virtual {v11, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v11

    .line 310
    :try_start_4
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v11, v5

    .line 311
    :goto_2
    :try_start_5
    const-string v12, "scheme"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    if-nez v11, :cond_4

    .line 312
    instance-of v12, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    if-eqz v12, :cond_4

    .line 313
    move-object v12, p0

    check-cast v12, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v12}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getScheme()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 314
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v13, p0

    check-cast v13, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v13}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getScheme()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :catch_1
    move-exception v12

    goto :goto_3

    .line 315
    :cond_3
    invoke-interface {p0}, Lcom/meishu/sdk/core/ad/AdSlot;->getDeep_link()Ljava/lang/String;

    move-result-object v12

    .line 316
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 317
    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    .line 318
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 319
    :goto_3
    :try_start_6
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_4
    if-eqz v11, :cond_6

    if-nez v8, :cond_5

    .line 320
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :catch_2
    move-exception v10

    goto :goto_5

    .line 321
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_6
    if-eqz v4, :cond_8

    .line 322
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    if-nez v8, :cond_7

    .line 323
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    .line 324
    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    .line 325
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v6

    if-ge v8, v10, :cond_9

    .line 326
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    .line 327
    :goto_5
    :try_start_7
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_a
    move-object v9, v7

    .line 328
    :cond_b
    sget-object p0, Lcom/meishu/sdk/core/utils/r0;->j:Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;

    invoke-virtual {p0}, Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;->getR()Ljava/util/Map;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-wide/16 v10, 0x0

    .line 329
    :try_start_8
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, v0, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 330
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 331
    new-instance v1, Lcom/meishu/sdk/core/utils/g;

    invoke-direct {v1}, Lcom/meishu/sdk/core/utils/g;-><init>()V

    .line 332
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 333
    invoke-virtual {v3, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz p1, :cond_c

    .line 334
    :try_start_9
    invoke-interface {p1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 335
    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_c
    move-object v5, p1

    goto :goto_8

    :catch_3
    move-exception v1

    move-object v5, p1

    goto :goto_7

    :catch_4
    move-exception v1

    .line 336
    :goto_7
    :try_start_a
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    :goto_8
    if-eqz p0, :cond_f

    .line 337
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 338
    invoke-interface {p0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v10

    int-to-long p0, p0

    cmp-long p0, v7, p0

    if-lez p0, :cond_f

    if-nez v5, :cond_e

    .line 340
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 341
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v5, v9, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v3, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move v2, v6

    goto :goto_a

    .line 343
    :goto_9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_f
    :goto_a
    return v2
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 238
    :try_start_0
    invoke-static {p0, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    .line 239
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 240
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 242
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :catchall_0
    move-exception p0

    .line 243
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static a(Ljava/lang/ref/Reference;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 275
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a([Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)[Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 348
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 349
    aget-object v1, p0, v0

    invoke-static {v1, p1}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static b(Landroid/content/Context;Lcom/meishu/sdk/platform/ms/c;)V
    .locals 7

    const-string v0, "/"

    .line 22
    :try_start_0
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/f;->a(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 24
    :cond_0
    invoke-interface {p1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    move-result-object v1

    .line 25
    invoke-interface {v1}, Lcom/meishu/sdk/core/ad/AdSlot;->getdUrl()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Lcom/meishu/sdk/core/ad/AdSlot;->getdUrl()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_2

    .line 26
    invoke-interface {v1}, Lcom/meishu/sdk/core/ad/AdSlot;->getdUrl()[Ljava/lang/String;

    .line 27
    sget-object v3, Lcom/meishu/sdk/core/download/a$a;->a:Lcom/meishu/sdk/core/download/a;

    .line 28
    iget-object v3, v3, Lcom/meishu/sdk/core/download/a;->c:Ljava/lang/String;

    .line 29
    invoke-interface {v1}, Lcom/meishu/sdk/core/ad/AdSlot;->getdUrl()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-interface {v1}, Lcom/meishu/sdk/core/ad/AdSlot;->getdUrl()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :try_start_1
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-interface {v1}, Lcom/meishu/sdk/core/ad/AdSlot;->getdUrl()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/meishu/sdk/core/utils/m1;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".apk"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 32
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v2, "ClickHandler"

    if-eqz v0, :cond_1

    .line 35
    :try_start_3
    const-string v0, "file install"

    invoke-static {v2, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-interface {p1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    move-result-object v0

    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/AdSlot;->getDn_start()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/f;->a([Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)[Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-interface {p1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    move-result-object v2

    invoke-interface {v2}, Lcom/meishu/sdk/core/ad/AdSlot;->getDn_succ()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/meishu/sdk/core/utils/f;->a([Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)[Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-interface {p1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    move-result-object v3

    invoke-interface {v3}, Lcom/meishu/sdk/core/ad/AdSlot;->getDn_inst_start()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/meishu/sdk/core/utils/f;->a([Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)[Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-interface {p1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    move-result-object v4

    invoke-interface {v4}, Lcom/meishu/sdk/core/ad/AdSlot;->getDn_inst_succ()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/meishu/sdk/core/utils/f;->a([Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)[Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-interface {p1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    move-result-object v5

    invoke-interface {v5}, Lcom/meishu/sdk/core/ad/AdSlot;->getAppName()Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-interface {p1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    move-result-object p1

    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 42
    sget-object v6, Lcom/meishu/sdk/core/utils/DownloadUtils;->h:Ljava/util/Map;

    .line 43
    new-instance v6, Lcom/meishu/sdk/core/utils/l0;

    invoke-direct {v6}, Lcom/meishu/sdk/core/utils/l0;-><init>()V

    .line 44
    iput-object v5, v6, Lcom/meishu/sdk/core/utils/l0;->b:Ljava/lang/String;

    .line 45
    iput-object p1, v6, Lcom/meishu/sdk/core/utils/l0;->c:Ljava/lang/String;

    .line 46
    iput-object v0, v6, Lcom/meishu/sdk/core/utils/l0;->d:[Ljava/lang/String;

    .line 47
    iput-object v2, v6, Lcom/meishu/sdk/core/utils/l0;->e:[Ljava/lang/String;

    .line 48
    iput-object v3, v6, Lcom/meishu/sdk/core/utils/l0;->f:[Ljava/lang/String;

    .line 49
    iput-object v4, v6, Lcom/meishu/sdk/core/utils/l0;->g:[Ljava/lang/String;

    .line 50
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/DownloadUtils;->a(Landroid/content/Context;)V

    .line 51
    invoke-static {p0, v1, v6}, Lcom/meishu/sdk/core/utils/DownloadUtils;->a(Landroid/content/Context;Ljava/io/File;Lcom/meishu/sdk/core/utils/l0;)V

    goto :goto_1

    .line 52
    :cond_1
    const-string v0, "file not exists"

    invoke-static {v2, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {p0, p1}, Lcom/meishu/sdk/core/utils/f;->c(Landroid/content/Context;Lcom/meishu/sdk/platform/ms/c;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public static b(Lcom/meishu/sdk/core/ad/AdSlot;Lcom/meishu/sdk/platform/ms/c;)V
    .locals 3

    .line 15
    :try_start_0
    invoke-interface {p0}, Lcom/meishu/sdk/core/ad/AdSlot;->getDp_start()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 16
    const-string v1, "ClickHandler"

    const-string v2, "send dp_start"

    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 17
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 18
    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 19
    aget-object v2, v0, v1

    invoke-static {v2, p1}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_1
    invoke-interface {p0, v0}, Lcom/meishu/sdk/core/ad/AdSlot;->setDp_start([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static b(Lcom/meishu/sdk/platform/ms/c;Landroid/content/Context;Lcom/meishu/sdk/core/ad/AdSlot;Z)V
    .locals 4

    if-eqz p2, :cond_6

    .line 1
    :try_start_0
    invoke-interface {p2}, Lcom/meishu/sdk/core/ad/AdSlot;->getdUrl()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Lcom/meishu/sdk/core/ad/AdSlot;->getdUrl()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_6

    .line 2
    invoke-interface {p0}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    move-result-object v0

    instance-of v0, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getIsRewardUseBrowser()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez p3, :cond_5

    if-eqz v0, :cond_1

    goto :goto_4

    .line 4
    :cond_1
    invoke-interface {p0}, Lcom/meishu/sdk/core/ad/IAd;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    move-result-object p3

    instance-of p3, p3, Lcom/meishu/sdk/core/loader/ShareInteractionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p3, :cond_4

    .line 5
    :try_start_1
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/meishu/sdk/core/MSAdConfig;->webViewActivity()Ljava/lang/Class;

    move-result-object p3

    goto :goto_1

    :catchall_0
    move-exception p3

    goto :goto_2

    :cond_2
    move-object p3, v0

    :goto_1
    if-nez p3, :cond_3

    .line 6
    const-class p3, Lcom/meishu/sdk/activity/MeishuWebviewActivity;

    .line 7
    :cond_3
    const-string v2, "setShareListener"

    const-class v3, Lcom/meishu/sdk/core/loader/ShareInteractionListener;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    invoke-interface {p0}, Lcom/meishu/sdk/core/ad/IAd;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    move-result-object v2

    check-cast v2, Lcom/meishu/sdk/core/loader/ShareInteractionListener;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 8
    :goto_2
    :try_start_2
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    :cond_4
    :goto_3
    sget-object p3, Lcom/meishu/sdk/core/uri/c;->c:Lcom/meishu/sdk/core/uri/c;

    .line 10
    invoke-interface {p2}, Lcom/meishu/sdk/core/ad/AdSlot;->getdUrl()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0, p0}, Lcom/meishu/sdk/core/utils/f;->a(Ljava/lang/String;Lcom/meishu/sdk/core/ad/IAd;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p1, p0, p2}, Lcom/meishu/sdk/core/uri/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meishu/sdk/core/ad/AdSlot;)V

    goto :goto_5

    .line 11
    :cond_5
    :goto_4
    new-instance p0, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-interface {p2}, Lcom/meishu/sdk/core/ad/AdSlot;->getdUrl()[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x10000000

    .line 12
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_5
    return-void
.end method

.method public static b(Lcom/meishu/sdk/platform/ms/c;Z)V
    .locals 4

    .line 61
    :try_start_0
    instance-of v0, p0, Lcom/meishu/sdk/core/ad/splash/c;

    if-nez v0, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    invoke-interface {p0}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    move-result-object v0

    instance-of v0, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    if-nez v0, :cond_1

    goto :goto_1

    .line 63
    :cond_1
    invoke-interface {p0}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCbc()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 64
    :cond_2
    new-instance v0, Ljava/lang/String;

    const-string v1, "ZHI="

    invoke-static {v1}, Lcom/meishu/sdk/core/utils/g1;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_3

    goto :goto_1

    .line 66
    :cond_3
    :try_start_1
    invoke-interface {p0}, Lcom/meishu/sdk/core/ad/IAd;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_4

    .line 67
    :try_start_2
    invoke-interface {p0}, Lcom/meishu/sdk/core/ad/IAd;->getInteractionListener()Lcom/meishu/sdk/core/loader/InteractionListener;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Boolean;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_4
    if-nez v1, :cond_5

    goto :goto_1

    .line 68
    :cond_5
    :try_start_3
    invoke-static {}, Lcom/meishu/sdk/core/utils/SdkHandler;->getInstance()Lcom/meishu/sdk/core/utils/SdkHandler;

    move-result-object v0

    new-instance v2, Lcom/meishu/sdk/core/utils/f$b;

    invoke-direct {v2, v1, p0, p1}, Lcom/meishu/sdk/core/utils/f$b;-><init>(Ljava/lang/reflect/Method;Lcom/meishu/sdk/platform/ms/c;Z)V

    const-wide/16 p0, 0x0

    invoke-virtual {v0, v2, p0, p1}, Lcom/meishu/sdk/core/utils/SdkHandler;->postDelay(Ljava/lang/Runnable;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    :goto_1
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 55
    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 56
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object p0

    .line 59
    const-string v1, "WIFI"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    return v0

    .line 60
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 69
    :try_start_0
    sget-object v1, Lcom/meishu/sdk/core/utils/r0;->h:Ljava/util/HashMap;

    .line 70
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    .line 72
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    .line 73
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 74
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    return v0

    .line 75
    :goto_1
    const-string v1, "isDeepLinkLimited error: "

    invoke-static {v1}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ClickHandler"

    invoke-static {v1, p0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static c(Landroid/content/Context;Lcom/meishu/sdk/platform/ms/c;)V
    .locals 11

    .line 1
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->downloadConfirm()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->downloadConfirm()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    invoke-static {p0}, Lcom/meishu/sdk/core/utils/f;->b(Landroid/content/Context;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    :cond_0
    sput-object p1, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;->y:Lcom/meishu/sdk/platform/ms/c;

    .line 35
    .line 36
    new-instance p1, Landroid/content/Intent;

    .line 37
    .line 38
    const-class v0, Lcom/meishu/sdk/meishu_ad/view/DownLoadDialogActivity;

    .line 39
    .line 40
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .line 42
    .line 43
    instance-of v0, p0, Landroid/app/Activity;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/high16 v0, 0x10000000

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    invoke-interface {p1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/AdSlot;->getDn_start()[Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/f;->a([Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)[Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-interface {p1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/AdSlot;->getDn_succ()[Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/f;->a([Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)[Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-interface {p1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/AdSlot;->getDn_inst_start()[Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/f;->a([Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)[Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    invoke-interface {p1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/AdSlot;->getDn_inst_succ()[Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/f;->a([Ljava/lang/String;Lcom/meishu/sdk/platform/ms/c;)[Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    invoke-interface {p1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/AdSlot;->getdUrl()[Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const/4 v10, 0x0

    .line 114
    aget-object v3, v0, v10

    .line 115
    .line 116
    invoke-interface {p1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-interface {v0}, Lcom/meishu/sdk/core/ad/AdSlot;->getAppName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-interface {p1}, Lcom/meishu/sdk/platform/ms/c;->a()Lcom/meishu/sdk/core/ad/AdSlot;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-interface {p1}, Lcom/meishu/sdk/core/ad/AdSlot;->getPackageName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    if-nez v0, :cond_3

    .line 133
    .line 134
    :try_start_1
    const-string v0, ""

    .line 135
    .line 136
    :cond_3
    move-object v4, v0

    .line 137
    goto :goto_1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    move-object p1, v0

    .line 140
    goto :goto_2

    .line 141
    :goto_1
    sget-object p1, Lcom/meishu/sdk/core/utils/DownloadUtils;->h:Ljava/util/Map;

    .line 142
    .line 143
    sget-object v1, Lcom/meishu/sdk/core/utils/DownloadUtils$c;->a:Lcom/meishu/sdk/core/utils/DownloadUtils;

    .line 144
    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual/range {v1 .. v9}, Lcom/meishu/sdk/core/utils/DownloadUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :goto_2
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 154
    .line 155
    .line 156
    :goto_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    const-string p1, "\u5f00\u59cb\u4e0b\u8f7d"

    .line 161
    .line 162
    invoke-static {p0, p1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    .line 168
    .line 169
    goto :goto_4

    .line 170
    :catchall_0
    move-exception v0

    .line 171
    move-object p0, v0

    .line 172
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 173
    .line 174
    .line 175
    :goto_4
    return-void
.end method
