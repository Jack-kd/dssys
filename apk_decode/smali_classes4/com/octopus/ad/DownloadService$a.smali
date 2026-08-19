.class Lcom/octopus/ad/DownloadService$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/DownloadService;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/DownloadService;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/DownloadService$a;->a:Lcom/octopus/ad/DownloadService;

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
    .locals 9

    .line 1
    const-string v0, "DownloadService"

    .line 2
    .line 3
    const-string v1, "status"

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x3

    .line 9
    new-array p1, p1, [I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aput v2, p1, v2

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    aput v2, p1, v3

    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    aput v2, p1, v4

    .line 19
    .line 20
    new-instance v5, Landroid/app/DownloadManager$Query;

    .line 21
    .line 22
    invoke-direct {v5}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v6, p0, Lcom/octopus/ad/DownloadService$a;->a:Lcom/octopus/ad/DownloadService;

    .line 26
    .line 27
    invoke-static {v6}, Lcom/octopus/ad/DownloadService;->a(Lcom/octopus/ad/DownloadService;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    new-array v8, v3, [J

    .line 32
    .line 33
    aput-wide v6, v8, v2

    .line 34
    .line 35
    invoke-virtual {v5, v8}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const/4 v6, 0x0

    .line 40
    :try_start_0
    iget-object v7, p0, Lcom/octopus/ad/DownloadService$a;->a:Lcom/octopus/ad/DownloadService;

    .line 41
    .line 42
    invoke-static {v7}, Lcom/octopus/ad/DownloadService;->b(Lcom/octopus/ad/DownloadService;)Landroid/app/DownloadManager;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    invoke-virtual {v7, v5}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    if-eqz v6, :cond_1

    .line 51
    .line 52
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_1

    .line 57
    .line 58
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    new-instance v7, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v8, "onChange status\uff1a"

    .line 72
    .line 73
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-static {v0, v7}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    if-eq v5, v3, :cond_0

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    iget-object v5, p0, Lcom/octopus/ad/DownloadService$a;->a:Lcom/octopus/ad/DownloadService;

    .line 90
    .line 91
    invoke-static {v5}, Lcom/octopus/ad/d/c;->a(Landroid/content/Context;)Lcom/octopus/ad/d/c;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {v5}, Lcom/octopus/ad/d/c;->a()Lcom/octopus/ad/d/b;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    iget-object v7, p0, Lcom/octopus/ad/DownloadService$a;->a:Lcom/octopus/ad/DownloadService;

    .line 100
    .line 101
    invoke-static {v7, v5}, Lcom/octopus/ad/DownloadService;->a(Lcom/octopus/ad/DownloadService;Lcom/octopus/ad/d/b;)V

    .line 102
    .line 103
    .line 104
    :goto_0
    const-string v5, "bytes_so_far"

    .line 105
    .line 106
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    aput v5, p1, v2

    .line 115
    .line 116
    const-string v5, "total_size"

    .line 117
    .line 118
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    aput v5, p1, v3

    .line 127
    .line 128
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    aput v1, p1, v4

    .line 137
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v4, "progress\uff1a"

    .line 144
    .line 145
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    aget v2, p1, v2

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v2, "/"

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    aget p1, p1, v3

    .line 159
    .line 160
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {v0, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :catchall_0
    move-exception p1

    .line 172
    goto :goto_3

    .line 173
    :catch_0
    move-exception p1

    .line 174
    goto :goto_2

    .line 175
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 176
    .line 177
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :goto_2
    :try_start_1
    const-string v0, "OctopusAd"

    .line 182
    .line 183
    const-string v1, "An Exception Caught"

    .line 184
    .line 185
    invoke-static {v0, v1, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    .line 187
    .line 188
    if-eqz v6, :cond_2

    .line 189
    .line 190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 191
    .line 192
    .line 193
    :cond_2
    return-void

    .line 194
    :goto_3
    if-eqz v6, :cond_3

    .line 195
    .line 196
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 197
    .line 198
    .line 199
    :cond_3
    throw p1
.end method
