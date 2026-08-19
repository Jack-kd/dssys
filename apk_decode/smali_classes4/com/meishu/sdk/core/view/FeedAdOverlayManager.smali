.class public Lcom/meishu/sdk/core/view/FeedAdOverlayManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;,
        Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OnOverlayTriggerAction;
    }
.end annotation


# static fields
.field private static final KEY_DAILY_COUNT_SUFFIX:Ljava/lang/String; = "_slide_overlay_daily"

.field private static final KEY_SUFFIX:Ljava/lang/String; = "_slide_overlay"

.field private static final TAG:Ljava/lang/String; = "FeedAdOverlayManager"

.field private static volatile sInstance:Lcom/meishu/sdk/core/view/FeedAdOverlayManager;


# instance fields
.field private final appStateListener:Lcom/meishu/sdk/core/service/a;

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->entries:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$2;-><init>(Lcom/meishu/sdk/core/view/FeedAdOverlayManager;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->appStateListener:Lcom/meishu/sdk/core/service/a;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Lcom/meishu/sdk/core/view/FeedAdOverlayManager;Landroid/view/View;ZZLcom/meishu/sdk/core/view/TouchPoint;Lcom/meishu/sdk/core/view/TouchPoint;ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move v1, p6

    .line 5
    move-object p6, p1

    .line 6
    move p1, p2

    .line 7
    move p2, p3

    .line 8
    move-object p3, p4

    .line 9
    move-object p4, p5

    .line 10
    move p5, v1

    .line 11
    :try_start_0
    invoke-direct/range {p0 .. p7}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->handleClick(ZZLcom/meishu/sdk/core/view/TouchPoint;Lcom/meishu/sdk/core/view/TouchPoint;ILandroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception v0

    .line 16
    move-object p0, v0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/core/view/FeedAdOverlayManager;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->removeByPosIdOrActivity(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/meishu/sdk/core/view/FeedAdOverlayManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->removeInvalidEntryByUniqueId(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private findEntryByUniqueId(Ljava/lang/String;)Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->entries:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;

    .line 22
    .line 23
    iget-object v3, v2, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->uniqueId:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    return-object v2

    .line 32
    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-object v0
.end method

.method public static getInstance()Lcom/meishu/sdk/core/view/FeedAdOverlayManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->sInstance:Lcom/meishu/sdk/core/view/FeedAdOverlayManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->sInstance:Lcom/meishu/sdk/core/view/FeedAdOverlayManager;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->sInstance:Lcom/meishu/sdk/core/view/FeedAdOverlayManager;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->sInstance:Lcom/meishu/sdk/core/view/FeedAdOverlayManager;

    .line 27
    .line 28
    return-object v0
.end method

.method private getTodayCount()I
    .locals 4

    .line 1
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "_slide_overlay_daily"

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->getTodayString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, ":"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    return v0

    .line 55
    :catchall_0
    :cond_0
    const/4 v0, 0x0

    .line 56
    return v0
.end method

.method private static getTodayString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "yyyyMMdd"

    .line 8
    .line 9
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/util/Date;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method private handleClick(ZZLcom/meishu/sdk/core/view/TouchPoint;Lcom/meishu/sdk/core/view/TouchPoint;ILandroid/view/View;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p7

    .line 8
    .line 9
    iget-object v4, v0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->entries:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    goto/16 :goto_2

    .line 18
    .line 19
    :cond_0
    iget-object v4, v0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->entries:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const/4 v5, 0x0

    .line 26
    move-object v6, v5

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    if-eqz v7, :cond_5

    .line 32
    .line 33
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    check-cast v7, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;

    .line 38
    .line 39
    iget-object v8, v7, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->overlayView:Lcom/meishu/sdk/core/view/FeedAdOverlayView;

    .line 40
    .line 41
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    if-nez v8, :cond_3

    .line 46
    .line 47
    iget-object v8, v7, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->overlayView:Lcom/meishu/sdk/core/view/FeedAdOverlayView;

    .line 48
    .line 49
    iget v9, v1, Lcom/meishu/sdk/core/view/TouchPoint;->downX:F

    .line 50
    .line 51
    iget v10, v1, Lcom/meishu/sdk/core/view/TouchPoint;->downY:F

    .line 52
    .line 53
    invoke-static {v8, v9, v10}, Lcom/meishu/sdk/core/utils/t1;->a(Landroid/view/View;FF)Z

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-eqz v8, :cond_3

    .line 58
    .line 59
    if-eqz v6, :cond_2

    .line 60
    .line 61
    iget v8, v7, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->ecpm:I

    .line 62
    .line 63
    iget v9, v6, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->ecpm:I

    .line 64
    .line 65
    if-le v8, v9, :cond_3

    .line 66
    .line 67
    :cond_2
    move-object v6, v7

    .line 68
    :cond_3
    iget-object v8, v7, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->adContainerRef:Ljava/lang/ref/WeakReference;

    .line 69
    .line 70
    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    check-cast v8, Landroid/view/View;

    .line 75
    .line 76
    if-nez v8, :cond_4

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    iget v9, v1, Lcom/meishu/sdk/core/view/TouchPoint;->downX:F

    .line 80
    .line 81
    iget v10, v1, Lcom/meishu/sdk/core/view/TouchPoint;->downY:F

    .line 82
    .line 83
    invoke-static {v8, v9, v10}, Lcom/meishu/sdk/core/utils/t1;->a(Landroid/view/View;FF)Z

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    if-eqz v8, :cond_1

    .line 88
    .line 89
    move-object v5, v7

    .line 90
    :cond_5
    if-eqz v5, :cond_6

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_6
    move-object v5, v6

    .line 94
    :goto_1
    if-nez v5, :cond_7

    .line 95
    .line 96
    invoke-direct {v0, v3}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->removeInvalidEntryByUniqueId(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_7
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    iget-object v6, v5, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->posId:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v6, "_slide_overlay"

    .line 115
    .line 116
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 124
    .line 125
    .line 126
    move-result-wide v6

    .line 127
    invoke-virtual {v1, v4, v6, v7}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;J)V

    .line 128
    .line 129
    .line 130
    if-nez p2, :cond_8

    .line 131
    .line 132
    invoke-direct {v0}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->incrementTodayCount()V

    .line 133
    .line 134
    .line 135
    :cond_8
    iget-object v1, v5, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->posId:Ljava/lang/String;

    .line 136
    .line 137
    iget-object v4, v5, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->activityRef:Ljava/lang/ref/WeakReference;

    .line 138
    .line 139
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    check-cast v4, Landroid/app/Activity;

    .line 144
    .line 145
    invoke-direct {v0, v1, v4, v3}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->removeByPosIdOrActivity(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object v6, v5, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->triggerAction:Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OnOverlayTriggerAction;

    .line 149
    .line 150
    if-eqz v6, :cond_9

    .line 151
    .line 152
    iget v9, v2, Lcom/meishu/sdk/core/view/TouchPoint;->downX:F

    .line 153
    .line 154
    iget v10, v2, Lcom/meishu/sdk/core/view/TouchPoint;->downY:F

    .line 155
    .line 156
    iget-wide v11, v2, Lcom/meishu/sdk/core/view/TouchPoint;->downTime:J

    .line 157
    .line 158
    iget v13, v2, Lcom/meishu/sdk/core/view/TouchPoint;->upX:F

    .line 159
    .line 160
    iget v14, v2, Lcom/meishu/sdk/core/view/TouchPoint;->upY:F

    .line 161
    .line 162
    move/from16 v7, p1

    .line 163
    .line 164
    move/from16 v8, p2

    .line 165
    .line 166
    move/from16 v15, p5

    .line 167
    .line 168
    invoke-interface/range {v6 .. v15}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OnOverlayTriggerAction;->onTrigger(ZZFFJFFI)V

    .line 169
    .line 170
    .line 171
    :cond_9
    :goto_2
    return-void
.end method

.method private incrementTodayCount()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->getTodayString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->getTodayCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, ":"

    .line 22
    .line 23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "_slide_overlay_daily"

    .line 36
    .line 37
    invoke-virtual {v2, v1, v0}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private releaseEntriesAdContainerRef(Landroid/view/View;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->entries:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;

    .line 21
    .line 22
    iget-object v2, v1, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->adContainerRef:Ljava/lang/ref/WeakReference;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-ne v2, p1, :cond_1

    .line 29
    .line 30
    iget-object v2, v1, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->overlayView:Lcom/meishu/sdk/core/view/FeedAdOverlayView;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->releaseAdContainerRef()V

    .line 33
    .line 34
    .line 35
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iput-object v2, v1, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->adContainerRef:Ljava/lang/ref/WeakReference;

    .line 42
    .line 43
    sget-object v2, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->TAG:Ljava/lang/String;

    .line 44
    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v4, "releaseEntriesAdContainerRef released uniqueId="

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v1, v1, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->uniqueId:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v2, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p1

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    :goto_1
    return-void

    .line 71
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method private removeByPosIdOrActivity(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->entries:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    move v2, v0

    .line 9
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_5

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object v5, v3, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->posId:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_1

    .line 31
    .line 32
    move v5, v4

    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception p1

    .line 35
    move v0, v2

    .line 36
    goto :goto_4

    .line 37
    :cond_1
    move v5, v0

    .line 38
    :goto_1
    if-eqz p2, :cond_2

    .line 39
    .line 40
    iget-object v6, v3, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->activityRef:Ljava/lang/ref/WeakReference;

    .line 41
    .line 42
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    if-ne p2, v6, :cond_2

    .line 47
    .line 48
    move v6, v4

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    move v6, v0

    .line 51
    :goto_2
    if-eqz p3, :cond_3

    .line 52
    .line 53
    iget-object v7, v3, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->uniqueId:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-eqz v7, :cond_3

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_3
    move v4, v0

    .line 63
    :goto_3
    if-nez v5, :cond_4

    .line 64
    .line 65
    if-nez v6, :cond_4

    .line 66
    .line 67
    if-eqz v4, :cond_0

    .line 68
    .line 69
    :cond_4
    iget-object v3, v3, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->overlayView:Lcom/meishu/sdk/core/view/FeedAdOverlayView;

    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->detach()V

    .line 72
    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 75
    .line 76
    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catch_1
    move-exception p1

    .line 81
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    .line 83
    .line 84
    move v2, v0

    .line 85
    :cond_5
    sget-object p1, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->TAG:Ljava/lang/String;

    .line 86
    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string p3, "removeByPosIdOrActivity removed="

    .line 93
    .line 94
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-static {p1, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method private removeInvalidEntryByUniqueId(Ljava/lang/String;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->entries:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;

    .line 21
    .line 22
    iget-object v2, v1, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->uniqueId:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iget-object v2, v1, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->activityRef:Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    iget-object v1, v1, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->overlayView:Lcom/meishu/sdk/core/view/FeedAdOverlayView;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->detach()V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 44
    .line 45
    .line 46
    sget-object v0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v2, "removeInvalidEntryByUniqueId uniqueId="

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    :goto_0
    return-void

    .line 72
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public addOverlay(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;ILcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OnOverlayTriggerAction;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p6

    if-eqz v3, :cond_a

    if-eqz v4, :cond_a

    if-eqz v6, :cond_a

    if-eqz p5, :cond_a

    .line 1
    :try_start_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getExtend_up()I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3
    invoke-virtual/range {p5 .. p5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getExtend_down()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 4
    invoke-virtual/range {p5 .. p5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getExtend_left()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 5
    invoke-virtual/range {p5 .. p5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getExtend_right()I

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 6
    invoke-virtual/range {p5 .. p5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getExtend_interval()I

    move-result v10

    .line 7
    invoke-virtual/range {p5 .. p5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getExtend_max_count()I

    move-result v11

    .line 8
    invoke-virtual/range {p5 .. p5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEcpm()I

    move-result v12

    .line 9
    invoke-virtual/range {p5 .. p5}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v13

    const/16 v14, 0x200

    and-int/2addr v13, v14

    if-ne v13, v14, :cond_1

    const/4 v2, 0x1

    :cond_1
    move v13, v2

    if-nez v0, :cond_2

    if-nez v5, :cond_2

    if-nez v8, :cond_2

    if-nez v9, :cond_2

    .line 10
    sget-object v0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->TAG:Ljava/lang/String;

    const-string v2, "addOverlay return. extend all 0, feature disabled"

    invoke-static {v0, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_2
    if-lez v11, :cond_3

    .line 11
    invoke-direct {v1}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->getTodayCount()I

    move-result v2

    if-lt v2, v11, :cond_3

    .line 12
    sget-object v0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->TAG:Ljava/lang/String;

    const-string v2, "addOverlay return. daily count limit reached"

    invoke-static {v0, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    if-lez v10, :cond_4

    int-to-long v10, v10

    const-wide/32 v14, 0xea60

    mul-long/2addr v10, v14

    .line 13
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    move-result-object v2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_slide_overlay"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-wide v15, v10

    const-wide/16 v10, 0x0

    invoke-virtual {v2, v14, v10, v11}, Lcom/meishu/sdk/core/utils/r;->a(Ljava/lang/String;J)J

    move-result-wide v10

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v10

    cmp-long v2, v17, v15

    if-gez v2, :cond_4

    .line 15
    sget-object v0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->TAG:Ljava/lang/String;

    const-string v2, "addOverlay return. interval"

    invoke-static {v0, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_4
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 17
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 18
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/lit8 v11, v10, 0x2

    const-string v14, " screenH="

    if-le v11, v2, :cond_5

    .line 19
    :try_start_1
    sget-object v0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addOverlay return. adContainer h > 50% screenH adH="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    mul-int v11, v2, v0

    int-to-float v11, v11

    const/high16 v15, 0x42c80000    # 100.0f

    div-float/2addr v11, v15

    float-to-int v11, v11

    move/from16 p5, v15

    mul-int v15, v2, v5

    int-to-float v15, v15

    div-float v15, v15, p5

    float-to-int v15, v15

    add-int/2addr v11, v10

    add-int/2addr v11, v15

    mul-int/lit8 v15, v11, 0x2

    if-le v15, v2, :cond_6

    int-to-float v0, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float v15, v0, v5

    int-to-float v10, v10

    sub-float/2addr v15, v10

    div-float/2addr v15, v0

    mul-float v15, v15, p5

    div-float/2addr v15, v5

    .line 20
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 21
    sget-object v5, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addOverlay: extended height > 50% screen, result="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " extendedH="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v0

    .line 22
    :cond_6
    invoke-direct {v1, v7}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->findEntryByUniqueId(Ljava/lang/String;)Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 23
    iget-object v0, v2, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->overlayView:Lcom/meishu/sdk/core/view/FeedAdOverlayView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, " uniqueId="

    if-eqz v0, :cond_7

    .line 24
    :try_start_2
    sget-object v0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addOverlay: overlay exists but invisible, requestPositionUpdate posId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, v2, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->overlayView:Lcom/meishu/sdk/core/view/FeedAdOverlayView;

    invoke-virtual {v0}, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->requestPositionUpdate()V

    return-void

    .line 26
    :cond_7
    sget-object v0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addOverlay return. same ad already has overlay, posId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 27
    :cond_8
    invoke-direct {v1, v4}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->releaseEntriesAdContainerRef(Landroid/view/View;)V

    const v2, 0x1020002

    .line 28
    invoke-virtual {v3, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_9

    .line 29
    sget-object v0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->TAG:Ljava/lang/String;

    const-string v2, "addOverlay return. content is null"

    invoke-static {v0, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 30
    :cond_9
    new-instance v10, Lcom/meishu/sdk/core/view/FeedAdOverlayView;

    new-instance v11, Lcom/meishu/sdk/core/view/a;

    invoke-direct {v11, v1, v4}, Lcom/meishu/sdk/core/view/a;-><init>(Lcom/meishu/sdk/core/view/FeedAdOverlayManager;Landroid/view/View;)V

    invoke-direct {v10, v3, v4, v11}, Lcom/meishu/sdk/core/view/FeedAdOverlayView;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/meishu/sdk/core/view/FeedAdOverlayView$OnOverlayClickListener;)V

    .line 31
    invoke-virtual {v10, v7}, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->setOverlayUniqueId(Ljava/lang/String;)V

    move/from16 v11, p4

    .line 32
    invoke-virtual {v10, v11}, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->setMinSlideDistanceDp(I)V

    .line 33
    invoke-virtual {v10, v0, v5, v8, v9}, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->setExtendRatios(IIII)V

    .line 34
    new-instance v0, Lcom/meishu/sdk/core/view/b;

    invoke-direct {v0, v1}, Lcom/meishu/sdk/core/view/b;-><init>(Lcom/meishu/sdk/core/view/FeedAdOverlayManager;)V

    invoke-virtual {v10, v0}, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->setInvalidityChecker(Lcom/meishu/sdk/core/view/FeedAdOverlayView$InvalidityCheckerListener;)V

    .line 35
    new-instance v0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$1;

    move-object/from16 v9, p7

    invoke-direct {v0, v1, v9}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$1;-><init>(Lcom/meishu/sdk/core/view/FeedAdOverlayManager;Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OnOverlayTriggerAction;)V

    invoke-virtual {v10, v0}, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->setAttachListener(Lcom/meishu/sdk/core/view/FeedAdOverlayView$OnOverlayAttachListener;)V

    .line 36
    invoke-virtual {v10, v2}, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->attachToContent(Landroid/view/ViewGroup;)V

    .line 37
    iget-object v0, v1, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->entries:Ljava/util/List;

    new-instance v2, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;

    move-object v5, v10

    move v8, v12

    invoke-direct/range {v2 .. v9}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/meishu/sdk/core/view/FeedAdOverlayView;Ljava/lang/String;Ljava/lang/String;ILcom/meishu/sdk/core/view/FeedAdOverlayManager$OnOverlayTriggerAction;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 38
    :try_start_3
    iget-object v0, v1, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->appStateListener:Lcom/meishu/sdk/core/service/a;

    invoke-static {v0}, Lcom/meishu/sdk/core/service/d;->a(Lcom/meishu/sdk/core/service/e;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 39
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    :goto_0
    sget-object v0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add posId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " slideClickEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " uniqueId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 41
    :cond_a
    :goto_1
    sget-object v0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->TAG:Ljava/lang/String;

    const-string v2, "addOverlay return. is null"

    invoke-static {v0, v2}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    .line 42
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->appStateListener:Lcom/meishu/sdk/core/service/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/core/service/d;->b(Lcom/meishu/sdk/core/service/e;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->entries:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->overlayView:Lcom/meishu/sdk/core/view/FeedAdOverlayView;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->detach()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->entries:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onAdClickedIfOverlayExists(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->findEntryByUniqueId(Ljava/lang/String;)Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/meishu/sdk/core/utils/r;->a()Lcom/meishu/sdk/core/utils/r;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "_slide_overlay"

    .line 12
    .line 13
    invoke-static {p2, v1}, Lcom/meishu/sdk/core/utils/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    invoke-virtual {v0, v1, v2, v3}, Lcom/meishu/sdk/core/utils/r;->b(Ljava/lang/String;J)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->incrementTodayCount()V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-direct {p0, p2, p3, p1}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->removeByPosIdOrActivity(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public removeOverlay(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->findEntryByUniqueId(Ljava/lang/String;)Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p1, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->overlayView:Lcom/meishu/sdk/core/view/FeedAdOverlayView;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->detach()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->entries:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public updateAdContainer(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->findEntryByUniqueId(Ljava/lang/String;)Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->adContainerRef:Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-ne v1, p2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-direct {p0, p2}, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->releaseEntriesAdContainerRef(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->overlayView:Lcom/meishu/sdk/core/view/FeedAdOverlayView;

    .line 23
    .line 24
    invoke-virtual {v1, p2}, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->updateAdContainer(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 28
    .line 29
    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, v0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->adContainerRef:Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    iget-object p2, v0, Lcom/meishu/sdk/core/view/FeedAdOverlayManager$OverlayEntry;->overlayView:Lcom/meishu/sdk/core/view/FeedAdOverlayView;

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/meishu/sdk/core/view/FeedAdOverlayView;->requestPositionUpdate()V

    .line 37
    .line 38
    .line 39
    sget-object p2, Lcom/meishu/sdk/core/view/FeedAdOverlayManager;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v1, "updateAdContainer uniqueId="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p2, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_0
    return-void
.end method
