.class public abstract Lorg/eclipse/jetty/util/l;
.super Ljava/util/StringTokenizer;
.source "SourceFile"


# static fields
.field public static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    sput-object v0, Lorg/eclipse/jetty/util/l;->a:[C

    .line 6
    .line 7
    const v1, 0xffff

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    const/16 v2, 0x62

    .line 16
    .line 17
    aput-char v2, v0, v1

    .line 18
    .line 19
    const/16 v1, 0x9

    .line 20
    .line 21
    const/16 v2, 0x74

    .line 22
    .line 23
    aput-char v2, v0, v1

    .line 24
    .line 25
    const/16 v1, 0xa

    .line 26
    .line 27
    const/16 v2, 0x6e

    .line 28
    .line 29
    aput-char v2, v0, v1

    .line 30
    .line 31
    const/16 v1, 0xc

    .line 32
    .line 33
    const/16 v2, 0x66

    .line 34
    .line 35
    aput-char v2, v0, v1

    .line 36
    .line 37
    const/16 v1, 0xd

    .line 38
    .line 39
    const/16 v2, 0x72

    .line 40
    .line 41
    aput-char v2, v0, v1

    .line 42
    .line 43
    return-void
.end method

.method public static a(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x6e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x72

    if-eq p0, v0, :cond_1

    const/16 v0, 0x74

    if-eq p0, v0, :cond_1

    const/16 v0, 0x66

    if-eq p0, v0, :cond_1

    const/16 v0, 0x62

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x22

    if-eq p0, v0, :cond_1

    const/16 v0, 0x75

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 6

    .line 1
    const/16 v0, 0x22

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_5

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/16 v3, 0x20

    .line 18
    .line 19
    const/16 v4, 0x5c

    .line 20
    .line 21
    if-lt v2, v3, :cond_2

    .line 22
    .line 23
    if-eq v2, v0, :cond_0

    .line 24
    .line 25
    if-ne v2, v4, :cond_1

    .line 26
    .line 27
    :cond_0
    invoke-interface {p0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    sget-object v3, Lorg/eclipse/jetty/util/l;->a:[C

    .line 35
    .line 36
    aget-char v3, v3, v2

    .line 37
    .line 38
    const v5, 0xffff

    .line 39
    .line 40
    .line 41
    if-ne v3, v5, :cond_4

    .line 42
    .line 43
    invoke-interface {p0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const/16 v4, 0x75

    .line 48
    .line 49
    invoke-interface {v3, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const/16 v4, 0x30

    .line 54
    .line 55
    invoke-interface {v3, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-interface {v3, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 60
    .line 61
    .line 62
    const/16 v3, 0x10

    .line 63
    .line 64
    if-ge v2, v3, :cond_3

    .line 65
    .line 66
    invoke-interface {p0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 67
    .line 68
    .line 69
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    invoke-interface {p0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-interface {v2, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 82
    .line 83
    .line 84
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :catch_0
    move-exception p0

    .line 92
    new-instance p1, Ljava/lang/RuntimeException;

    .line 93
    .line 94
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    throw p1
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string p0, "\"\""

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ge v0, v1, :cond_4

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/16 v2, 0x5c

    .line 26
    .line 27
    if-eq v1, v2, :cond_3

    .line 28
    .line 29
    const/16 v2, 0x22

    .line 30
    .line 31
    if-eq v1, v2, :cond_3

    .line 32
    .line 33
    const/16 v2, 0x27

    .line 34
    .line 35
    if-eq v1, v2, :cond_3

    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_3

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-ltz v1, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuffer;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    add-int/lit8 v0, v0, 0x8

    .line 60
    .line 61
    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 62
    .line 63
    .line 64
    invoke-static {p1, p0}, Lorg/eclipse/jetty/util/l;->b(Ljava/lang/Appendable;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    :cond_4
    return-object p0
.end method

.method public static d(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ltz v2, :cond_0

    .line 18
    .line 19
    invoke-static {p0, p1}, Lorg/eclipse/jetty/util/l;->b(Ljava/lang/Appendable;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    return v0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    new-instance p1, Ljava/lang/RuntimeException;

    .line 33
    .line 34
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lorg/eclipse/jetty/util/l;->f(Ljava/lang/String;Z)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static f(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_1
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x1

    .line 24
    sub-int/2addr v3, v4

    .line 25
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-ne v2, v3, :cond_10

    .line 30
    .line 31
    const/16 v3, 0x22

    .line 32
    .line 33
    if-eq v2, v3, :cond_2

    .line 34
    .line 35
    const/16 v5, 0x27

    .line 36
    .line 37
    if-eq v2, v5, :cond_2

    .line 38
    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    sub-int/2addr v5, v1

    .line 48
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 49
    .line 50
    .line 51
    move v5, v0

    .line 52
    move v1, v4

    .line 53
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    sub-int/2addr v6, v4

    .line 58
    if-ge v1, v6, :cond_f

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    const/16 v7, 0x5c

    .line 65
    .line 66
    if-eqz v5, :cond_d

    .line 67
    .line 68
    if-eq v6, v3, :cond_c

    .line 69
    .line 70
    const/16 v5, 0x2f

    .line 71
    .line 72
    if-eq v6, v5, :cond_b

    .line 73
    .line 74
    if-eq v6, v7, :cond_a

    .line 75
    .line 76
    const/16 v5, 0x62

    .line 77
    .line 78
    const/16 v8, 0x8

    .line 79
    .line 80
    if-eq v6, v5, :cond_9

    .line 81
    .line 82
    const/16 v5, 0x66

    .line 83
    .line 84
    if-eq v6, v5, :cond_8

    .line 85
    .line 86
    const/16 v5, 0x6e

    .line 87
    .line 88
    if-eq v6, v5, :cond_7

    .line 89
    .line 90
    const/16 v5, 0x72

    .line 91
    .line 92
    if-eq v6, v5, :cond_6

    .line 93
    .line 94
    const/16 v5, 0x74

    .line 95
    .line 96
    if-eq v6, v5, :cond_5

    .line 97
    .line 98
    const/16 v5, 0x75

    .line 99
    .line 100
    if-eq v6, v5, :cond_4

    .line 101
    .line 102
    if-eqz p1, :cond_3

    .line 103
    .line 104
    invoke-static {v6}, Lorg/eclipse/jetty/util/l;->a(C)Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-nez v5, :cond_3

    .line 109
    .line 110
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    :cond_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    add-int/lit8 v5, v1, 0x1

    .line 118
    .line 119
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    int-to-byte v6, v6

    .line 124
    invoke-static {v6}, Lorg/eclipse/jetty/util/n;->b(B)B

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    shl-int/lit8 v6, v6, 0x18

    .line 129
    .line 130
    add-int/lit8 v7, v1, 0x2

    .line 131
    .line 132
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    int-to-byte v5, v5

    .line 137
    invoke-static {v5}, Lorg/eclipse/jetty/util/n;->b(B)B

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    shl-int/lit8 v5, v5, 0x10

    .line 142
    .line 143
    add-int/2addr v6, v5

    .line 144
    add-int/lit8 v5, v1, 0x3

    .line 145
    .line 146
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    int-to-byte v7, v7

    .line 151
    invoke-static {v7}, Lorg/eclipse/jetty/util/n;->b(B)B

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    shl-int/2addr v7, v8

    .line 156
    add-int/2addr v6, v7

    .line 157
    add-int/lit8 v1, v1, 0x4

    .line 158
    .line 159
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    int-to-byte v5, v5

    .line 164
    invoke-static {v5}, Lorg/eclipse/jetty/util/n;->b(B)B

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    add-int/2addr v6, v5

    .line 169
    int-to-char v5, v6

    .line 170
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    :goto_1
    move v5, v0

    .line 174
    goto :goto_2

    .line 175
    :cond_5
    const/16 v5, 0x9

    .line 176
    .line 177
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_6
    const/16 v5, 0xd

    .line 182
    .line 183
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_7
    const/16 v5, 0xa

    .line 188
    .line 189
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_8
    const/16 v5, 0xc

    .line 194
    .line 195
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_9
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_a
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_b
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_d
    if-ne v6, v7, :cond_e

    .line 216
    .line 217
    move v5, v4

    .line 218
    goto :goto_2

    .line 219
    :cond_e
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    :goto_2
    add-int/2addr v1, v4

    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :cond_f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    :cond_10
    :goto_3
    return-object p0
.end method
