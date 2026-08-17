.class public final Lcom/kwad/framework/filedownloader/b/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/framework/filedownloader/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/framework/filedownloader/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private final aAI:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/kwad/framework/filedownloader/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private aAJ:Lcom/kwad/framework/filedownloader/b/d$b;

.field final synthetic aAK:Lcom/kwad/framework/filedownloader/b/d;

.field private final aAv:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/kwad/framework/filedownloader/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private final aAw:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/kwad/framework/filedownloader/d/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kwad/framework/filedownloader/b/d;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/kwad/framework/filedownloader/d/c;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/kwad/framework/filedownloader/d/a;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAK:Lcom/kwad/framework/filedownloader/b/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAI:Landroid/util/SparseArray;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAv:Landroid/util/SparseArray;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAw:Landroid/util/SparseArray;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final BS()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAJ:Lcom/kwad/framework/filedownloader/b/d$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/kwad/framework/filedownloader/b/d$b;->BS()V

    .line 6
    .line 7
    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAK:Lcom/kwad/framework/filedownloader/b/d;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/kwad/framework/filedownloader/b/d;->a(Lcom/kwad/framework/filedownloader/b/d;)Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    .line 12
    .line 13
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto/16 :goto_b

    .line 17
    .line 18
    :cond_1
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAI:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-gez v1, :cond_2

    .line 25
    .line 26
    goto/16 :goto_b

    .line 27
    .line 28
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    move v3, v2

    .line 33
    :goto_0
    if-ge v3, v1, :cond_4

    .line 34
    .line 35
    iget-object v4, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAI:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    iget-object v5, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAI:Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Lcom/kwad/framework/filedownloader/d/c;

    .line 48
    .line 49
    const-string v6, "ksad_file_download"

    .line 50
    .line 51
    const-string v7, "_id = ?"

    .line 52
    .line 53
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    filled-new-array {v8}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-virtual {v0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    const-string v6, "ksad_file_download"

    .line 65
    .line 66
    invoke-virtual {v5}, Lcom/kwad/framework/filedownloader/d/c;->CV()Landroid/content/ContentValues;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    const/4 v8, 0x0

    .line 71
    invoke-virtual {v0, v6, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Lcom/kwad/framework/filedownloader/d/c;->Da()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    const/4 v7, 0x1

    .line 79
    if-le v6, v7, :cond_3

    .line 80
    .line 81
    iget-object v6, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAK:Lcom/kwad/framework/filedownloader/b/d;

    .line 82
    .line 83
    invoke-virtual {v6, v4}, Lcom/kwad/framework/filedownloader/b/d;->cD(I)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-lez v7, :cond_3

    .line 92
    .line 93
    const-string v7, "ksad_file_download_connection"

    .line 94
    .line 95
    const-string v9, "id = ?"

    .line 96
    .line 97
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    filled-new-array {v4}, [Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v0, v7, v9, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-eqz v6, :cond_3

    .line 117
    .line 118
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    check-cast v6, Lcom/kwad/framework/filedownloader/d/a;

    .line 123
    .line 124
    invoke-virtual {v5}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    invoke-virtual {v6, v7}, Lcom/kwad/framework/filedownloader/d/a;->setId(I)V

    .line 129
    .line 130
    .line 131
    const-string v7, "ksad_file_download_connection"

    .line 132
    .line 133
    invoke-virtual {v6}, Lcom/kwad/framework/filedownloader/d/a;->CV()Landroid/content/ContentValues;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    invoke-virtual {v0, v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :catchall_0
    move-exception v1

    .line 142
    goto :goto_9

    .line 143
    :catch_0
    move-exception v1

    .line 144
    goto :goto_6

    .line 145
    :catch_1
    move-exception v1

    .line 146
    goto :goto_8

    .line 147
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_4
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAv:Landroid/util/SparseArray;

    .line 151
    .line 152
    if-eqz v1, :cond_7

    .line 153
    .line 154
    iget-object v3, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAw:Landroid/util/SparseArray;

    .line 155
    .line 156
    if-eqz v3, :cond_7

    .line 157
    .line 158
    monitor-enter v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    :try_start_2
    iget-object v3, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAv:Landroid/util/SparseArray;

    .line 160
    .line 161
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    :goto_2
    if-ge v2, v3, :cond_6

    .line 166
    .line 167
    iget-object v4, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAv:Landroid/util/SparseArray;

    .line 168
    .line 169
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    check-cast v4, Lcom/kwad/framework/filedownloader/d/c;

    .line 174
    .line 175
    invoke-virtual {v4}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    iget-object v5, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAK:Lcom/kwad/framework/filedownloader/b/d;

    .line 180
    .line 181
    invoke-virtual {v5, v4}, Lcom/kwad/framework/filedownloader/b/d;->cD(I)Ljava/util/List;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    if-eqz v5, :cond_5

    .line 186
    .line 187
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    if-lez v6, :cond_5

    .line 192
    .line 193
    iget-object v6, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAw:Landroid/util/SparseArray;

    .line 194
    .line 195
    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 196
    :try_start_3
    iget-object v7, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAw:Landroid/util/SparseArray;

    .line 197
    .line 198
    invoke-virtual {v7, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    monitor-exit v6

    .line 202
    goto :goto_3

    .line 203
    :catchall_1
    move-exception v2

    .line 204
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 205
    :try_start_4
    throw v2

    .line 206
    :catchall_2
    move-exception v2

    .line 207
    goto :goto_4

    .line 208
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_6
    monitor-exit v1

    .line 212
    goto :goto_5

    .line 213
    :goto_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 214
    :try_start_5
    throw v2

    .line 215
    :cond_7
    :goto_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 216
    .line 217
    .line 218
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    :catch_2
    move-exception v0

    .line 223
    invoke-static {v0}, Lcom/kwad/framework/filedownloader/b/d;->p(Ljava/lang/Throwable;)V

    .line 224
    .line 225
    .line 226
    return-void

    .line 227
    :goto_6
    :try_start_7
    invoke-static {v1}, Lcom/kwad/framework/filedownloader/b/d;->p(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 228
    .line 229
    .line 230
    :goto_7
    :try_start_8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 231
    .line 232
    .line 233
    goto :goto_b

    .line 234
    :goto_8
    :try_start_9
    iget-object v2, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAK:Lcom/kwad/framework/filedownloader/b/d;

    .line 235
    .line 236
    invoke-static {v2, v1}, Lcom/kwad/framework/filedownloader/b/d;->a(Lcom/kwad/framework/filedownloader/b/d;Landroid/database/sqlite/SQLiteException;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 237
    .line 238
    .line 239
    goto :goto_7

    .line 240
    :goto_9
    :try_start_a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 241
    .line 242
    .line 243
    goto :goto_a

    .line 244
    :catch_3
    move-exception v0

    .line 245
    invoke-static {v0}, Lcom/kwad/framework/filedownloader/b/d;->p(Ljava/lang/Throwable;)V

    .line 246
    .line 247
    .line 248
    :goto_a
    throw v1

    .line 249
    :catchall_3
    :goto_b
    return-void
.end method

.method public final a(ILcom/kwad/framework/filedownloader/d/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAI:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Lcom/kwad/framework/filedownloader/d/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAv:Landroid/util/SparseArray;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAv:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/kwad/framework/filedownloader/d/c;->getId()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p1

    .line 20
    :cond_0
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/kwad/framework/filedownloader/d/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/kwad/framework/filedownloader/b/d$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAK:Lcom/kwad/framework/filedownloader/b/d;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/kwad/framework/filedownloader/b/d$b;-><init>(Lcom/kwad/framework/filedownloader/b/d;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/kwad/framework/filedownloader/b/d$a;->aAJ:Lcom/kwad/framework/filedownloader/b/d$b;

    .line 9
    .line 10
    return-object v0
.end method
