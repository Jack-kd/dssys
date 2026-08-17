.class public Lcom/meishu/sdk/meishu_ad/z$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/z;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/z;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/z$a;->a:Lcom/meishu/sdk/meishu_ad/z;

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
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/z$a;->a:Lcom/meishu/sdk/meishu_ad/z;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/z;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 4
    .line 5
    iget v0, v0, Lcom/meishu/sdk/meishu_ad/v;->u:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_2

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/z$a;->a:Lcom/meishu/sdk/meishu_ad/z;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/z;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getVideo_cover()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    const-string v2, "video load error"

    .line 25
    .line 26
    const-string v3, "video \u52a0\u8f7d\u8d85\u65f6 cid:"

    .line 27
    .line 28
    const v4, 0x895443

    .line 29
    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    :try_start_1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/z$a;->a:Lcom/meishu/sdk/meishu_ad/z;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/z;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getDefImage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/z$a;->a:Lcom/meishu/sdk/meishu_ad/z;

    .line 48
    .line 49
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/z;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/z;->b:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 52
    .line 53
    sget-object v5, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {v1, v0, v2, v5}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    .line 57
    .line 58
    :try_start_2
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/z$a;->a:Lcom/meishu/sdk/meishu_ad/z;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/z;->c:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/z$a;->a:Lcom/meishu/sdk/meishu_ad/z;

    .line 77
    .line 78
    iget-object v2, v2, Lcom/meishu/sdk/meishu_ad/z;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 79
    .line 80
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v0, v4, v1}, Lcom/meishu/sdk/core/utils/p1;->c([Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 97
    .line 98
    .line 99
    goto/16 :goto_2

    .line 100
    .line 101
    :catchall_1
    move-exception v0

    .line 102
    goto/16 :goto_1

    .line 103
    .line 104
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/z$a;->a:Lcom/meishu/sdk/meishu_ad/z;

    .line 105
    .line 106
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/z;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 107
    .line 108
    iget v0, v0, Lcom/meishu/sdk/meishu_ad/v;->v:I

    .line 109
    .line 110
    if-eq v0, v1, :cond_2

    .line 111
    .line 112
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/z$a;->a:Lcom/meishu/sdk/meishu_ad/z;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/z;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 115
    .line 116
    iget v0, v0, Lcom/meishu/sdk/meishu_ad/v;->w:I

    .line 117
    .line 118
    if-eq v0, v1, :cond_2

    .line 119
    .line 120
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/z$a;->a:Lcom/meishu/sdk/meishu_ad/z;

    .line 121
    .line 122
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/z;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 123
    .line 124
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/z;->b:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 125
    .line 126
    sget-object v5, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 127
    .line 128
    invoke-virtual {v1, v0, v2, v5}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    .line 130
    .line 131
    :try_start_4
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/z$a;->a:Lcom/meishu/sdk/meishu_ad/z;

    .line 132
    .line 133
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/z;->c:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 134
    .line 135
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/z$a;->a:Lcom/meishu/sdk/meishu_ad/z;

    .line 150
    .line 151
    iget-object v2, v2, Lcom/meishu/sdk/meishu_ad/z;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 152
    .line 153
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-static {v0, v4, v1}, Lcom/meishu/sdk/core/utils/p1;->c([Ljava/lang/String;ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :catchall_2
    move-exception v0

    .line 169
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_2
    :try_start_6
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/z$a;->a:Lcom/meishu/sdk/meishu_ad/z;

    .line 174
    .line 175
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/z;->c:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 176
    .line 177
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 178
    .line 179
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/z$a;->a:Lcom/meishu/sdk/meishu_ad/z;

    .line 192
    .line 193
    iget-object v3, v3, Lcom/meishu/sdk/meishu_ad/z;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 194
    .line 195
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-static {v0, v4, v2}, Lcom/meishu/sdk/core/utils/p1;->c([Ljava/lang/String;ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 207
    .line 208
    .line 209
    goto :goto_0

    .line 210
    :catchall_3
    move-exception v0

    .line 211
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 212
    .line 213
    .line 214
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/z$a;->a:Lcom/meishu/sdk/meishu_ad/z;

    .line 215
    .line 216
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/z;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 217
    .line 218
    iget v0, v0, Lcom/meishu/sdk/meishu_ad/v;->u:I

    .line 219
    .line 220
    if-eq v0, v1, :cond_3

    .line 221
    .line 222
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/z$a;->a:Lcom/meishu/sdk/meishu_ad/z;

    .line 223
    .line 224
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/z;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 225
    .line 226
    iget-object v2, v0, Lcom/meishu/sdk/meishu_ad/z;->c:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 227
    .line 228
    iget-object v3, v0, Lcom/meishu/sdk/meishu_ad/z;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 229
    .line 230
    iget v4, v0, Lcom/meishu/sdk/meishu_ad/z;->d:I

    .line 231
    .line 232
    iget v5, v0, Lcom/meishu/sdk/meishu_ad/z;->e:I

    .line 233
    .line 234
    iget-object v6, v0, Lcom/meishu/sdk/meishu_ad/z;->b:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 235
    .line 236
    iget-object v7, v0, Lcom/meishu/sdk/meishu_ad/z;->f:Landroid/view/View;

    .line 237
    .line 238
    invoke-static/range {v1 .. v7}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/d;IILcom/meishu/sdk/meishu_ad/splash/a;Landroid/view/View;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 239
    .line 240
    .line 241
    goto :goto_2

    .line 242
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 243
    .line 244
    .line 245
    :cond_3
    :goto_2
    return-void
.end method
