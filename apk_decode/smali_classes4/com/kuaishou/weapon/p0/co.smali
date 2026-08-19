.class public Lcom/kuaishou/weapon/p0/co;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kuaishou/weapon/p0/co$a;
    }
.end annotation


# static fields
.field static a:Lcom/kuaishou/weapon/p0/co;

.field static b:Lcom/kuaishou/weapon/p0/co;

.field static c:Lcom/kuaishou/weapon/p0/co;


# instance fields
.field private d:J

.field private e:Lcom/kuaishou/weapon/p0/co$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/kuaishou/weapon/p0/co;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static c()V
    .locals 11

    .line 1
    new-instance v0, Lcom/kuaishou/weapon/p0/co;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kuaishou/weapon/p0/co;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/kuaishou/weapon/p0/co;->a:Lcom/kuaishou/weapon/p0/co;

    .line 7
    .line 8
    new-instance v0, Lcom/kuaishou/weapon/p0/co;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/kuaishou/weapon/p0/co;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/kuaishou/weapon/p0/co;->b:Lcom/kuaishou/weapon/p0/co;

    .line 14
    .line 15
    new-instance v0, Lcom/kuaishou/weapon/p0/co;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/kuaishou/weapon/p0/co;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/kuaishou/weapon/p0/co;->c:Lcom/kuaishou/weapon/p0/co;

    .line 21
    .line 22
    sget-object v0, Lcom/kuaishou/weapon/p0/co;->b:Lcom/kuaishou/weapon/p0/co;

    .line 23
    .line 24
    sget-object v1, Lcom/kuaishou/weapon/p0/co$a;->a:Lcom/kuaishou/weapon/p0/co$a;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/kuaishou/weapon/p0/co;->a(Lcom/kuaishou/weapon/p0/co$a;)V

    .line 27
    .line 28
    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    .line 31
    invoke-static {}, Lcom/kuaishou/weapon/p0/cp;->a()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const-string v3, " is not supported now : ("

    .line 36
    .line 37
    const-string v4, "API LEVEL: "

    .line 38
    .line 39
    const-wide/16 v5, 0x18

    .line 40
    .line 41
    const-wide/16 v7, 0x20

    .line 42
    .line 43
    const-wide/16 v9, 0x4

    .line 44
    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    sget-object v1, Lcom/kuaishou/weapon/p0/co;->a:Lcom/kuaishou/weapon/p0/co;

    .line 48
    .line 49
    sget-object v2, Lcom/kuaishou/weapon/p0/co$a;->b:Lcom/kuaishou/weapon/p0/co$a;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lcom/kuaishou/weapon/p0/co;->a(Lcom/kuaishou/weapon/p0/co$a;)V

    .line 52
    .line 53
    .line 54
    sget-object v1, Lcom/kuaishou/weapon/p0/co;->c:Lcom/kuaishou/weapon/p0/co;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/kuaishou/weapon/p0/co;->a(Lcom/kuaishou/weapon/p0/co$a;)V

    .line 57
    .line 58
    .line 59
    const-wide/16 v1, 0x28

    .line 60
    .line 61
    packed-switch v0, :pswitch_data_0

    .line 62
    .line 63
    .line 64
    new-instance v1, Ljava/lang/RuntimeException;

    .line 65
    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v1

    .line 85
    :pswitch_0
    sget-object v0, Lcom/kuaishou/weapon/p0/co;->a:Lcom/kuaishou/weapon/p0/co;

    .line 86
    .line 87
    invoke-virtual {v0, v7, v8}, Lcom/kuaishou/weapon/p0/co;->a(J)V

    .line 88
    .line 89
    .line 90
    sget-object v0, Lcom/kuaishou/weapon/p0/co;->c:Lcom/kuaishou/weapon/p0/co;

    .line 91
    .line 92
    invoke-virtual {v0, v5, v6}, Lcom/kuaishou/weapon/p0/co;->a(J)V

    .line 93
    .line 94
    .line 95
    sget-object v0, Lcom/kuaishou/weapon/p0/co;->b:Lcom/kuaishou/weapon/p0/co;

    .line 96
    .line 97
    invoke-virtual {v0, v9, v10}, Lcom/kuaishou/weapon/p0/co;->a(J)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_1
    sget-object v0, Lcom/kuaishou/weapon/p0/co;->a:Lcom/kuaishou/weapon/p0/co;

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/kuaishou/weapon/p0/co;->a(J)V

    .line 104
    .line 105
    .line 106
    sget-object v0, Lcom/kuaishou/weapon/p0/co;->c:Lcom/kuaishou/weapon/p0/co;

    .line 107
    .line 108
    invoke-virtual {v0, v7, v8}, Lcom/kuaishou/weapon/p0/co;->a(J)V

    .line 109
    .line 110
    .line 111
    sget-object v0, Lcom/kuaishou/weapon/p0/co;->b:Lcom/kuaishou/weapon/p0/co;

    .line 112
    .line 113
    invoke-virtual {v0, v9, v10}, Lcom/kuaishou/weapon/p0/co;->a(J)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :pswitch_2
    sget-object v0, Lcom/kuaishou/weapon/p0/co;->a:Lcom/kuaishou/weapon/p0/co;

    .line 118
    .line 119
    const-wide/16 v3, 0x30

    .line 120
    .line 121
    invoke-virtual {v0, v3, v4}, Lcom/kuaishou/weapon/p0/co;->a(J)V

    .line 122
    .line 123
    .line 124
    sget-object v0, Lcom/kuaishou/weapon/p0/co;->c:Lcom/kuaishou/weapon/p0/co;

    .line 125
    .line 126
    invoke-virtual {v0, v1, v2}, Lcom/kuaishou/weapon/p0/co;->a(J)V

    .line 127
    .line 128
    .line 129
    sget-object v0, Lcom/kuaishou/weapon/p0/co;->b:Lcom/kuaishou/weapon/p0/co;

    .line 130
    .line 131
    invoke-virtual {v0, v9, v10}, Lcom/kuaishou/weapon/p0/co;->a(J)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_0
    sget-object v2, Lcom/kuaishou/weapon/p0/co;->a:Lcom/kuaishou/weapon/p0/co;

    .line 136
    .line 137
    invoke-virtual {v2, v1}, Lcom/kuaishou/weapon/p0/co;->a(Lcom/kuaishou/weapon/p0/co$a;)V

    .line 138
    .line 139
    .line 140
    sget-object v2, Lcom/kuaishou/weapon/p0/co;->c:Lcom/kuaishou/weapon/p0/co;

    .line 141
    .line 142
    invoke-virtual {v2, v1}, Lcom/kuaishou/weapon/p0/co;->a(Lcom/kuaishou/weapon/p0/co$a;)V

    .line 143
    .line 144
    .line 145
    const-wide/16 v1, 0x1c

    .line 146
    .line 147
    packed-switch v0, :pswitch_data_1

    .line 148
    .line 149
    .line 150
    new-instance v1, Ljava/lang/RuntimeException;

    .line 151
    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v1

    .line 171
    :pswitch_3
    sget-object v0, Lcom/kuaishou/weapon/p0/co;->a:Lcom/kuaishou/weapon/p0/co;

    .line 172
    .line 173
    invoke-virtual {v0, v5, v6}, Lcom/kuaishou/weapon/p0/co;->a(J)V

    .line 174
    .line 175
    .line 176
    sget-object v0, Lcom/kuaishou/weapon/p0/co;->c:Lcom/kuaishou/weapon/p0/co;

    .line 177
    .line 178
    const-wide/16 v1, 0x14

    .line 179
    .line 180
    invoke-virtual {v0, v1, v2}, Lcom/kuaishou/weapon/p0/co;->a(J)V

    .line 181
    .line 182
    .line 183
    sget-object v0, Lcom/kuaishou/weapon/p0/co;->b:Lcom/kuaishou/weapon/p0/co;

    .line 184
    .line 185
    invoke-virtual {v0, v9, v10}, Lcom/kuaishou/weapon/p0/co;->a(J)V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :pswitch_4
    sget-object v0, Lcom/kuaishou/weapon/p0/co;->a:Lcom/kuaishou/weapon/p0/co;

    .line 190
    .line 191
    invoke-virtual {v0, v1, v2}, Lcom/kuaishou/weapon/p0/co;->a(J)V

    .line 192
    .line 193
    .line 194
    sget-object v0, Lcom/kuaishou/weapon/p0/co;->c:Lcom/kuaishou/weapon/p0/co;

    .line 195
    .line 196
    invoke-virtual {v0, v5, v6}, Lcom/kuaishou/weapon/p0/co;->a(J)V

    .line 197
    .line 198
    .line 199
    sget-object v0, Lcom/kuaishou/weapon/p0/co;->b:Lcom/kuaishou/weapon/p0/co;

    .line 200
    .line 201
    invoke-virtual {v0, v9, v10}, Lcom/kuaishou/weapon/p0/co;->a(J)V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :pswitch_5
    sget-object v0, Lcom/kuaishou/weapon/p0/co;->a:Lcom/kuaishou/weapon/p0/co;

    .line 206
    .line 207
    invoke-virtual {v0, v7, v8}, Lcom/kuaishou/weapon/p0/co;->a(J)V

    .line 208
    .line 209
    .line 210
    sget-object v0, Lcom/kuaishou/weapon/p0/co;->c:Lcom/kuaishou/weapon/p0/co;

    .line 211
    .line 212
    invoke-virtual {v0, v1, v2}, Lcom/kuaishou/weapon/p0/co;->a(J)V

    .line 213
    .line 214
    .line 215
    sget-object v0, Lcom/kuaishou/weapon/p0/co;->b:Lcom/kuaishou/weapon/p0/co;

    .line 216
    .line 217
    invoke-virtual {v0, v9, v10}, Lcom/kuaishou/weapon/p0/co;->a(J)V

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/kuaishou/weapon/p0/co;->d:J

    return-wide v0
.end method

.method public a(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/kuaishou/weapon/p0/co;->d:J

    return-void
.end method

.method public a(Lcom/kuaishou/weapon/p0/co$a;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/kuaishou/weapon/p0/co;->e:Lcom/kuaishou/weapon/p0/co$a;

    return-void
.end method

.method public b()Lcom/kuaishou/weapon/p0/co$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kuaishou/weapon/p0/co;->e:Lcom/kuaishou/weapon/p0/co$a;

    .line 2
    .line 3
    return-object v0
.end method
