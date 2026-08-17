.class Lcom/umeng/analytics/pro/o$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/pro/o;


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/pro/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/umeng/analytics/pro/o;->z()Lcom/umeng/analytics/pro/cf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/umeng/analytics/pro/cf;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 1
    const-string v0, "header_first_resume"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const-string v0, "MobclickRT"

    .line 10
    .line 11
    const-string v1, "--->>> onActivityPaused: FirstResumeTrigger enabled."

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/umeng/analytics/pro/o;->x()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    invoke-static {}, Lcom/umeng/analytics/pro/o;->y()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    monitor-exit v0

    .line 32
    goto :goto_1

    .line 33
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p1

    .line 35
    :cond_1
    const-string v0, "MobclickRT"

    .line 36
    .line 37
    const-string v1, "--->>> onActivityPaused: FirstResumeTrigger disabled."

    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_1
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode;

    .line 43
    .line 44
    sget-object v1, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    .line 45
    .line 46
    if-eq v0, v1, :cond_3

    .line 47
    .line 48
    sget-object p1, Lcom/umeng/commonsdk/UMConfigure;->AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode;

    .line 49
    .line 50
    sget-object v0, Lcom/umeng/analytics/MobclickAgent$PageMode;->MANUAL:Lcom/umeng/analytics/MobclickAgent$PageMode;

    .line 51
    .line 52
    if-ne p1, v0, :cond_2

    .line 53
    .line 54
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/umeng/analytics/b;->i()V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void

    .line 62
    :cond_3
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 63
    .line 64
    invoke-static {v0, p1}, Lcom/umeng/analytics/pro/o;->c(Lcom/umeng/analytics/pro/o;Landroid/app/Activity;)V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/umeng/analytics/b;->i()V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    iput-boolean v1, v0, Lcom/umeng/analytics/pro/o;->b:Z

    .line 78
    .line 79
    invoke-static {}, Lcom/umeng/analytics/pro/o;->z()Lcom/umeng/analytics/pro/cf;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-interface {v0, p1}, Lcom/umeng/analytics/pro/cf;->d(Landroid/app/Activity;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 11

    .line 1
    const-string v0, "MobclickRT"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "***>>> \u89e6\u53d1 "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, " onResumed \u4e8b\u4ef6"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/umeng/analytics/pro/o;->c(Lcom/umeng/analytics/pro/o;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v1, 0x0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/umeng/analytics/pro/o;->d(Lcom/umeng/analytics/pro/o;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/umeng/analytics/pro/o;->n(Lcom/umeng/analytics/pro/o;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v6

    .line 65
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/umeng/analytics/pro/o;->e(Lcom/umeng/analytics/pro/o;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v2

    .line 71
    sub-long v8, v6, v2

    .line 72
    .line 73
    const-wide/16 v2, 0x5dc

    .line 74
    .line 75
    cmp-long v0, v8, v2

    .line 76
    .line 77
    const/4 v2, 0x1

    .line 78
    if-ltz v0, :cond_0

    .line 79
    .line 80
    move v10, v2

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    move v10, v1

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 84
    .line 85
    invoke-static {v0, v2}, Lcom/umeng/analytics/pro/o;->c(Lcom/umeng/analytics/pro/o;Z)Z

    .line 86
    .line 87
    .line 88
    new-instance v2, Lcom/umeng/analytics/pro/o$d;

    .line 89
    .line 90
    iget-object v3, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 91
    .line 92
    invoke-static {v3}, Lcom/umeng/analytics/pro/o;->a(Lcom/umeng/analytics/pro/o;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-direct/range {v2 .. v10}, Lcom/umeng/analytics/pro/o$d;-><init>(Lcom/umeng/analytics/pro/o;Ljava/lang/String;Ljava/lang/String;JJI)V

    .line 105
    .line 106
    .line 107
    invoke-static {}, Lcom/umeng/analytics/pro/o;->r()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    monitor-enter v3

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 113
    .line 114
    invoke-static {v0}, Lcom/umeng/analytics/pro/o;->o(Lcom/umeng/analytics/pro/o;)Ljava/util/ArrayList;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->getInitStatus()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_1

    .line 127
    .line 128
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-static {}, Lcom/umeng/ccg/d;->a()Lcom/umeng/ccg/d;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    const/4 v5, 0x0

    .line 137
    const-wide/16 v6, 0x0

    .line 138
    .line 139
    const/16 v3, 0x13c

    .line 140
    .line 141
    invoke-static/range {v2 .. v7}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/c$a;Ljava/lang/Object;J)V

    .line 142
    .line 143
    .line 144
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 145
    .line 146
    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/o;->a(Lcom/umeng/analytics/pro/o;Z)Z

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 150
    .line 151
    const/4 v2, 0x0

    .line 152
    invoke-static {v0, v2}, Lcom/umeng/analytics/pro/o;->a(Lcom/umeng/analytics/pro/o;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :catchall_0
    move-exception v0

    .line 157
    move-object p1, v0

    .line 158
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    throw p1

    .line 160
    :cond_2
    :goto_1
    const-string v0, "header_first_resume"

    .line 161
    .line 162
    invoke-static {v0}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_4

    .line 167
    .line 168
    const-string v0, "MobclickRT"

    .line 169
    .line 170
    const-string v2, "--->>> onActivityResumed: FirstResumeTrigger enabled."

    .line 171
    .line 172
    invoke-static {v0, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-static {}, Lcom/umeng/analytics/pro/o;->x()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    monitor-enter v2

    .line 180
    :try_start_2
    invoke-static {}, Lcom/umeng/analytics/pro/o;->y()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_3

    .line 185
    .line 186
    invoke-static {v1}, Lcom/umeng/analytics/pro/o;->c(Z)Z

    .line 187
    .line 188
    .line 189
    goto :goto_2

    .line 190
    :catchall_1
    move-exception v0

    .line 191
    move-object p1, v0

    .line 192
    goto :goto_3

    .line 193
    :cond_3
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 194
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 195
    .line 196
    invoke-static {v0, p1}, Lcom/umeng/analytics/pro/o;->b(Lcom/umeng/analytics/pro/o;Landroid/app/Activity;)V

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 201
    throw p1

    .line 202
    :cond_4
    const-string v0, "MobclickRT"

    .line 203
    .line 204
    const-string v1, "--->>> onActivityResumed: FirstResumeTrigger disabled."

    .line 205
    .line 206
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 210
    .line 211
    invoke-static {v0, p1}, Lcom/umeng/analytics/pro/o;->b(Lcom/umeng/analytics/pro/o;Landroid/app/Activity;)V

    .line 212
    .line 213
    .line 214
    :goto_4
    invoke-static {}, Lcom/umeng/analytics/pro/o;->z()Lcom/umeng/analytics/pro/cf;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-interface {v0, p1}, Lcom/umeng/analytics/pro/cf;->c(Landroid/app/Activity;)V

    .line 219
    .line 220
    .line 221
    invoke-static {}, Lcom/umeng/analytics/pro/o;->A()V

    .line 222
    .line 223
    .line 224
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 8

    .line 1
    if-eqz p1, :cond_7

    .line 2
    .line 3
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/umeng/analytics/pro/o;->i(Lcom/umeng/analytics/pro/o;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gtz v0, :cond_5

    .line 10
    .line 11
    sget-object v0, Lcom/umeng/analytics/pro/o;->d:Ljava/lang/String;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/umeng/analytics/pro/o;->d:Ljava/lang/String;

    .line 24
    .line 25
    :cond_0
    sget v0, Lcom/umeng/analytics/pro/o;->e:I

    .line 26
    .line 27
    const/4 v1, -0x1

    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->isTaskRoot()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    sput v0, Lcom/umeng/analytics/pro/o;->e:I

    .line 35
    .line 36
    :cond_1
    sget v0, Lcom/umeng/analytics/pro/o;->e:I

    .line 37
    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    new-instance v0, Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v1, "activityName"

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    const-string v1, "pid"

    .line 61
    .line 62
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    const-string v1, "isMainProcess"

    .line 74
    .line 75
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    if-eqz v1, :cond_2

    .line 91
    .line 92
    const-string v2, "$$_onUMengEnterForegroundInitError"

    .line 93
    .line 94
    invoke-virtual {v1, p1, v2, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    const/4 v0, -0x2

    .line 98
    sput v0, Lcom/umeng/analytics/pro/o;->e:I

    .line 99
    .line 100
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    const-string v0, "\u8bf7\u5728Application.onCreate\u51fd\u6570\u4e2d\u4f7f\u7528UMConfigure.preInit\u51fd\u6570\u521d\u59cb\u5316\u53cb\u76dfsdk"

    .line 107
    .line 108
    filled-new-array {v0}, [Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const/4 v1, 0x2

    .line 113
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_3
    sget v0, Lcom/umeng/analytics/pro/o;->e:I

    .line 118
    .line 119
    const/4 v1, 0x1

    .line 120
    if-eq v0, v1, :cond_4

    .line 121
    .line 122
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_5

    .line 127
    .line 128
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    .line 129
    .line 130
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v1, "pairUUID"

    .line 134
    .line 135
    sget-object v2, Lcom/umeng/analytics/pro/o;->d:Ljava/lang/String;

    .line 136
    .line 137
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    const-string v1, "pid"

    .line 141
    .line 142
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    const-string v1, "isMainProcess"

    .line 154
    .line 155
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    const-string v1, "activityName"

    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    if-eqz v1, :cond_5

    .line 180
    .line 181
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    const-string v2, "$$_onUMengEnterForeground"

    .line 186
    .line 187
    invoke-virtual {v1, p1, v2, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 188
    .line 189
    .line 190
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 191
    .line 192
    invoke-static {v0}, Lcom/umeng/analytics/pro/o;->j(Lcom/umeng/analytics/pro/o;)I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-gez v0, :cond_6

    .line 197
    .line 198
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 199
    .line 200
    invoke-static {v0}, Lcom/umeng/analytics/pro/o;->k(Lcom/umeng/analytics/pro/o;)I

    .line 201
    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_6
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 205
    .line 206
    invoke-static {v0}, Lcom/umeng/analytics/pro/o;->l(Lcom/umeng/analytics/pro/o;)I

    .line 207
    .line 208
    .line 209
    :cond_7
    :goto_1
    invoke-static {}, Lcom/umeng/analytics/pro/o;->s()Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-nez v0, :cond_8

    .line 214
    .line 215
    const-string p1, "MobclickRT"

    .line 216
    .line 217
    const-string v0, "PI: local switch is off!"

    .line 218
    .line 219
    invoke-static {p1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :cond_8
    invoke-static {}, Lcom/umeng/analytics/pro/o;->t()Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-nez v0, :cond_9

    .line 228
    .line 229
    const-string p1, "MobclickRT"

    .line 230
    .line 231
    const-string v0, "PI: cloud switch is off!"

    .line 232
    .line 233
    invoke-static {p1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :cond_9
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 238
    .line 239
    invoke-static {v0, p1}, Lcom/umeng/analytics/pro/o;->a(Lcom/umeng/analytics/pro/o;Landroid/app/Activity;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    if-eqz v0, :cond_b

    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-nez v1, :cond_b

    .line 250
    .line 251
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    if-nez v2, :cond_a

    .line 264
    .line 265
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-nez v1, :cond_a

    .line 270
    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 272
    .line 273
    .line 274
    move-result-wide v1

    .line 275
    invoke-static {v1, v2}, Lcom/umeng/analytics/pro/o;->b(J)J

    .line 276
    .line 277
    .line 278
    invoke-static {v0}, Lcom/umeng/analytics/pro/o;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    const-string v1, "MobclickRT"

    .line 282
    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .line 287
    .line 288
    const-string v3, "--->>>PI: p: "

    .line 289
    .line 290
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v3, "; ts: "

    .line 297
    .line 298
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-static {}, Lcom/umeng/analytics/pro/o;->u()J

    .line 302
    .line 303
    .line 304
    move-result-wide v3

    .line 305
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-static {v1, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    iget-object v1, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 316
    .line 317
    invoke-static {v1, p1, v0}, Lcom/umeng/analytics/pro/o;->a(Lcom/umeng/analytics/pro/o;Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v7

    .line 321
    invoke-static {}, Lcom/umeng/analytics/pro/o;->v()Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    monitor-enter p1

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 327
    .line 328
    invoke-static {v0}, Lcom/umeng/analytics/pro/o;->m(Lcom/umeng/analytics/pro/o;)Ljava/util/ArrayList;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    new-instance v2, Lcom/umeng/analytics/pro/o$b;

    .line 333
    .line 334
    iget-object v3, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 335
    .line 336
    invoke-static {}, Lcom/umeng/analytics/pro/o;->w()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    invoke-static {}, Lcom/umeng/analytics/pro/o;->u()J

    .line 341
    .line 342
    .line 343
    move-result-wide v5

    .line 344
    invoke-direct/range {v2 .. v7}, Lcom/umeng/analytics/pro/o$b;-><init>(Lcom/umeng/analytics/pro/o;Ljava/lang/String;JLjava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    const-string v0, ""

    .line 351
    .line 352
    invoke-static {v0}, Lcom/umeng/analytics/pro/o;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    const-wide/16 v0, 0x0

    .line 356
    .line 357
    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/o;->b(J)J

    .line 358
    .line 359
    .line 360
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->getInitStatus()Z

    .line 362
    .line 363
    .line 364
    move-result p1

    .line 365
    if-eqz p1, :cond_b

    .line 366
    .line 367
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-static {}, Lcom/umeng/ccg/d;->a()Lcom/umeng/ccg/d;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    const/4 v3, 0x0

    .line 376
    const-wide/16 v4, 0x0

    .line 377
    .line 378
    const/16 v1, 0x136

    .line 379
    .line 380
    invoke-static/range {v0 .. v5}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/c$a;Ljava/lang/Object;J)V

    .line 381
    .line 382
    .line 383
    return-void

    .line 384
    :catchall_0
    move-exception v0

    .line 385
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    throw v0

    .line 387
    :cond_a
    const-string p1, "MobclickRT"

    .line 388
    .line 389
    const-string v0, "--->>> PI: internal path switch, or pkg is null. ignore it."

    .line 390
    .line 391
    invoke-static {p1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    :cond_b
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 11

    .line 1
    const-string v0, "MobclickRT"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "***>>> \u89e6\u53d1 "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, " onStopped \u4e8b\u4ef6"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/umeng/analytics/pro/o;->c(Lcom/umeng/analytics/pro/o;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v1, 0x1

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/umeng/analytics/pro/o;->d(Lcom/umeng/analytics/pro/o;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_0

    .line 52
    .line 53
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 54
    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 56
    .line 57
    .line 58
    move-result-wide v2

    .line 59
    invoke-static {v0, v2, v3}, Lcom/umeng/analytics/pro/o;->a(Lcom/umeng/analytics/pro/o;J)J

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 63
    .line 64
    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/o;->b(Lcom/umeng/analytics/pro/o;Z)Z

    .line 65
    .line 66
    .line 67
    new-instance v2, Lcom/umeng/analytics/pro/o$d;

    .line 68
    .line 69
    iget-object v3, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 70
    .line 71
    invoke-static {v3}, Lcom/umeng/analytics/pro/o;->a(Lcom/umeng/analytics/pro/o;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 84
    .line 85
    invoke-static {v0}, Lcom/umeng/analytics/pro/o;->e(Lcom/umeng/analytics/pro/o;)J

    .line 86
    .line 87
    .line 88
    move-result-wide v6

    .line 89
    const-wide/16 v8, 0x0

    .line 90
    .line 91
    const/4 v10, -0x1

    .line 92
    invoke-direct/range {v2 .. v10}, Lcom/umeng/analytics/pro/o$d;-><init>(Lcom/umeng/analytics/pro/o;Ljava/lang/String;Ljava/lang/String;JJI)V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Lcom/umeng/analytics/pro/o;->r()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    monitor-enter v3

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 101
    .line 102
    invoke-static {v0}, Lcom/umeng/analytics/pro/o;->f(Lcom/umeng/analytics/pro/o;)Ljava/util/ArrayList;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->getInitStatus()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    .line 116
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-static {}, Lcom/umeng/ccg/d;->a()Lcom/umeng/ccg/d;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    const/4 v5, 0x0

    .line 125
    const-wide/16 v6, 0x0

    .line 126
    .line 127
    const/16 v3, 0x13c

    .line 128
    .line 129
    invoke-static/range {v2 .. v7}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/c$a;Ljava/lang/Object;J)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    .line 134
    move-object p1, v0

    .line 135
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    throw p1

    .line 137
    :cond_0
    :goto_0
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    .line 138
    .line 139
    sget-object v0, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    .line 140
    .line 141
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_1

    .line 146
    .line 147
    iget-object p1, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 148
    .line 149
    invoke-static {p1}, Lcom/umeng/analytics/pro/o;->g(Lcom/umeng/analytics/pro/o;)I

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 154
    .line 155
    invoke-static {v0}, Lcom/umeng/analytics/pro/o;->h(Lcom/umeng/analytics/pro/o;)I

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/umeng/analytics/pro/o$3;->a:Lcom/umeng/analytics/pro/o;

    .line 159
    .line 160
    invoke-static {v0}, Lcom/umeng/analytics/pro/o;->i(Lcom/umeng/analytics/pro/o;)I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-gtz v0, :cond_5

    .line 165
    .line 166
    sget v0, Lcom/umeng/analytics/pro/o;->e:I

    .line 167
    .line 168
    if-nez v0, :cond_2

    .line 169
    .line 170
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_2

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_2
    sget v0, Lcom/umeng/analytics/pro/o;->e:I

    .line 178
    .line 179
    if-eq v0, v1, :cond_3

    .line 180
    .line 181
    if-nez v0, :cond_5

    .line 182
    .line 183
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-nez v0, :cond_5

    .line 188
    .line 189
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    .line 190
    .line 191
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v1, "pairUUID"

    .line 195
    .line 196
    sget-object v2, Lcom/umeng/analytics/pro/o;->d:Ljava/lang/String;

    .line 197
    .line 198
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    const-string v1, "reason"

    .line 202
    .line 203
    const-string v2, "Normal"

    .line 204
    .line 205
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    const-string v1, "pid"

    .line 209
    .line 210
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    const-string v1, "isMainProcess"

    .line 222
    .line 223
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    const-string v1, "activityName"

    .line 235
    .line 236
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    if-eqz v1, :cond_4

    .line 248
    .line 249
    const-string v2, "$$_onUMengEnterBackground"

    .line 250
    .line 251
    invoke-virtual {v1, p1, v2, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 252
    .line 253
    .line 254
    :cond_4
    sget-object p1, Lcom/umeng/analytics/pro/o;->d:Ljava/lang/String;

    .line 255
    .line 256
    if-eqz p1, :cond_5

    .line 257
    .line 258
    const/4 p1, 0x0

    .line 259
    sput-object p1, Lcom/umeng/analytics/pro/o;->d:Ljava/lang/String;

    .line 260
    .line 261
    :cond_5
    :goto_1
    return-void
.end method
