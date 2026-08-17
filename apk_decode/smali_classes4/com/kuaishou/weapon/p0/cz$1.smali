.class Lcom/kuaishou/weapon/p0/cz$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kuaishou/weapon/p0/cz;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/kuaishou/weapon/p0/cz;


# direct methods
.method public constructor <init>(Lcom/kuaishou/weapon/p0/cz;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kuaishou/weapon/p0/cz$1;->c:Lcom/kuaishou/weapon/p0/cz;

    .line 2
    .line 3
    iput p2, p0, Lcom/kuaishou/weapon/p0/cz$1;->a:I

    .line 4
    .line 5
    iput p3, p0, Lcom/kuaishou/weapon/p0/cz$1;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/kuaishou/weapon/p0/cz$1;->c:Lcom/kuaishou/weapon/p0/cz;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/kuaishou/weapon/p0/cz;->a(Lcom/kuaishou/weapon/p0/cz;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "re_po_rt"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lcom/kuaishou/weapon/p0/h;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/kuaishou/weapon/p0/h;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "plc001_r_s"

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {v1, v2, v3}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ne v2, v3, :cond_3

    .line 23
    .line 24
    iget-object v2, v0, Lcom/kuaishou/weapon/p0/cz$1;->c:Lcom/kuaishou/weapon/p0/cz;

    .line 25
    .line 26
    invoke-static {v2}, Lcom/kuaishou/weapon/p0/cz;->a(Lcom/kuaishou/weapon/p0/cz;)Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Lcom/kuaishou/weapon/p0/dd;->a(Landroid/content/Context;)Lcom/kuaishou/weapon/p0/dd;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v4, "es_a1_1_upl_time"

    .line 35
    .line 36
    invoke-virtual {v2, v4}, Lcom/kuaishou/weapon/p0/dd;->a(Ljava/lang/String;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v6

    .line 44
    const-string v2, "plc001_r_i"

    .line 45
    .line 46
    invoke-virtual {v1, v2, v3}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    int-to-long v8, v2

    .line 51
    const-wide/32 v10, 0x36ee80

    .line 52
    .line 53
    .line 54
    mul-long/2addr v8, v10

    .line 55
    const-string v2, "plc001_r_o"

    .line 56
    .line 57
    const/4 v12, 0x5

    .line 58
    invoke-virtual {v1, v2, v12}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    int-to-long v12, v2

    .line 63
    const-wide/32 v14, 0xea60

    .line 64
    .line 65
    .line 66
    mul-long/2addr v12, v14

    .line 67
    const-string v2, "plc001_r_b"

    .line 68
    .line 69
    const/4 v14, 0x0

    .line 70
    invoke-virtual {v1, v2, v14}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    const-wide/16 v14, 0x0

    .line 75
    .line 76
    cmp-long v2, v4, v14

    .line 77
    .line 78
    if-lez v2, :cond_0

    .line 79
    .line 80
    sub-long v14, v6, v4

    .line 81
    .line 82
    sget v2, Lcom/kuaishou/weapon/p0/WeaponHI;->ii:I

    .line 83
    .line 84
    move-wide/from16 v16, v10

    .line 85
    .line 86
    int-to-long v10, v2

    .line 87
    mul-long v10, v10, v16

    .line 88
    .line 89
    cmp-long v2, v14, v10

    .line 90
    .line 91
    if-gez v2, :cond_0

    .line 92
    .line 93
    sget-object v2, Lcom/kuaishou/weapon/p0/WeaponHI;->isList:Ljava/util/List;

    .line 94
    .line 95
    if-eqz v2, :cond_0

    .line 96
    .line 97
    new-instance v2, Ljava/util/Date;

    .line 98
    .line 99
    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    sget-object v10, Lcom/kuaishou/weapon/p0/WeaponHI;->isList:Ljava/util/List;

    .line 107
    .line 108
    new-instance v11, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-interface {v10, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_0

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_0
    sub-long/2addr v6, v4

    .line 128
    cmp-long v2, v6, v8

    .line 129
    .line 130
    if-gez v2, :cond_2

    .line 131
    .line 132
    iget v2, v0, Lcom/kuaishou/weapon/p0/cz$1;->a:I

    .line 133
    .line 134
    const/16 v4, 0x64

    .line 135
    .line 136
    if-ne v2, v4, :cond_1

    .line 137
    .line 138
    if-eq v1, v3, :cond_2

    .line 139
    .line 140
    :cond_1
    const/16 v1, 0x6a

    .line 141
    .line 142
    if-eq v2, v1, :cond_2

    .line 143
    .line 144
    if-eq v2, v4, :cond_3

    .line 145
    .line 146
    if-lez v2, :cond_3

    .line 147
    .line 148
    cmp-long v1, v6, v12

    .line 149
    .line 150
    if-ltz v1, :cond_3

    .line 151
    .line 152
    :cond_2
    new-instance v1, Lcom/kuaishou/weapon/p0/cj;

    .line 153
    .line 154
    iget-object v2, v0, Lcom/kuaishou/weapon/p0/cz$1;->c:Lcom/kuaishou/weapon/p0/cz;

    .line 155
    .line 156
    invoke-static {v2}, Lcom/kuaishou/weapon/p0/cz;->a(Lcom/kuaishou/weapon/p0/cz;)Landroid/content/Context;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    iget v4, v0, Lcom/kuaishou/weapon/p0/cz$1;->a:I

    .line 161
    .line 162
    iget v5, v0, Lcom/kuaishou/weapon/p0/cz$1;->b:I

    .line 163
    .line 164
    invoke-direct {v1, v2, v4, v5}, Lcom/kuaishou/weapon/p0/cj;-><init>(Landroid/content/Context;II)V

    .line 165
    .line 166
    .line 167
    sget-object v2, Lcom/kuaishou/weapon/p0/ci;->d:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v1, v2}, Lcom/kuaishou/weapon/p0/cj;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    iget-object v2, v0, Lcom/kuaishou/weapon/p0/cz$1;->c:Lcom/kuaishou/weapon/p0/cz;

    .line 174
    .line 175
    invoke-static {v2}, Lcom/kuaishou/weapon/p0/cz;->a(Lcom/kuaishou/weapon/p0/cz;)Landroid/content/Context;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    sget-object v4, Lcom/kuaishou/weapon/p0/ci;->d:Ljava/lang/String;

    .line 180
    .line 181
    invoke-static {v2, v1, v4, v3, v3}, Lcom/kuaishou/weapon/p0/cn;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .line 183
    .line 184
    :catchall_0
    :cond_3
    :goto_0
    return-void
.end method
