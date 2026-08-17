.class final Lcom/kwad/sdk/m/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/m/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/m/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic bmV:Ljava/lang/String;

.field final synthetic bmW:Lcom/kwad/sdk/m/e$a;

.field final synthetic bmX:Lcom/tencent/matrix/plugin/PluginListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/kwad/sdk/m/e$a;Lcom/tencent/matrix/plugin/PluginListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/m/e$1;->bmV:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/sdk/m/e$1;->bmW:Lcom/kwad/sdk/m/e$a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/sdk/m/e$1;->bmX:Lcom/tencent/matrix/plugin/PluginListener;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    const/4 p1, 0x0

    .line 2
    const-string v0, "originPluginListener callback:"

    .line 3
    .line 4
    const-string v1, "perfMonitor.RangerInjector"

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v1, v2}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    move-object p2, v0

    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v3, p0, Lcom/kwad/sdk/m/e$1;->bmV:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/4 v3, 0x0

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    aget-object p2, p3, v3

    .line 46
    .line 47
    check-cast p2, Lcom/tencent/matrix/report/Issue;

    .line 48
    .line 49
    new-instance p3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/tencent/matrix/report/Issue;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    invoke-static {v1, p3}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    :try_start_1
    invoke-virtual {p2}, Lcom/tencent/matrix/report/Issue;->getContent()Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    invoke-static {p3}, Lcom/kwad/sdk/m/e;->v(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {p3}, Lcom/kwad/sdk/m/e;->w(Lorg/json/JSONObject;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v4

    .line 80
    invoke-static {p3}, Lcom/kwad/sdk/m/e;->x(Lorg/json/JSONObject;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v2

    .line 84
    invoke-static {p3}, Lcom/kwad/sdk/m/e;->y(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-static {p3}, Lcom/kwad/sdk/m/e;->z(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    iget-object v0, p0, Lcom/kwad/sdk/m/e$1;->bmW:Lcom/kwad/sdk/m/e$a;

    .line 93
    .line 94
    if-eqz v0, :cond_1

    .line 95
    .line 96
    invoke-interface/range {v0 .. v7}, Lcom/kwad/sdk/m/e$a;->a(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    .line 98
    .line 99
    :catchall_1
    :cond_1
    :try_start_2
    iget-object p3, p0, Lcom/kwad/sdk/m/e$1;->bmX:Lcom/tencent/matrix/plugin/PluginListener;

    .line 100
    .line 101
    invoke-interface {p3, p2}, Lcom/tencent/matrix/plugin/PluginListener;->onReportIssue(Lcom/tencent/matrix/report/Issue;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v2, "onInit"

    .line 110
    .line 111
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_3

    .line 116
    .line 117
    aget-object p2, p3, v3

    .line 118
    .line 119
    check-cast p2, Lcom/tencent/matrix/plugin/Plugin;

    .line 120
    .line 121
    iget-object p3, p0, Lcom/kwad/sdk/m/e$1;->bmX:Lcom/tencent/matrix/plugin/PluginListener;

    .line 122
    .line 123
    invoke-interface {p3, p2}, Lcom/tencent/matrix/plugin/PluginListener;->onInit(Lcom/tencent/matrix/plugin/Plugin;)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const-string v2, "onStart"

    .line 132
    .line 133
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_4

    .line 138
    .line 139
    aget-object p2, p3, v3

    .line 140
    .line 141
    check-cast p2, Lcom/tencent/matrix/plugin/Plugin;

    .line 142
    .line 143
    iget-object p3, p0, Lcom/kwad/sdk/m/e$1;->bmX:Lcom/tencent/matrix/plugin/PluginListener;

    .line 144
    .line 145
    invoke-interface {p3, p2}, Lcom/tencent/matrix/plugin/PluginListener;->onStart(Lcom/tencent/matrix/plugin/Plugin;)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const-string v2, "onStop"

    .line 154
    .line 155
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_5

    .line 160
    .line 161
    aget-object p2, p3, v3

    .line 162
    .line 163
    check-cast p2, Lcom/tencent/matrix/plugin/Plugin;

    .line 164
    .line 165
    iget-object p3, p0, Lcom/kwad/sdk/m/e$1;->bmX:Lcom/tencent/matrix/plugin/PluginListener;

    .line 166
    .line 167
    invoke-interface {p3, p2}, Lcom/tencent/matrix/plugin/PluginListener;->onStop(Lcom/tencent/matrix/plugin/Plugin;)V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_5
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    const-string v2, "onDestroy"

    .line 176
    .line 177
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_6

    .line 182
    .line 183
    aget-object p2, p3, v3

    .line 184
    .line 185
    check-cast p2, Lcom/tencent/matrix/plugin/Plugin;

    .line 186
    .line 187
    iget-object p3, p0, Lcom/kwad/sdk/m/e$1;->bmX:Lcom/tencent/matrix/plugin/PluginListener;

    .line 188
    .line 189
    invoke-interface {p3, p2}, Lcom/tencent/matrix/plugin/PluginListener;->onDestroy(Lcom/tencent/matrix/plugin/Plugin;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/kwad/sdk/m/e$1;->bmX:Lcom/tencent/matrix/plugin/PluginListener;

    .line 194
    .line 195
    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :catchall_2
    move-exception v0

    .line 200
    move-object p2, v0

    .line 201
    :try_start_4
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    invoke-static {v1, p2}, Lcom/kwad/sdk/core/d/c;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 206
    .line 207
    .line 208
    :goto_1
    return-object p1

    .line 209
    :goto_2
    iget-object p3, p0, Lcom/kwad/sdk/m/e$1;->bmW:Lcom/kwad/sdk/m/e$a;

    .line 210
    .line 211
    if-eqz p3, :cond_7

    .line 212
    .line 213
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    invoke-interface {p3, p2}, Lcom/kwad/sdk/m/e$a;->onError(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    :cond_7
    return-object p1
.end method
