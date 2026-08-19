.class public Lcom/umeng/analytics/pro/au;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = ""

.field private static b:Ljava/lang/String; = ""

.field private static final c:Ljava/lang/String; = "hw_sc.build.platform.version"

.field private static final d:Ljava/lang/String; = "ro.build.version.emui"

.field private static final e:Ljava/lang/String; = "ro.build.version.magic"

.field private static final f:Ljava/lang/String; = "ro.miui.ui.version.name"

.field private static final g:Ljava/lang/String; = "ro.build.version.opporom"

.field private static final h:Ljava/lang/String; = "ro.vivo.os.name"

.field private static final i:Ljava/lang/String; = "ro.vivo.os.version"

.field private static final j:Ljava/lang/String; = "ro.build.version.oplusrom"

.field private static final k:Ljava/lang/String; = "ro.rom.version"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 5
    sget-object v0, Lcom/umeng/analytics/pro/au;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {p0}, Lcom/umeng/analytics/pro/au;->e(Ljava/lang/String;)V

    .line 7
    :cond_0
    sget-object p0, Lcom/umeng/analytics/pro/au;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static a()Z
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "com.huawei.system.BuildEx"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-string v1, "getOsBrand"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catchall_0
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/analytics/pro/au;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Lcom/umeng/analytics/pro/au;->e(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object p0, Lcom/umeng/analytics/pro/au;->b:Ljava/lang/String;

    .line 13
    .line 14
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    const-string v0, " "

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "get"

    .line 8
    .line 9
    const-class v2, Ljava/lang/String;

    .line 10
    .line 11
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    return-object p0

    .line 30
    :catchall_0
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method private static e(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "ro.build.version.magic"

    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/umeng/analytics/pro/au;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    sparse-switch v1, :sswitch_data_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :sswitch_0
    const-string v1, "HUAWEI"

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :sswitch_1
    const-string v1, "REDMI"

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x3

    .line 34
    goto :goto_1

    .line 35
    :sswitch_2
    const-string v1, "HONOR"

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_0

    .line 42
    .line 43
    const/4 p0, 0x1

    .line 44
    goto :goto_1

    .line 45
    :sswitch_3
    const-string v1, "VIVO"

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_0

    .line 52
    .line 53
    const/4 p0, 0x6

    .line 54
    goto :goto_1

    .line 55
    :sswitch_4
    const-string v1, "OPPO"

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_0

    .line 62
    .line 63
    const/4 p0, 0x5

    .line 64
    goto :goto_1

    .line 65
    :sswitch_5
    const-string v1, "ONEPLUS"

    .line 66
    .line 67
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_0

    .line 72
    .line 73
    const/4 p0, 0x7

    .line 74
    goto :goto_1

    .line 75
    :sswitch_6
    const-string v1, "XIAOMI"

    .line 76
    .line 77
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_0

    .line 82
    .line 83
    const/4 p0, 0x2

    .line 84
    goto :goto_1

    .line 85
    :sswitch_7
    const-string v1, "REALME"

    .line 86
    .line 87
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    if-eqz p0, :cond_0

    .line 92
    .line 93
    const/4 p0, 0x4

    .line 94
    goto :goto_1

    .line 95
    :cond_0
    :goto_0
    const/4 p0, -0x1

    .line 96
    :goto_1
    const-string v1, "ro.build.version.emui"

    .line 97
    .line 98
    const-string v2, "EMUI"

    .line 99
    .line 100
    const-string v3, "ColorOS"

    .line 101
    .line 102
    packed-switch p0, :pswitch_data_0

    .line 103
    .line 104
    .line 105
    :try_start_1
    const-string p0, "Android"

    .line 106
    .line 107
    sput-object p0, Lcom/umeng/analytics/pro/au;->a:Ljava/lang/String;

    .line 108
    .line 109
    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 110
    .line 111
    sput-object p0, Lcom/umeng/analytics/pro/au;->b:Ljava/lang/String;

    .line 112
    .line 113
    return-void

    .line 114
    :pswitch_0
    const-string p0, "HydrogenOS"

    .line 115
    .line 116
    sput-object p0, Lcom/umeng/analytics/pro/au;->a:Ljava/lang/String;

    .line 117
    .line 118
    const-string p0, "ro.rom.version"

    .line 119
    .line 120
    invoke-static {p0}, Lcom/umeng/analytics/pro/au;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_1

    .line 129
    .line 130
    sput-object v3, Lcom/umeng/analytics/pro/au;->a:Ljava/lang/String;

    .line 131
    .line 132
    const-string p0, "ro.build.version.oplusrom"

    .line 133
    .line 134
    invoke-static {p0}, Lcom/umeng/analytics/pro/au;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    :cond_1
    sput-object p0, Lcom/umeng/analytics/pro/au;->b:Ljava/lang/String;

    .line 139
    .line 140
    return-void

    .line 141
    :pswitch_1
    const-string p0, "Funtouch"

    .line 142
    .line 143
    sput-object p0, Lcom/umeng/analytics/pro/au;->a:Ljava/lang/String;

    .line 144
    .line 145
    const-string p0, "ro.vivo.os.version"

    .line 146
    .line 147
    invoke-static {p0}, Lcom/umeng/analytics/pro/au;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    sput-object p0, Lcom/umeng/analytics/pro/au;->b:Ljava/lang/String;

    .line 152
    .line 153
    return-void

    .line 154
    :pswitch_2
    sput-object v3, Lcom/umeng/analytics/pro/au;->a:Ljava/lang/String;

    .line 155
    .line 156
    const-string p0, "ro.build.version.opporom"

    .line 157
    .line 158
    invoke-static {p0}, Lcom/umeng/analytics/pro/au;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    sput-object p0, Lcom/umeng/analytics/pro/au;->b:Ljava/lang/String;

    .line 163
    .line 164
    return-void

    .line 165
    :pswitch_3
    const-string p0, "MIUI"

    .line 166
    .line 167
    sput-object p0, Lcom/umeng/analytics/pro/au;->a:Ljava/lang/String;

    .line 168
    .line 169
    const-string p0, "ro.miui.ui.version.name"

    .line 170
    .line 171
    invoke-static {p0}, Lcom/umeng/analytics/pro/au;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    sput-object p0, Lcom/umeng/analytics/pro/au;->b:Ljava/lang/String;

    .line 176
    .line 177
    return-void

    .line 178
    :pswitch_4
    invoke-static {v0}, Lcom/umeng/analytics/pro/au;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    if-nez p0, :cond_2

    .line 187
    .line 188
    const-string p0, "MagicUI"

    .line 189
    .line 190
    sput-object p0, Lcom/umeng/analytics/pro/au;->a:Ljava/lang/String;

    .line 191
    .line 192
    invoke-static {v0}, Lcom/umeng/analytics/pro/au;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    sput-object p0, Lcom/umeng/analytics/pro/au;->b:Ljava/lang/String;

    .line 197
    .line 198
    return-void

    .line 199
    :cond_2
    sput-object v2, Lcom/umeng/analytics/pro/au;->a:Ljava/lang/String;

    .line 200
    .line 201
    invoke-static {v1}, Lcom/umeng/analytics/pro/au;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    sput-object p0, Lcom/umeng/analytics/pro/au;->b:Ljava/lang/String;

    .line 206
    .line 207
    return-void

    .line 208
    :pswitch_5
    invoke-static {}, Lcom/umeng/analytics/pro/au;->a()Z

    .line 209
    .line 210
    .line 211
    move-result p0

    .line 212
    if-eqz p0, :cond_3

    .line 213
    .line 214
    const-string p0, "hw_sc.build.platform.version"

    .line 215
    .line 216
    invoke-static {p0}, Lcom/umeng/analytics/pro/au;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    sput-object p0, Lcom/umeng/analytics/pro/au;->b:Ljava/lang/String;

    .line 221
    .line 222
    const-string p0, "HarmonyOS"

    .line 223
    .line 224
    sput-object p0, Lcom/umeng/analytics/pro/au;->a:Ljava/lang/String;

    .line 225
    .line 226
    return-void

    .line 227
    :cond_3
    sput-object v2, Lcom/umeng/analytics/pro/au;->a:Ljava/lang/String;

    .line 228
    .line 229
    invoke-static {v1}, Lcom/umeng/analytics/pro/au;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    sput-object p0, Lcom/umeng/analytics/pro/au;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    .line 235
    :catchall_0
    return-void

    .line 236
    nop

    .line 237
    :sswitch_data_0
    .sparse-switch
        -0x7027944a -> :sswitch_7
        -0x65b21745 -> :sswitch_6
        -0x23e7db20 -> :sswitch_5
        0x251fa0 -> :sswitch_4
        0x2834ac -> :sswitch_3
        0x41bb44a -> :sswitch_2
        0x4a3edcd -> :sswitch_1
        0x7fa995e7 -> :sswitch_0
    .end sparse-switch

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
