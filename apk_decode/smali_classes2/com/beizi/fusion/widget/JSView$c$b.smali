.class Lcom/beizi/fusion/widget/JSView$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/widget/JSView$c;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/widget/JSView$c;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/widget/JSView$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/widget/JSView$c$b;->a:Lcom/beizi/fusion/widget/JSView$c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/widget/JSView$c$b;->a:Lcom/beizi/fusion/widget/JSView$c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/beizi/fusion/widget/JSView$c;->a:Lcom/beizi/fusion/widget/JSView;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/beizi/fusion/widget/JSView;->c(Lcom/beizi/fusion/widget/JSView;)Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/widget/JSView$c$b;->a:Lcom/beizi/fusion/widget/JSView$c;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/beizi/fusion/widget/JSView$c;->a:Lcom/beizi/fusion/widget/JSView;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/beizi/fusion/widget/JSView;->c(Lcom/beizi/fusion/widget/JSView;)Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;->getReport()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-lez v0, :cond_2

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    move v2, v0

    .line 33
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-ge v2, v0, :cond_2

    .line 38
    .line 39
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Ljava/lang/CharSequence;

    .line 44
    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/beizi/fusion/widget/JSView$c$b;->a:Lcom/beizi/fusion/widget/JSView$c;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/beizi/fusion/widget/JSView$c;->a:Lcom/beizi/fusion/widget/JSView;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/beizi/fusion/widget/JSView;->d(Lcom/beizi/fusion/widget/JSView;)Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Ljava/lang/String;

    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    invoke-static {v0, v3, v4}, Lcom/beizi/fusion/ro;->a(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/events/EventBean;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v3, p0, Lcom/beizi/fusion/widget/JSView$c$b;->a:Lcom/beizi/fusion/widget/JSView$c;

    .line 71
    .line 72
    iget-object v3, v3, Lcom/beizi/fusion/widget/JSView$c;->a:Lcom/beizi/fusion/widget/JSView;

    .line 73
    .line 74
    invoke-static {v3}, Lcom/beizi/fusion/widget/JSView;->c(Lcom/beizi/fusion/widget/JSView;)Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v3}, Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;->getUserAgent()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {v0, v3}, Lcom/beizi/fusion/o9;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    .line 87
    .line 88
    iget-object v0, p0, Lcom/beizi/fusion/widget/JSView$c$b;->a:Lcom/beizi/fusion/widget/JSView$c;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/beizi/fusion/widget/JSView$c;->a:Lcom/beizi/fusion/widget/JSView;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/beizi/fusion/widget/JSView;->d(Lcom/beizi/fusion/widget/JSView;)Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/beizi/fusion/events/EventCar;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/events/EventCar;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-instance v3, Lcom/beizi/fusion/events/EventBean;

    .line 101
    .line 102
    sget-object v4, Lcom/beizi/fusion/q1;->u:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v5}, Lcom/beizi/fusion/q1;->c()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 113
    .line 114
    .line 115
    move-result-wide v5

    .line 116
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    const-string v10, ""

    .line 121
    .line 122
    const-string v12, ""

    .line 123
    .line 124
    const-string v5, ""

    .line 125
    .line 126
    const-string v6, "520.200"

    .line 127
    .line 128
    const-string v7, ""

    .line 129
    .line 130
    const-string v9, ""

    .line 131
    .line 132
    invoke-direct/range {v3 .. v12}, Lcom/beizi/fusion/events/EventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v3}, Lcom/beizi/fusion/events/EventCar;->goRoadWithoutThread(Lcom/beizi/fusion/events/EventBean;)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/widget/JSView$c$b;->a:Lcom/beizi/fusion/widget/JSView$c;

    .line 140
    .line 141
    iget-object v0, v0, Lcom/beizi/fusion/widget/JSView$c;->a:Lcom/beizi/fusion/widget/JSView;

    .line 142
    .line 143
    invoke-static {v0}, Lcom/beizi/fusion/widget/JSView;->d(Lcom/beizi/fusion/widget/JSView;)Landroid/content/Context;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {v0}, Lcom/beizi/fusion/events/EventCar;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/events/EventCar;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    new-instance v3, Lcom/beizi/fusion/events/EventBean;

    .line 152
    .line 153
    sget-object v4, Lcom/beizi/fusion/q1;->u:Ljava/lang/String;

    .line 154
    .line 155
    invoke-static {}, Lcom/beizi/fusion/q1;->i()Lcom/beizi/fusion/q1;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v5}, Lcom/beizi/fusion/q1;->c()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 164
    .line 165
    .line 166
    move-result-wide v5

    .line 167
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v11

    .line 171
    const-string v10, ""

    .line 172
    .line 173
    const-string v12, ""

    .line 174
    .line 175
    const-string v5, ""

    .line 176
    .line 177
    const-string v6, "520.500"

    .line 178
    .line 179
    const-string v7, ""

    .line 180
    .line 181
    const-string v9, ""

    .line 182
    .line 183
    invoke-direct/range {v3 .. v12}, Lcom/beizi/fusion/events/EventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v3}, Lcom/beizi/fusion/events/EventCar;->goRoadWithoutThread(Lcom/beizi/fusion/events/EventBean;)V

    .line 187
    .line 188
    .line 189
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/widget/JSView$c$b;->a:Lcom/beizi/fusion/widget/JSView$c;

    .line 190
    .line 191
    iget-object v0, v0, Lcom/beizi/fusion/widget/JSView$c;->a:Lcom/beizi/fusion/widget/JSView;

    .line 192
    .line 193
    invoke-static {v0}, Lcom/beizi/fusion/widget/JSView;->c(Lcom/beizi/fusion/widget/JSView;)Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;->getSleepTime()J

    .line 198
    .line 199
    .line 200
    move-result-wide v3

    .line 201
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :catch_0
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 207
    .line 208
    .line 209
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 210
    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :cond_2
    return-void
.end method
