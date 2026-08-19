.class Lcom/octopus/ad/internal/activity/DownloadDialogActivity$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/activity/DownloadDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/activity/DownloadDialogActivity;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$a;->a:Lcom/octopus/ad/internal/activity/DownloadDialogActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8

    .line 1
    const-string v0, "status"

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x3

    .line 7
    new-array p1, p1, [I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aput v1, p1, v1

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput v1, p1, v2

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    aput v1, p1, v3

    .line 17
    .line 18
    new-instance v4, Landroid/app/DownloadManager$Query;

    .line 19
    .line 20
    invoke-direct {v4}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v5, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$a;->a:Lcom/octopus/ad/internal/activity/DownloadDialogActivity;

    .line 24
    .line 25
    invoke-static {v5}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->c(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v5

    .line 29
    new-array v7, v2, [J

    .line 30
    .line 31
    aput-wide v5, v7, v1

    .line 32
    .line 33
    invoke-virtual {v4, v7}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v5, 0x0

    .line 38
    :try_start_0
    iget-object v6, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$a;->a:Lcom/octopus/ad/internal/activity/DownloadDialogActivity;

    .line 39
    .line 40
    invoke-static {v6}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->d(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;)Landroid/app/DownloadManager;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v6, v4}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_1

    .line 55
    .line 56
    const-string v4, "bytes_so_far"

    .line 57
    .line 58
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    aput v4, p1, v1

    .line 67
    .line 68
    const-string v4, "total_size"

    .line 69
    .line 70
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    aput v4, p1, v2

    .line 79
    .line 80
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    aput v4, p1, v3

    .line 89
    .line 90
    invoke-static {}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v6, "progress\uff1a"

    .line 100
    .line 101
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    aget v6, p1, v1

    .line 105
    .line 106
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v6, "/"

    .line 110
    .line 111
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    aget v6, p1, v2

    .line 115
    .line 116
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-static {v3, v4}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    aget v3, p1, v2

    .line 127
    .line 128
    if-lez v3, :cond_0

    .line 129
    .line 130
    new-instance v3, Ljava/text/DecimalFormat;

    .line 131
    .line 132
    const-string v4, "#.#"

    .line 133
    .line 134
    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    sget-object v4, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 138
    .line 139
    invoke-virtual {v3, v4}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 140
    .line 141
    .line 142
    aget v1, p1, v1

    .line 143
    .line 144
    int-to-float v1, v1

    .line 145
    const/high16 v4, 0x42c80000    # 100.0f

    .line 146
    .line 147
    mul-float/2addr v1, v4

    .line 148
    aget p1, p1, v2

    .line 149
    .line 150
    int-to-float p1, p1

    .line 151
    div-float/2addr v1, p1

    .line 152
    float-to-double v6, v1

    .line 153
    invoke-virtual {v3, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    iget-object v1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$a;->a:Lcom/octopus/ad/internal/activity/DownloadDialogActivity;

    .line 158
    .line 159
    invoke-static {v1}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->e(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;)Lcom/octopus/ad/widget/FlickerProgressBar;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    invoke-virtual {v1, p1}, Lcom/octopus/ad/widget/FlickerProgressBar;->setProgress(F)V

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :catchall_0
    move-exception p1

    .line 172
    goto :goto_2

    .line 173
    :catch_0
    move-exception p1

    .line 174
    goto :goto_1

    .line 175
    :cond_0
    :goto_0
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    invoke-interface {v5, p1}, Landroid/database/Cursor;->getInt(I)I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    invoke-static {}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->a()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string v3, "onChange status\uff1a"

    .line 193
    .line 194
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-static {v0, v1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$a;->a:Lcom/octopus/ad/internal/activity/DownloadDialogActivity;

    .line 208
    .line 209
    invoke-static {v0}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->e(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;)Lcom/octopus/ad/widget/FlickerProgressBar;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v0, p1}, Lcom/octopus/ad/widget/FlickerProgressBar;->setStatus(I)V

    .line 214
    .line 215
    .line 216
    if-ne v2, p1, :cond_1

    .line 217
    .line 218
    iget-object p1, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$a;->a:Lcom/octopus/ad/internal/activity/DownloadDialogActivity;

    .line 219
    .line 220
    invoke-static {p1}, Lcom/octopus/ad/d/c;->a(Landroid/content/Context;)Lcom/octopus/ad/d/c;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-virtual {p1}, Lcom/octopus/ad/d/c;->a()Lcom/octopus/ad/d/b;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    iget-object v0, p0, Lcom/octopus/ad/internal/activity/DownloadDialogActivity$a;->a:Lcom/octopus/ad/internal/activity/DownloadDialogActivity;

    .line 229
    .line 230
    invoke-static {v0, p1}, Lcom/octopus/ad/internal/activity/DownloadDialogActivity;->b(Lcom/octopus/ad/internal/activity/DownloadDialogActivity;Lcom/octopus/ad/d/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    .line 232
    .line 233
    :cond_1
    if-eqz v5, :cond_2

    .line 234
    .line 235
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :goto_1
    :try_start_1
    const-string v0, "OctopusAd"

    .line 240
    .line 241
    const-string v1, "An Exception Caught"

    .line 242
    .line 243
    invoke-static {v0, v1, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    .line 245
    .line 246
    if-eqz v5, :cond_2

    .line 247
    .line 248
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 249
    .line 250
    .line 251
    :cond_2
    return-void

    .line 252
    :goto_2
    if-eqz v5, :cond_3

    .line 253
    .line 254
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 255
    .line 256
    .line 257
    :cond_3
    throw p1
.end method
