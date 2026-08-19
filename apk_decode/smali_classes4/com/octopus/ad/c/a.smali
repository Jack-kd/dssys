.class public Lcom/octopus/ad/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lcom/octopus/ad/c/c;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SuspiciousIndentation"
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    invoke-static {}, Lcom/octopus/ad/c/b;->b()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    new-instance v0, Lcom/octopus/ad/c/b/a;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/octopus/ad/c/b/a;-><init>()V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    invoke-static {}, Lcom/octopus/ad/c/b;->c()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    new-instance v0, Lcom/octopus/ad/c/c/a;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/octopus/ad/c/c/a;-><init>()V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_2
    const-string v1, "xiaomi"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_e

    .line 42
    .line 43
    const-string v1, "redmi"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_e

    .line 50
    .line 51
    const-string v1, "meitu"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_e

    .line 58
    .line 59
    const-string v1, "\u5c0f\u7c73"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_e

    .line 66
    .line 67
    const-string v1, "blackshark"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    goto/16 :goto_3

    .line 76
    .line 77
    :cond_3
    const-string v1, "vivo"

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    new-instance v0, Lcom/octopus/ad/c/j/e;

    .line 86
    .line 87
    invoke-direct {v0}, Lcom/octopus/ad/c/j/e;-><init>()V

    .line 88
    .line 89
    .line 90
    return-object v0

    .line 91
    :cond_4
    const-string v1, "oppo"

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_d

    .line 98
    .line 99
    const-string v1, "oneplus"

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_d

    .line 106
    .line 107
    const-string v1, "realme"

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_5

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_5
    const-string v1, "lenovo"

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-nez v1, :cond_c

    .line 123
    .line 124
    const-string v1, "zuk"

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_6

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_6
    const-string v1, "nubia"

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_7

    .line 140
    .line 141
    new-instance v0, Lcom/octopus/ad/c/g/a;

    .line 142
    .line 143
    invoke-direct {v0}, Lcom/octopus/ad/c/g/a;-><init>()V

    .line 144
    .line 145
    .line 146
    return-object v0

    .line 147
    :cond_7
    const-string v1, "samsung"

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_8

    .line 154
    .line 155
    new-instance v0, Lcom/octopus/ad/c/i/b;

    .line 156
    .line 157
    invoke-direct {v0}, Lcom/octopus/ad/c/i/b;-><init>()V

    .line 158
    .line 159
    .line 160
    return-object v0

    .line 161
    :cond_8
    const-string v1, "meizu"

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-nez v1, :cond_b

    .line 168
    .line 169
    const-string v1, "mblu"

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-nez v0, :cond_b

    .line 176
    .line 177
    invoke-static {}, Lcom/octopus/ad/c/b;->a()Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_9

    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_9
    invoke-static {}, Lcom/octopus/ad/c/b;->d()Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_a

    .line 189
    .line 190
    new-instance v0, Lcom/octopus/ad/c/a/a;

    .line 191
    .line 192
    invoke-direct {v0}, Lcom/octopus/ad/c/a/a;-><init>()V

    .line 193
    .line 194
    .line 195
    return-object v0

    .line 196
    :cond_a
    return-object v2

    .line 197
    :cond_b
    :goto_0
    new-instance v0, Lcom/octopus/ad/c/e/a;

    .line 198
    .line 199
    invoke-direct {v0}, Lcom/octopus/ad/c/e/a;-><init>()V

    .line 200
    .line 201
    .line 202
    return-object v0

    .line 203
    :cond_c
    :goto_1
    new-instance v0, Lcom/octopus/ad/c/d/b;

    .line 204
    .line 205
    invoke-direct {v0}, Lcom/octopus/ad/c/d/b;-><init>()V

    .line 206
    .line 207
    .line 208
    return-object v0

    .line 209
    :cond_d
    :goto_2
    new-instance v0, Lcom/octopus/ad/c/h/f;

    .line 210
    .line 211
    invoke-direct {v0}, Lcom/octopus/ad/c/h/f;-><init>()V

    .line 212
    .line 213
    .line 214
    return-object v0

    .line 215
    :cond_e
    :goto_3
    new-instance v0, Lcom/octopus/ad/c/f/b;

    .line 216
    .line 217
    invoke-direct {v0}, Lcom/octopus/ad/c/f/b;-><init>()V

    .line 218
    .line 219
    .line 220
    return-object v0
.end method
