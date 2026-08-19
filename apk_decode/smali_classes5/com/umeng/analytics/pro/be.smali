.class public Lcom/umeng/analytics/pro/be;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/be$a;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "rtd"

.field public static final B:Ljava/lang/String; = "lepd"

.field public static final C:Ljava/lang/String; = "ccfg"

.field public static final D:Ljava/lang/String; = "pi_sw"

.field private static E:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static F:Ljava/lang/String; = null

.field public static final a:Ljava/lang/String; = "env"

.field public static final b:Ljava/lang/String; = "exp"

.field public static final c:Ljava/lang/String; = "imp"

.field public static final d:Ljava/lang/String; = "ua"

.field public static final e:Ljava/lang/String; = "zc"

.field public static final f:Ljava/lang/String; = "id"

.field public static final g:Ljava/lang/String; = "zf"

.field public static final h:Ljava/lang/String; = "exid"

.field public static final i:Ljava/lang/String; = "ucc"

.field public static final j:Ljava/lang/String; = "ugc"

.field public static final k:Ljava/lang/String; = "usi"

.field public static final l:Ljava/lang/String; = "uso"

.field public static final m:Ljava/lang/String; = "user"

.field public static final n:Ljava/lang/String; = "uspi"

.field public static final o:Ljava/lang/String; = "dtfn"

.field public static final p:Ljava/lang/String; = "pr"

.field public static final q:Ljava/lang/String; = "upg"

.field public static final r:Ljava/lang/String; = "pri"

.field public static final s:Ljava/lang/String; = "probe"

.field public static final t:Ljava/lang/String; = "bl"

.field public static final u:Ljava/lang/String; = "wl"

.field public static final v:Ljava/lang/String; = "subp"

.field public static final w:Ljava/lang/String; = "subua"

.field public static final x:Ljava/lang/String; = "sta"

.field public static final y:Ljava/lang/String; = "emi"

.field public static final z:Ljava/lang/String; = "sli"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    sput-object v1, Lcom/umeng/analytics/pro/be;->F:Ljava/lang/String;

    .line 11
    .line 12
    const-string v2, "env"

    .line 13
    .line 14
    const-string v3, "envelope"

    .line 15
    .line 16
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 20
    .line 21
    const-string v2, "exp"

    .line 22
    .line 23
    const-string v3, ".umeng"

    .line 24
    .line 25
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 29
    .line 30
    const-string v2, "imp"

    .line 31
    .line 32
    const-string v3, ".imprint"

    .line 33
    .line 34
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 38
    .line 39
    const-string v2, "ua"

    .line 40
    .line 41
    const-string v3, "ua.db"

    .line 42
    .line 43
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 47
    .line 48
    const-string v2, "zc"

    .line 49
    .line 50
    const-string v3, "umeng_zero_cache.db"

    .line 51
    .line 52
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 56
    .line 57
    const-string v2, "id"

    .line 58
    .line 59
    const-string v3, "umeng_it.cache"

    .line 60
    .line 61
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 65
    .line 66
    const-string v2, "zf"

    .line 67
    .line 68
    const-string v3, "umeng_zcfg_flag"

    .line 69
    .line 70
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 74
    .line 75
    const-string v2, "exid"

    .line 76
    .line 77
    const-string v3, "exid.dat"

    .line 78
    .line 79
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 83
    .line 84
    const-string v2, "ucc"

    .line 85
    .line 86
    const-string v3, "umeng_common_config"

    .line 87
    .line 88
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 92
    .line 93
    const-string v2, "ugc"

    .line 94
    .line 95
    const-string v3, "umeng_general_config"

    .line 96
    .line 97
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 101
    .line 102
    const-string v2, "usi"

    .line 103
    .line 104
    const-string v3, "um_session_id"

    .line 105
    .line 106
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 110
    .line 111
    const-string v2, "uso"

    .line 112
    .line 113
    const-string v3, "umeng_sp_oaid"

    .line 114
    .line 115
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 119
    .line 120
    const-string v2, "user"

    .line 121
    .line 122
    const-string v3, "mobclick_agent_user_"

    .line 123
    .line 124
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 128
    .line 129
    const-string v2, "uspi"

    .line 130
    .line 131
    const-string v3, "umeng_subprocess_info"

    .line 132
    .line 133
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 137
    .line 138
    const-string v2, "dtfn"

    .line 139
    .line 140
    const-string v3, "delayed_transmission_flag_new"

    .line 141
    .line 142
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 146
    .line 147
    const-string v2, "pr"

    .line 148
    .line 149
    const-string v3, "umeng_policy_result_flag"

    .line 150
    .line 151
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 155
    .line 156
    const-string v2, "upg"

    .line 157
    .line 158
    const-string v3, "um_policy_grant"

    .line 159
    .line 160
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 164
    .line 165
    const-string v2, "pri"

    .line 166
    .line 167
    const-string v3, "um_pri"

    .line 168
    .line 169
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 173
    .line 174
    const-string v2, "probe"

    .line 175
    .line 176
    const-string v3, "UM_PROBE_DATA"

    .line 177
    .line 178
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 182
    .line 183
    const-string v2, "bl"

    .line 184
    .line 185
    const-string v3, "ekv_bl"

    .line 186
    .line 187
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 191
    .line 192
    const-string v2, "wl"

    .line 193
    .line 194
    const-string v3, "ekv_wl"

    .line 195
    .line 196
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 200
    .line 201
    const-string v2, "subp"

    .line 202
    .line 203
    const-string v3, "subprocess/"

    .line 204
    .line 205
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 209
    .line 210
    const-string v2, "subua"

    .line 211
    .line 212
    const-string v3, "ua_"

    .line 213
    .line 214
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 218
    .line 219
    const-string v2, "sta"

    .line 220
    .line 221
    const-string v3, "stateless"

    .line 222
    .line 223
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 227
    .line 228
    const-string v2, "emi"

    .line 229
    .line 230
    const-string v3, ".emitter"

    .line 231
    .line 232
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 236
    .line 237
    const-string v2, "sli"

    .line 238
    .line 239
    const-string v3, "um_slmode_sp"

    .line 240
    .line 241
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 245
    .line 246
    const-string v2, "rtd"

    .line 247
    .line 248
    const-string v3, "um_rtd_conf"

    .line 249
    .line 250
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 254
    .line 255
    const-string v2, "lepd"

    .line 256
    .line 257
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 261
    .line 262
    const-string v1, "ccfg"

    .line 263
    .line 264
    const-string v2, ".dmpvedpogjhejs.cfg"

    .line 265
    .line 266
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    .line 270
    .line 271
    const-string v1, "pi_sw"

    .line 272
    .line 273
    const-string v2, ".pisw02fl"

    .line 274
    .line 275
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/umeng/analytics/pro/be$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/umeng/analytics/pro/be;-><init>()V

    return-void
.end method

.method public static b()Lcom/umeng/analytics/pro/be;
    .locals 1

    .line 9
    invoke-static {}, Lcom/umeng/analytics/pro/be$a;->a()Lcom/umeng/analytics/pro/be;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 6
    const-string v0, ""

    sput-object v0, Lcom/umeng/analytics/pro/be;->F:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/umeng/analytics/pro/be;->F:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "_"

    const/4 v2, 0x3

    if-le v0, v2, :cond_2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/pro/be;->F:Ljava/lang/String;

    return-void

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/pro/be;->F:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    const-string p1, ""

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Lcom/umeng/analytics/pro/be;->E:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    const-string v1, "exp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "imp"

    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "emi"

    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/umeng/analytics/pro/be;->F:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/umeng/analytics/pro/be;->F:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
