.class public Lcom/meishu/sdk/core/webview/q$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/webview/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/webview/q;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/webview/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/webview/q$a;->a:Lcom/meishu/sdk/core/webview/q;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 9

    .line 1
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/service/d;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x1f4

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/q$a;->a:Lcom/meishu/sdk/core/webview/q;

    .line 12
    .line 13
    iget-wide v5, v0, Lcom/meishu/sdk/core/webview/q;->e:J

    .line 14
    .line 15
    cmp-long v3, v5, v3

    .line 16
    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    iput-wide v3, v0, Lcom/meishu/sdk/core/webview/q;->e:J

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/q$a;->a:Lcom/meishu/sdk/core/webview/q;

    .line 30
    .line 31
    iget v3, v0, Lcom/meishu/sdk/core/webview/q;->c:I

    .line 32
    .line 33
    add-int/lit16 v3, v3, 0x1f4

    .line 34
    .line 35
    iput v3, v0, Lcom/meishu/sdk/core/webview/q;->c:I

    .line 36
    .line 37
    const/4 v3, 0x2

    .line 38
    iput v3, v0, Lcom/meishu/sdk/core/webview/q;->b:I

    .line 39
    .line 40
    sget-object v3, Lcom/meishu/sdk/core/webview/q;->i:Landroid/os/Handler;

    .line 41
    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    iget-object v0, v0, Lcom/meishu/sdk/core/webview/q;->f:Ljava/lang/Runnable;

    .line 45
    .line 46
    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/q$a;->a:Lcom/meishu/sdk/core/webview/q;

    .line 51
    .line 52
    iget v5, v0, Lcom/meishu/sdk/core/webview/q;->b:I

    .line 53
    .line 54
    const/4 v6, 0x1

    .line 55
    if-eq v5, v6, :cond_4

    .line 56
    .line 57
    iget-wide v7, v0, Lcom/meishu/sdk/core/webview/q;->e:J

    .line 58
    .line 59
    cmp-long v0, v7, v3

    .line 60
    .line 61
    if-lez v0, :cond_4

    .line 62
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/q$a;->a:Lcom/meishu/sdk/core/webview/q;

    .line 68
    .line 69
    iget-wide v7, v0, Lcom/meishu/sdk/core/webview/q;->e:J

    .line 70
    .line 71
    sub-long/2addr v3, v7

    .line 72
    sget v0, Lcom/meishu/sdk/core/webview/q;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    int-to-long v7, v0

    .line 75
    cmp-long v0, v3, v7

    .line 76
    .line 77
    const-string v3, "WebViewUtil"

    .line 78
    .line 79
    if-gez v0, :cond_3

    .line 80
    .line 81
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v4, "task_interrupted, mUpdateTime="

    .line 87
    .line 88
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v4, p0, Lcom/meishu/sdk/core/webview/q$a;->a:Lcom/meishu/sdk/core/webview/q;

    .line 92
    .line 93
    iget v4, v4, Lcom/meishu/sdk/core/webview/q;->c:I

    .line 94
    .line 95
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v4, ",rewardTmpTime="

    .line 99
    .line 100
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    sget v4, Lcom/meishu/sdk/core/webview/q;->j:I

    .line 104
    .line 105
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v3, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/q$a;->a:Lcom/meishu/sdk/core/webview/q;

    .line 116
    .line 117
    const-string v3, "task_interrupted"

    .line 118
    .line 119
    invoke-static {v0, v3}, Lcom/meishu/sdk/core/webview/q;->a(Lcom/meishu/sdk/core/webview/q;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    const-string v0, "\u8fbe\u5230\u76ee\u6807\u65f6\u95f4\uff0c\u6210\u529f ,task_completed"

    .line 124
    .line 125
    invoke-static {v3, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/q$a;->a:Lcom/meishu/sdk/core/webview/q;

    .line 129
    .line 130
    invoke-static {v0, v6}, Lcom/meishu/sdk/core/webview/q;->a(Lcom/meishu/sdk/core/webview/q;Z)Z

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/q$a;->a:Lcom/meishu/sdk/core/webview/q;

    .line 134
    .line 135
    const-string v3, "task_completed"

    .line 136
    .line 137
    invoke-static {v0, v3}, Lcom/meishu/sdk/core/webview/q;->a(Lcom/meishu/sdk/core/webview/q;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/q$a;->a:Lcom/meishu/sdk/core/webview/q;

    .line 141
    .line 142
    const/4 v3, 0x0

    .line 143
    iput v3, v0, Lcom/meishu/sdk/core/webview/q;->c:I

    .line 144
    .line 145
    sget-object v0, Lcom/meishu/sdk/core/webview/q;->i:Landroid/os/Handler;

    .line 146
    .line 147
    const/4 v3, 0x0

    .line 148
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/q$a;->a:Lcom/meishu/sdk/core/webview/q;

    .line 152
    .line 153
    iget-object v0, v0, Lcom/meishu/sdk/core/webview/q;->g:Lcom/meishu/sdk/core/webview/j;

    .line 154
    .line 155
    if-eqz v0, :cond_4

    .line 156
    .line 157
    invoke-interface {v0}, Lcom/meishu/sdk/core/webview/j;->onRewardSuccess()V

    .line 158
    .line 159
    .line 160
    :cond_4
    :goto_1
    sget-object v0, Lcom/meishu/sdk/core/webview/q;->i:Landroid/os/Handler;

    .line 161
    .line 162
    iget-object v3, p0, Lcom/meishu/sdk/core/webview/q$a;->a:Lcom/meishu/sdk/core/webview/q;

    .line 163
    .line 164
    iget-object v3, v3, Lcom/meishu/sdk/core/webview/q;->f:Ljava/lang/Runnable;

    .line 165
    .line 166
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/meishu/sdk/core/webview/q$a;->a:Lcom/meishu/sdk/core/webview/q;

    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    iput v6, v0, Lcom/meishu/sdk/core/webview/q;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .line 176
    return-void

    .line 177
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 178
    .line 179
    .line 180
    return-void
.end method
