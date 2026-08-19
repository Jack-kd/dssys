.class public Lcom/umeng/commonsdk/config/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/config/d$d;,
        Lcom/umeng/commonsdk/config/d$c;,
        Lcom/umeng/commonsdk/config/d$b;,
        Lcom/umeng/commonsdk/config/d$a;
    }
.end annotation


# static fields
.field public static final a:J = 0x3e8L

.field public static final b:Ljava/lang/String; = "_LAST_FIELD"

.field public static final c:Ljava/lang/String; = "3749699455"

.field public static final d:Ljava/lang/String; = "2130669566"

.field public static final e:Ljava/lang/String; = "262139"

.field public static final f:Ljava/lang/String; = "1983"

.field public static final g:I = 0x40

.field public static h:[Ljava/lang/String;

.field public static i:[Ljava/lang/String;

.field public static j:[Ljava/lang/String;

.field public static k:[Ljava/lang/String;

.field private static l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


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
    sput-object v0, Lcom/umeng/commonsdk/config/d;->l:Ljava/util/Map;

    .line 7
    .line 8
    invoke-static {}, Lcom/umeng/commonsdk/config/d$a;->values()[Lcom/umeng/commonsdk/config/d$a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    array-length v0, v0

    .line 13
    new-array v0, v0, [Ljava/lang/String;

    .line 14
    .line 15
    sput-object v0, Lcom/umeng/commonsdk/config/d;->h:[Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {}, Lcom/umeng/commonsdk/config/d$b;->values()[Lcom/umeng/commonsdk/config/d$b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    array-length v0, v0

    .line 22
    new-array v0, v0, [Ljava/lang/String;

    .line 23
    .line 24
    sput-object v0, Lcom/umeng/commonsdk/config/d;->i:[Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {}, Lcom/umeng/commonsdk/config/d$c;->values()[Lcom/umeng/commonsdk/config/d$c;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    array-length v0, v0

    .line 31
    new-array v0, v0, [Ljava/lang/String;

    .line 32
    .line 33
    sput-object v0, Lcom/umeng/commonsdk/config/d;->j:[Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {}, Lcom/umeng/commonsdk/config/d$d;->values()[Lcom/umeng/commonsdk/config/d$d;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    array-length v0, v0

    .line 40
    new-array v0, v0, [Ljava/lang/String;

    .line 41
    .line 42
    sput-object v0, Lcom/umeng/commonsdk/config/d;->k:[Ljava/lang/String;

    .line 43
    .line 44
    sget-object v0, Lcom/umeng/commonsdk/config/d;->h:[Ljava/lang/String;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    array-length v0, v0

    .line 50
    if-lez v0, :cond_1

    .line 51
    .line 52
    move v0, v1

    .line 53
    :goto_0
    invoke-static {}, Lcom/umeng/commonsdk/config/d$a;->values()[Lcom/umeng/commonsdk/config/d$a;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    array-length v2, v2

    .line 58
    if-ge v0, v2, :cond_0

    .line 59
    .line 60
    sget-object v2, Lcom/umeng/commonsdk/config/d;->h:[Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {}, Lcom/umeng/commonsdk/config/d$a;->values()[Lcom/umeng/commonsdk/config/d$a;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    aget-object v3, v3, v0

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    aput-object v3, v2, v0

    .line 73
    .line 74
    add-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/config/d;->l:Ljava/util/Map;

    .line 78
    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    const-class v2, Lcom/umeng/commonsdk/config/d$a;

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    sget-object v3, Lcom/umeng/commonsdk/config/d;->h:[Ljava/lang/String;

    .line 88
    .line 89
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    :cond_1
    sget-object v0, Lcom/umeng/commonsdk/config/d;->i:[Ljava/lang/String;

    .line 93
    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    array-length v0, v0

    .line 97
    if-lez v0, :cond_3

    .line 98
    .line 99
    move v0, v1

    .line 100
    :goto_1
    invoke-static {}, Lcom/umeng/commonsdk/config/d$b;->values()[Lcom/umeng/commonsdk/config/d$b;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    array-length v2, v2

    .line 105
    if-ge v0, v2, :cond_2

    .line 106
    .line 107
    sget-object v2, Lcom/umeng/commonsdk/config/d;->i:[Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {}, Lcom/umeng/commonsdk/config/d$b;->values()[Lcom/umeng/commonsdk/config/d$b;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    aget-object v3, v3, v0

    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    aput-object v3, v2, v0

    .line 120
    .line 121
    add-int/lit8 v0, v0, 0x1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    sget-object v0, Lcom/umeng/commonsdk/config/d;->l:Ljava/util/Map;

    .line 125
    .line 126
    if-eqz v0, :cond_3

    .line 127
    .line 128
    const-class v2, Lcom/umeng/commonsdk/config/d$b;

    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    sget-object v3, Lcom/umeng/commonsdk/config/d;->i:[Ljava/lang/String;

    .line 135
    .line 136
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    :cond_3
    sget-object v0, Lcom/umeng/commonsdk/config/d;->j:[Ljava/lang/String;

    .line 140
    .line 141
    if-eqz v0, :cond_5

    .line 142
    .line 143
    array-length v0, v0

    .line 144
    if-lez v0, :cond_5

    .line 145
    .line 146
    move v0, v1

    .line 147
    :goto_2
    invoke-static {}, Lcom/umeng/commonsdk/config/d$c;->values()[Lcom/umeng/commonsdk/config/d$c;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    array-length v2, v2

    .line 152
    if-ge v0, v2, :cond_4

    .line 153
    .line 154
    sget-object v2, Lcom/umeng/commonsdk/config/d;->j:[Ljava/lang/String;

    .line 155
    .line 156
    invoke-static {}, Lcom/umeng/commonsdk/config/d$c;->values()[Lcom/umeng/commonsdk/config/d$c;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    aget-object v3, v3, v0

    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    aput-object v3, v2, v0

    .line 167
    .line 168
    add-int/lit8 v0, v0, 0x1

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_4
    sget-object v0, Lcom/umeng/commonsdk/config/d;->l:Ljava/util/Map;

    .line 172
    .line 173
    if-eqz v0, :cond_5

    .line 174
    .line 175
    const-class v2, Lcom/umeng/commonsdk/config/d$c;

    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    sget-object v3, Lcom/umeng/commonsdk/config/d;->j:[Ljava/lang/String;

    .line 182
    .line 183
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    :cond_5
    sget-object v0, Lcom/umeng/commonsdk/config/d;->k:[Ljava/lang/String;

    .line 187
    .line 188
    if-eqz v0, :cond_7

    .line 189
    .line 190
    array-length v0, v0

    .line 191
    if-lez v0, :cond_7

    .line 192
    .line 193
    :goto_3
    invoke-static {}, Lcom/umeng/commonsdk/config/d$d;->values()[Lcom/umeng/commonsdk/config/d$d;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    array-length v0, v0

    .line 198
    if-ge v1, v0, :cond_6

    .line 199
    .line 200
    sget-object v0, Lcom/umeng/commonsdk/config/d;->k:[Ljava/lang/String;

    .line 201
    .line 202
    invoke-static {}, Lcom/umeng/commonsdk/config/d$d;->values()[Lcom/umeng/commonsdk/config/d$d;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    aget-object v2, v2, v1

    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    aput-object v2, v0, v1

    .line 213
    .line 214
    add-int/lit8 v1, v1, 0x1

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_6
    sget-object v0, Lcom/umeng/commonsdk/config/d;->l:Ljava/util/Map;

    .line 218
    .line 219
    if-eqz v0, :cond_7

    .line 220
    .line 221
    const-class v1, Lcom/umeng/commonsdk/config/d$d;

    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    sget-object v2, Lcom/umeng/commonsdk/config/d;->k:[Ljava/lang/String;

    .line 228
    .line 229
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    :cond_7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "_LAST_FIELD"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public static b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/umeng/commonsdk/config/d;->l:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/umeng/commonsdk/config/d;->l:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, [Ljava/lang/String;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method
