.class Lcom/kuaishou/weapon/p0/cw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kuaishou/weapon/p0/cw;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:Lcom/kuaishou/weapon/p0/cw;


# direct methods
.method public constructor <init>(Lcom/kuaishou/weapon/p0/cw;ZZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kuaishou/weapon/p0/cw$1;->d:Lcom/kuaishou/weapon/p0/cw;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/kuaishou/weapon/p0/cw$1;->a:Z

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/kuaishou/weapon/p0/cw$1;->b:Z

    .line 6
    .line 7
    iput p4, p0, Lcom/kuaishou/weapon/p0/cw$1;->c:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kuaishou/weapon/p0/cw$1;->d:Lcom/kuaishou/weapon/p0/cw;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kuaishou/weapon/p0/cw;->a(Lcom/kuaishou/weapon/p0/cw;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "re_po_rt"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/kuaishou/weapon/p0/h;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/kuaishou/weapon/p0/h;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "plc001_al_s"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v3, 0x1

    .line 21
    if-ne v1, v3, :cond_4

    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/kuaishou/weapon/p0/cw$1;->a:Z

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/kuaishou/weapon/p0/cw$1;->b:Z

    .line 28
    .line 29
    if-eqz v1, :cond_4

    .line 30
    .line 31
    :cond_0
    iget-object v1, p0, Lcom/kuaishou/weapon/p0/cw$1;->d:Lcom/kuaishou/weapon/p0/cw;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/kuaishou/weapon/p0/cw;->a(Lcom/kuaishou/weapon/p0/cw;)Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/kuaishou/weapon/p0/dd;->a(Landroid/content/Context;)Lcom/kuaishou/weapon/p0/dd;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v4, "apl_a1_1_upl_time"

    .line 42
    .line 43
    invoke-virtual {v1, v4}, Lcom/kuaishou/weapon/p0/dd;->a(Ljava/lang/String;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v6

    .line 51
    const-string v1, "plc001_al_i"

    .line 52
    .line 53
    const/16 v8, 0x8

    .line 54
    .line 55
    invoke-virtual {v0, v1, v8}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    int-to-long v8, v1

    .line 60
    const-wide/32 v10, 0x36ee80

    .line 61
    .line 62
    .line 63
    mul-long/2addr v8, v10

    .line 64
    const-string v1, "plc001_al_b"

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const-wide/16 v1, 0x0

    .line 71
    .line 72
    cmp-long v1, v4, v1

    .line 73
    .line 74
    if-lez v1, :cond_1

    .line 75
    .line 76
    sub-long v1, v6, v4

    .line 77
    .line 78
    sget v12, Lcom/kuaishou/weapon/p0/WeaponHI;->ii:I

    .line 79
    .line 80
    int-to-long v12, v12

    .line 81
    mul-long/2addr v12, v10

    .line 82
    cmp-long v1, v1, v12

    .line 83
    .line 84
    if-gez v1, :cond_1

    .line 85
    .line 86
    sget-object v1, Lcom/kuaishou/weapon/p0/WeaponHI;->isList:Ljava/util/List;

    .line 87
    .line 88
    if-eqz v1, :cond_1

    .line 89
    .line 90
    new-instance v1, Ljava/util/Date;

    .line 91
    .line 92
    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    sget-object v2, Lcom/kuaishou/weapon/p0/WeaponHI;->isList:Ljava/util/List;

    .line 100
    .line 101
    new-instance v10, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_1
    sub-long/2addr v6, v4

    .line 121
    cmp-long v1, v6, v8

    .line 122
    .line 123
    if-gez v1, :cond_3

    .line 124
    .line 125
    iget v1, p0, Lcom/kuaishou/weapon/p0/cw$1;->c:I

    .line 126
    .line 127
    const/16 v2, 0x64

    .line 128
    .line 129
    if-ne v1, v2, :cond_2

    .line 130
    .line 131
    if-eq v0, v3, :cond_3

    .line 132
    .line 133
    :cond_2
    const/16 v0, 0x6a

    .line 134
    .line 135
    if-ne v1, v0, :cond_4

    .line 136
    .line 137
    :cond_3
    new-instance v0, Lcom/kuaishou/weapon/p0/cg;

    .line 138
    .line 139
    iget-object v1, p0, Lcom/kuaishou/weapon/p0/cw$1;->d:Lcom/kuaishou/weapon/p0/cw;

    .line 140
    .line 141
    invoke-static {v1}, Lcom/kuaishou/weapon/p0/cw;->a(Lcom/kuaishou/weapon/p0/cw;)Landroid/content/Context;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    iget v2, p0, Lcom/kuaishou/weapon/p0/cw$1;->c:I

    .line 146
    .line 147
    invoke-direct {v0, v1, v2}, Lcom/kuaishou/weapon/p0/cg;-><init>(Landroid/content/Context;I)V

    .line 148
    .line 149
    .line 150
    sget-object v1, Lcom/kuaishou/weapon/p0/ci;->e:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Lcom/kuaishou/weapon/p0/cg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/kuaishou/weapon/p0/cw$1;->d:Lcom/kuaishou/weapon/p0/cw;

    .line 157
    .line 158
    invoke-static {v1}, Lcom/kuaishou/weapon/p0/cw;->a(Lcom/kuaishou/weapon/p0/cw;)Landroid/content/Context;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    sget-object v2, Lcom/kuaishou/weapon/p0/ci;->e:Ljava/lang/String;

    .line 163
    .line 164
    invoke-static {v1, v0, v2, v3, v3}, Lcom/kuaishou/weapon/p0/cn;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .line 166
    .line 167
    :catchall_0
    :cond_4
    :goto_0
    return-void
.end method
