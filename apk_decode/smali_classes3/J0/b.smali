.class public abstract LJ0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/File;Ljava/lang/String;LI0/a;)Ljava/io/File;
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/io/BufferedWriter;

    .line 7
    .line 8
    new-instance p1, Ljava/io/FileWriter;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {p1, v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 15
    .line 16
    .line 17
    const-string p1, "#EXTM3U\n"

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string p1, "#EXT-X-VERSION:3\n"

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string p1, "#EXT-X-MEDIA-SEQUENCE:0\n"

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v1, "#EXT-X-TARGETDURATION:"

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, LI0/a;->g()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, "\n"

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, LI0/a;->f()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_0

    .line 66
    .line 67
    invoke-virtual {p2}, LI0/a;->f()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_0

    .line 80
    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v2, "#EXT-X-PLAYLIST-TYPE:"

    .line 87
    .line 88
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, LI0/a;->f()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_0
    invoke-virtual {p2}, LI0/a;->i()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_3

    .line 121
    .line 122
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, LI0/b;

    .line 127
    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v3, "#EXTINF:"

    .line 134
    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, LI0/b;->c()F

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v3, ",\n"

    .line 146
    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, LI0/b;->e()Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_1

    .line 162
    .line 163
    const-string v2, "#EXT-X-DISCONTINUITY\n"

    .line 164
    .line 165
    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2}, LI0/a;->h()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    if-eqz v3, :cond_2

    .line 178
    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2}, LI0/a;->h()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v4, "/"

    .line 192
    .line 193
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    goto :goto_1

    .line 201
    :cond_2
    const-string v3, ""

    .line 202
    .line 203
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1}, LI0/b;->f()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 221
    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_3
    const-string p1, "#EXT-X-ENDLIST"

    .line 225
    .line 226
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V

    .line 233
    .line 234
    .line 235
    return-object v0
.end method

.method public static b(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/net/HttpURLConnection;

    .line 6
    .line 7
    invoke-static {p0, p1}, LJ0/b;->e(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x3a98

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)LI0/a;
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, LI0/a;

    .line 4
    .line 5
    invoke-direct {v1}, LI0/a;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/net/URL;

    .line 9
    .line 10
    move-object/from16 v3, p0

    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v0}, LJ0/b;->b(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-virtual {v3}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const/16 v6, 0xc8

    .line 28
    .line 29
    if-lt v4, v6, :cond_17

    .line 30
    .line 31
    const/16 v7, 0x12c

    .line 32
    .line 33
    if-ge v4, v7, :cond_17

    .line 34
    .line 35
    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    new-instance v5, Ljava/io/BufferedReader;

    .line 44
    .line 45
    new-instance v8, Ljava/io/InputStreamReader;

    .line 46
    .line 47
    invoke-direct {v8, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 51
    .line 52
    .line 53
    const-string v3, "/"

    .line 54
    .line 55
    invoke-virtual {v4, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    const/4 v9, 0x1

    .line 60
    add-int/2addr v8, v9

    .line 61
    const/4 v10, 0x0

    .line 62
    invoke-virtual {v4, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v1, v4}, LI0/a;->j(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    move v12, v10

    .line 70
    :goto_0
    const/4 v11, 0x0

    .line 71
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v13

    .line 75
    if-eqz v13, :cond_16

    .line 76
    .line 77
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v14

    .line 81
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result v14

    .line 85
    if-eqz v14, :cond_0

    .line 86
    .line 87
    move-object/from16 v18, v2

    .line 88
    .line 89
    move-object/from16 v20, v5

    .line 90
    .line 91
    move/from16 v19, v6

    .line 92
    .line 93
    move/from16 v16, v9

    .line 94
    .line 95
    goto/16 :goto_7

    .line 96
    .line 97
    :cond_0
    const-string v14, "#"

    .line 98
    .line 99
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v14

    .line 103
    const-string v8, "://"

    .line 104
    .line 105
    move/from16 v16, v9

    .line 106
    .line 107
    const-string v9, "http"

    .line 108
    .line 109
    if-eqz v14, :cond_f

    .line 110
    .line 111
    const-string v14, "#EXTINF:"

    .line 112
    .line 113
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v14

    .line 117
    const-string v15, ","

    .line 118
    .line 119
    if-eqz v14, :cond_2

    .line 120
    .line 121
    const/16 v8, 0x8

    .line 122
    .line 123
    invoke-virtual {v13, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    invoke-virtual {v8, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    if-eqz v9, :cond_1

    .line 132
    .line 133
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 134
    .line 135
    .line 136
    move-result v9

    .line 137
    add-int/lit8 v9, v9, -0x1

    .line 138
    .line 139
    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    :cond_1
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 144
    .line 145
    .line 146
    move-result v11

    .line 147
    move/from16 v9, v16

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_2
    const-string v14, "#EXT-X-DISCONTINUITY"

    .line 151
    .line 152
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v14

    .line 156
    if-eqz v14, :cond_3

    .line 157
    .line 158
    move/from16 v9, v16

    .line 159
    .line 160
    move v12, v9

    .line 161
    goto :goto_1

    .line 162
    :cond_3
    const-string v14, "#EXT-X-KEY:"

    .line 163
    .line 164
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 165
    .line 166
    .line 167
    move-result v17

    .line 168
    if-eqz v17, :cond_c

    .line 169
    .line 170
    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v13

    .line 174
    aget-object v13, v13, v16

    .line 175
    .line 176
    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v14

    .line 180
    move v15, v10

    .line 181
    move/from16 v17, v15

    .line 182
    .line 183
    :goto_2
    array-length v10, v14

    .line 184
    if-ge v15, v10, :cond_b

    .line 185
    .line 186
    aget-object v10, v14, v15

    .line 187
    .line 188
    const-string v7, "="

    .line 189
    .line 190
    invoke-virtual {v10, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 191
    .line 192
    .line 193
    move-result v10

    .line 194
    if-eqz v10, :cond_9

    .line 195
    .line 196
    aget-object v10, v14, v15

    .line 197
    .line 198
    invoke-virtual {v10, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v10

    .line 202
    aget-object v10, v10, v17

    .line 203
    .line 204
    const-string v6, "URI"

    .line 205
    .line 206
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    if-eqz v6, :cond_8

    .line 211
    .line 212
    aget-object v6, v14, v15

    .line 213
    .line 214
    const-string v7, "=\""

    .line 215
    .line 216
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    aget-object v6, v6, v16

    .line 221
    .line 222
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 223
    .line 224
    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    const-string v7, "\""

    .line 228
    .line 229
    const-string v10, ""

    .line 230
    .line 231
    invoke-virtual {v6, v7, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    const-string v7, "\'"

    .line 236
    .line 237
    invoke-virtual {v6, v7, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    if-eqz v7, :cond_4

    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_4
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 249
    .line 250
    .line 251
    move-result v7

    .line 252
    if-eqz v7, :cond_5

    .line 253
    .line 254
    new-instance v6, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v7

    .line 273
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v6

    .line 283
    goto :goto_3

    .line 284
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v6

    .line 299
    :goto_3
    new-instance v7, Ljava/net/URL;

    .line 300
    .line 301
    invoke-direct {v7, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-static {v7, v0}, LJ0/b;->b(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 305
    .line 306
    .line 307
    move-result-object v6

    .line 308
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 309
    .line 310
    .line 311
    move-result v7

    .line 312
    const/16 v10, 0xc8

    .line 313
    .line 314
    if-lt v7, v10, :cond_7

    .line 315
    .line 316
    move-object/from16 v18, v2

    .line 317
    .line 318
    const/16 v2, 0x12c

    .line 319
    .line 320
    if-ge v7, v2, :cond_7

    .line 321
    .line 322
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 323
    .line 324
    .line 325
    move-result-object v6

    .line 326
    const/4 v7, 0x0

    .line 327
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 328
    .line 329
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 330
    .line 331
    .line 332
    const/16 v7, 0x400

    .line 333
    .line 334
    :try_start_1
    new-array v7, v7, [B

    .line 335
    .line 336
    :goto_4
    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    .line 337
    .line 338
    .line 339
    move-result v10

    .line 340
    move-object/from16 v20, v5

    .line 341
    .line 342
    const/4 v5, -0x1

    .line 343
    if-eq v10, v5, :cond_6

    .line 344
    .line 345
    move/from16 v5, v17

    .line 346
    .line 347
    invoke-virtual {v2, v7, v5, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 348
    .line 349
    .line 350
    move-object/from16 v5, v20

    .line 351
    .line 352
    const/16 v17, 0x0

    .line 353
    .line 354
    goto :goto_4

    .line 355
    :catchall_0
    move-exception v0

    .line 356
    move-object v7, v2

    .line 357
    goto :goto_5

    .line 358
    :cond_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    invoke-static {v5}, LJ0/a;->b([B)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v5

    .line 366
    invoke-virtual {v1, v5}, LI0/a;->m(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 373
    .line 374
    .line 375
    const/16 v19, 0xc8

    .line 376
    .line 377
    goto :goto_6

    .line 378
    :catchall_1
    move-exception v0

    .line 379
    :goto_5
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 383
    .line 384
    .line 385
    throw v0

    .line 386
    :cond_7
    new-instance v0, Ljava/io/IOException;

    .line 387
    .line 388
    const-string v1, "key\u4e0b\u8f7d\u5931\u8d25"

    .line 389
    .line 390
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    throw v0

    .line 394
    :cond_8
    move-object/from16 v18, v2

    .line 395
    .line 396
    move-object/from16 v20, v5

    .line 397
    .line 398
    const/16 v19, 0xc8

    .line 399
    .line 400
    const-string v2, "IV"

    .line 401
    .line 402
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    if-eqz v2, :cond_a

    .line 407
    .line 408
    aget-object v2, v14, v15

    .line 409
    .line 410
    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    aget-object v2, v2, v16

    .line 415
    .line 416
    invoke-virtual {v1, v2}, LI0/a;->l(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    goto :goto_6

    .line 420
    :cond_9
    move-object/from16 v18, v2

    .line 421
    .line 422
    move-object/from16 v20, v5

    .line 423
    .line 424
    move/from16 v19, v6

    .line 425
    .line 426
    :cond_a
    :goto_6
    add-int/lit8 v15, v15, 0x1

    .line 427
    .line 428
    move-object/from16 v2, v18

    .line 429
    .line 430
    move/from16 v6, v19

    .line 431
    .line 432
    move-object/from16 v5, v20

    .line 433
    .line 434
    const/16 v7, 0x12c

    .line 435
    .line 436
    const/16 v17, 0x0

    .line 437
    .line 438
    goto/16 :goto_2

    .line 439
    .line 440
    :cond_b
    move-object/from16 v18, v2

    .line 441
    .line 442
    move-object/from16 v20, v5

    .line 443
    .line 444
    move/from16 v19, v6

    .line 445
    .line 446
    goto :goto_7

    .line 447
    :cond_c
    move-object/from16 v18, v2

    .line 448
    .line 449
    move-object/from16 v20, v5

    .line 450
    .line 451
    move/from16 v19, v6

    .line 452
    .line 453
    const-string v2, "#EXT-X-TARGETDURATION:"

    .line 454
    .line 455
    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 456
    .line 457
    .line 458
    move-result v5

    .line 459
    if-eqz v5, :cond_d

    .line 460
    .line 461
    invoke-virtual {v13, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    aget-object v2, v2, v16

    .line 466
    .line 467
    invoke-virtual {v1, v2}, LI0/a;->p(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    goto :goto_7

    .line 471
    :cond_d
    const-string v2, "#EXT-X-PLAYLIST-TYPE:"

    .line 472
    .line 473
    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 474
    .line 475
    .line 476
    move-result v5

    .line 477
    if-eqz v5, :cond_e

    .line 478
    .line 479
    invoke-virtual {v13, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    aget-object v2, v2, v16

    .line 484
    .line 485
    invoke-virtual {v1, v2}, LI0/a;->o(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    :cond_e
    :goto_7
    move/from16 v9, v16

    .line 489
    .line 490
    move-object/from16 v2, v18

    .line 491
    .line 492
    move/from16 v6, v19

    .line 493
    .line 494
    move-object/from16 v5, v20

    .line 495
    .line 496
    const/16 v7, 0x12c

    .line 497
    .line 498
    const/4 v10, 0x0

    .line 499
    goto/16 :goto_1

    .line 500
    .line 501
    :cond_f
    move-object/from16 v18, v2

    .line 502
    .line 503
    move-object/from16 v20, v5

    .line 504
    .line 505
    move/from16 v19, v6

    .line 506
    .line 507
    const-string v2, "?"

    .line 508
    .line 509
    invoke-virtual {v13, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 510
    .line 511
    .line 512
    move-result v2

    .line 513
    const-string v5, ".m3u8"

    .line 514
    .line 515
    const/4 v6, -0x1

    .line 516
    if-le v2, v6, :cond_12

    .line 517
    .line 518
    const/4 v6, 0x0

    .line 519
    invoke-virtual {v13, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 524
    .line 525
    .line 526
    move-result v2

    .line 527
    if-eqz v2, :cond_15

    .line 528
    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    .line 530
    .line 531
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v1

    .line 544
    invoke-virtual {v13, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 545
    .line 546
    .line 547
    move-result v2

    .line 548
    if-eqz v2, :cond_10

    .line 549
    .line 550
    goto :goto_8

    .line 551
    :cond_10
    invoke-virtual {v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 552
    .line 553
    .line 554
    move-result v2

    .line 555
    if-eqz v2, :cond_11

    .line 556
    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    .line 558
    .line 559
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 560
    .line 561
    .line 562
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v2

    .line 566
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v2

    .line 576
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v13

    .line 586
    goto :goto_8

    .line 587
    :cond_11
    move-object v13, v1

    .line 588
    :goto_8
    invoke-static {v13, v0}, LJ0/b;->c(Ljava/lang/String;Ljava/lang/String;)LI0/a;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    return-object v0

    .line 593
    :cond_12
    const/4 v6, 0x0

    .line 594
    invoke-virtual {v13, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 595
    .line 596
    .line 597
    move-result v2

    .line 598
    if-eqz v2, :cond_15

    .line 599
    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    .line 601
    .line 602
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    invoke-virtual {v13, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 616
    .line 617
    .line 618
    move-result v2

    .line 619
    if-eqz v2, :cond_13

    .line 620
    .line 621
    goto :goto_9

    .line 622
    :cond_13
    invoke-virtual {v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 623
    .line 624
    .line 625
    move-result v2

    .line 626
    if-eqz v2, :cond_14

    .line 627
    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    .line 629
    .line 630
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 631
    .line 632
    .line 633
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v2

    .line 637
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v2

    .line 647
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v13

    .line 657
    goto :goto_9

    .line 658
    :cond_14
    move-object v13, v1

    .line 659
    :goto_9
    invoke-static {v13, v0}, LJ0/b;->c(Ljava/lang/String;Ljava/lang/String;)LI0/a;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    return-object v0

    .line 664
    :cond_15
    new-instance v2, LI0/b;

    .line 665
    .line 666
    invoke-direct {v2, v13, v11, v12}, LI0/b;-><init>(Ljava/lang/String;FZ)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v1, v2}, LI0/a;->a(LI0/b;)V

    .line 670
    .line 671
    .line 672
    move v10, v6

    .line 673
    move/from16 v9, v16

    .line 674
    .line 675
    move-object/from16 v2, v18

    .line 676
    .line 677
    move/from16 v6, v19

    .line 678
    .line 679
    move-object/from16 v5, v20

    .line 680
    .line 681
    const/16 v7, 0x12c

    .line 682
    .line 683
    goto/16 :goto_0

    .line 684
    .line 685
    :cond_16
    move-object/from16 v20, v5

    .line 686
    .line 687
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedReader;->close()V

    .line 688
    .line 689
    .line 690
    return-object v1

    .line 691
    :cond_17
    new-instance v0, Ljava/io/IOException;

    .line 692
    .line 693
    const-string v1, "m3u8\u6587\u4ef6\u4e0b\u8f7d\u5931\u8d25"

    .line 694
    .line 695
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    throw v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/io/BufferedWriter;

    .line 7
    .line 8
    new-instance v1, Ljava/io/FileWriter;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static e(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x1

    .line 37
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setDoInput(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catch_0
    move-exception p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method
