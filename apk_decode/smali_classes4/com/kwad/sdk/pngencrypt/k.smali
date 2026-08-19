.class public final Lcom/kwad/sdk/pngencrypt/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final bkO:I

.field public final bkP:I

.field public final bkQ:Z

.field public final bkR:Z

.field public final bkS:Z

.field public final bkT:Z

.field public final bkU:I

.field public final bkV:I

.field public final bkW:I

.field public final bkX:I

.field public final bkY:I

.field private bkZ:J

.field public final bkv:I

.field public final bkw:I

.field private bla:J


# direct methods
.method public constructor <init>(IIIZZZ)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/kwad/sdk/pngencrypt/k;->bkZ:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/kwad/sdk/pngencrypt/k;->bla:J

    .line 9
    .line 10
    iput p1, p0, Lcom/kwad/sdk/pngencrypt/k;->bkw:I

    .line 11
    .line 12
    iput p2, p0, Lcom/kwad/sdk/pngencrypt/k;->bkv:I

    .line 13
    .line 14
    iput-boolean p4, p0, Lcom/kwad/sdk/pngencrypt/k;->bkQ:Z

    .line 15
    .line 16
    iput-boolean p6, p0, Lcom/kwad/sdk/pngencrypt/k;->bkS:Z

    .line 17
    .line 18
    iput-boolean p5, p0, Lcom/kwad/sdk/pngencrypt/k;->bkR:Z

    .line 19
    .line 20
    if-eqz p5, :cond_1

    .line 21
    .line 22
    if-nez p6, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Lcom/kwad/sdk/pngencrypt/PngjException;

    .line 26
    .line 27
    const-string p2, "palette and greyscale are mutually exclusive"

    .line 28
    .line 29
    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 34
    const/4 v1, 0x4

    .line 35
    const/4 v2, 0x1

    .line 36
    if-nez p5, :cond_4

    .line 37
    .line 38
    if-eqz p6, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    if-eqz p4, :cond_3

    .line 42
    .line 43
    move p4, v1

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    const/4 p4, 0x3

    .line 46
    goto :goto_2

    .line 47
    :cond_4
    :goto_1
    if-eqz p4, :cond_5

    .line 48
    .line 49
    move p4, v0

    .line 50
    goto :goto_2

    .line 51
    :cond_5
    move p4, v2

    .line 52
    :goto_2
    iput p4, p0, Lcom/kwad/sdk/pngencrypt/k;->bkP:I

    .line 53
    .line 54
    iput p3, p0, Lcom/kwad/sdk/pngencrypt/k;->bkO:I

    .line 55
    .line 56
    const/16 v3, 0x8

    .line 57
    .line 58
    if-ge p3, v3, :cond_6

    .line 59
    .line 60
    move v4, v2

    .line 61
    goto :goto_3

    .line 62
    :cond_6
    const/4 v4, 0x0

    .line 63
    :goto_3
    iput-boolean v4, p0, Lcom/kwad/sdk/pngencrypt/k;->bkT:Z

    .line 64
    .line 65
    mul-int v5, p4, p3

    .line 66
    .line 67
    iput v5, p0, Lcom/kwad/sdk/pngencrypt/k;->bkU:I

    .line 68
    .line 69
    add-int/lit8 v6, v5, 0x7

    .line 70
    .line 71
    div-int/2addr v6, v3

    .line 72
    iput v6, p0, Lcom/kwad/sdk/pngencrypt/k;->bkV:I

    .line 73
    .line 74
    mul-int/2addr v5, p1

    .line 75
    add-int/lit8 v5, v5, 0x7

    .line 76
    .line 77
    div-int/2addr v5, v3

    .line 78
    iput v5, p0, Lcom/kwad/sdk/pngencrypt/k;->bkW:I

    .line 79
    .line 80
    mul-int/2addr p4, p1

    .line 81
    iput p4, p0, Lcom/kwad/sdk/pngencrypt/k;->bkX:I

    .line 82
    .line 83
    if-eqz v4, :cond_7

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_7
    move v5, p4

    .line 87
    :goto_4
    iput v5, p0, Lcom/kwad/sdk/pngencrypt/k;->bkY:I

    .line 88
    .line 89
    if-eq p3, v2, :cond_a

    .line 90
    .line 91
    if-eq p3, v0, :cond_a

    .line 92
    .line 93
    if-eq p3, v1, :cond_a

    .line 94
    .line 95
    if-eq p3, v3, :cond_c

    .line 96
    .line 97
    const/16 p5, 0x10

    .line 98
    .line 99
    if-ne p3, p5, :cond_9

    .line 100
    .line 101
    if-nez p6, :cond_8

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_8
    new-instance p1, Lcom/kwad/sdk/pngencrypt/PngjException;

    .line 105
    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string p4, "indexed can\'t have bitdepth="

    .line 109
    .line 110
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p1

    .line 124
    :cond_9
    new-instance p1, Lcom/kwad/sdk/pngencrypt/PngjException;

    .line 125
    .line 126
    new-instance p2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string p4, "invalid bitdepth="

    .line 129
    .line 130
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p1

    .line 144
    :cond_a
    if-nez p6, :cond_c

    .line 145
    .line 146
    if-eqz p5, :cond_b

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_b
    new-instance p1, Lcom/kwad/sdk/pngencrypt/PngjException;

    .line 150
    .line 151
    new-instance p2, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string p4, "only indexed or grayscale can have bitdepth="

    .line 154
    .line 155
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p1

    .line 169
    :cond_c
    :goto_5
    const-string p3, " ???"

    .line 170
    .line 171
    if-lez p1, :cond_f

    .line 172
    .line 173
    const/high16 p5, 0x1000000

    .line 174
    .line 175
    if-gt p1, p5, :cond_f

    .line 176
    .line 177
    if-lez p2, :cond_e

    .line 178
    .line 179
    if-gt p2, p5, :cond_e

    .line 180
    .line 181
    if-lez p4, :cond_d

    .line 182
    .line 183
    return-void

    .line 184
    :cond_d
    new-instance p1, Lcom/kwad/sdk/pngencrypt/PngjException;

    .line 185
    .line 186
    const-string p2, "invalid image parameters (overflow?)"

    .line 187
    .line 188
    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p1

    .line 192
    :cond_e
    new-instance p1, Lcom/kwad/sdk/pngencrypt/PngjException;

    .line 193
    .line 194
    new-instance p4, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string p5, "invalid rows="

    .line 197
    .line 198
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    invoke-direct {p1, p2}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw p1

    .line 215
    :cond_f
    new-instance p2, Lcom/kwad/sdk/pngencrypt/PngjException;

    .line 216
    .line 217
    new-instance p4, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    const-string p5, "invalid cols="

    .line 220
    .line 221
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-direct {p2, p1}, Lcom/kwad/sdk/pngencrypt/PngjException;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    throw p2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    const-class v2, Lcom/kwad/sdk/pngencrypt/k;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Lcom/kwad/sdk/pngencrypt/k;

    .line 19
    .line 20
    iget-boolean v2, p0, Lcom/kwad/sdk/pngencrypt/k;->bkQ:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Lcom/kwad/sdk/pngencrypt/k;->bkQ:Z

    .line 23
    .line 24
    if-eq v2, v3, :cond_3

    .line 25
    .line 26
    return v1

    .line 27
    :cond_3
    iget v2, p0, Lcom/kwad/sdk/pngencrypt/k;->bkO:I

    .line 28
    .line 29
    iget v3, p1, Lcom/kwad/sdk/pngencrypt/k;->bkO:I

    .line 30
    .line 31
    if-eq v2, v3, :cond_4

    .line 32
    .line 33
    return v1

    .line 34
    :cond_4
    iget v2, p0, Lcom/kwad/sdk/pngencrypt/k;->bkw:I

    .line 35
    .line 36
    iget v3, p1, Lcom/kwad/sdk/pngencrypt/k;->bkw:I

    .line 37
    .line 38
    if-eq v2, v3, :cond_5

    .line 39
    .line 40
    return v1

    .line 41
    :cond_5
    iget-boolean v2, p0, Lcom/kwad/sdk/pngencrypt/k;->bkR:Z

    .line 42
    .line 43
    iget-boolean v3, p1, Lcom/kwad/sdk/pngencrypt/k;->bkR:Z

    .line 44
    .line 45
    if-eq v2, v3, :cond_6

    .line 46
    .line 47
    return v1

    .line 48
    :cond_6
    iget-boolean v2, p0, Lcom/kwad/sdk/pngencrypt/k;->bkS:Z

    .line 49
    .line 50
    iget-boolean v3, p1, Lcom/kwad/sdk/pngencrypt/k;->bkS:Z

    .line 51
    .line 52
    if-eq v2, v3, :cond_7

    .line 53
    .line 54
    return v1

    .line 55
    :cond_7
    iget v2, p0, Lcom/kwad/sdk/pngencrypt/k;->bkv:I

    .line 56
    .line 57
    iget p1, p1, Lcom/kwad/sdk/pngencrypt/k;->bkv:I

    .line 58
    .line 59
    if-eq v2, p1, :cond_8

    .line 60
    .line 61
    return v1

    .line 62
    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/pngencrypt/k;->bkQ:Z

    .line 2
    .line 3
    const/16 v1, 0x4d5

    .line 4
    .line 5
    const/16 v2, 0x4cf

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    mul-int/lit8 v0, v0, 0x1f

    .line 15
    .line 16
    iget v3, p0, Lcom/kwad/sdk/pngencrypt/k;->bkO:I

    .line 17
    .line 18
    add-int/2addr v0, v3

    .line 19
    mul-int/lit8 v0, v0, 0x1f

    .line 20
    .line 21
    iget v3, p0, Lcom/kwad/sdk/pngencrypt/k;->bkw:I

    .line 22
    .line 23
    add-int/2addr v0, v3

    .line 24
    mul-int/lit8 v0, v0, 0x1f

    .line 25
    .line 26
    iget-boolean v3, p0, Lcom/kwad/sdk/pngencrypt/k;->bkR:Z

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    move v3, v2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v3, v1

    .line 33
    :goto_1
    add-int/2addr v0, v3

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-boolean v3, p0, Lcom/kwad/sdk/pngencrypt/k;->bkS:Z

    .line 37
    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    move v1, v2

    .line 41
    :cond_2
    add-int/2addr v0, v1

    .line 42
    mul-int/lit8 v0, v0, 0x1f

    .line 43
    .line 44
    iget v1, p0, Lcom/kwad/sdk/pngencrypt/k;->bkv:I

    .line 45
    .line 46
    add-int/2addr v0, v1

    .line 47
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ImageInfo [cols="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/kwad/sdk/pngencrypt/k;->bkw:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", rows="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/kwad/sdk/pngencrypt/k;->bkv:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", bitDepth="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/kwad/sdk/pngencrypt/k;->bkO:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", channels="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/kwad/sdk/pngencrypt/k;->bkP:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", alpha="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lcom/kwad/sdk/pngencrypt/k;->bkQ:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", greyscale="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-boolean v1, p0, Lcom/kwad/sdk/pngencrypt/k;->bkR:Z

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", indexed="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-boolean v1, p0, Lcom/kwad/sdk/pngencrypt/k;->bkS:Z

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, "]"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    return-object v0
.end method
