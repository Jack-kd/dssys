.class Lcom/kuaishou/weapon/p0/cv$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kuaishou/weapon/p0/cv;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/kuaishou/weapon/p0/cv;


# direct methods
.method public constructor <init>(Lcom/kuaishou/weapon/p0/cv;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kuaishou/weapon/p0/cv$1;->b:Lcom/kuaishou/weapon/p0/cv;

    .line 2
    .line 3
    iput p2, p0, Lcom/kuaishou/weapon/p0/cv$1;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    :try_start_0
    iget-object v1, v0, Lcom/kuaishou/weapon/p0/cv$1;->b:Lcom/kuaishou/weapon/p0/cv;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/kuaishou/weapon/p0/cv;->a(Lcom/kuaishou/weapon/p0/cv;)Landroid/content/Context;

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
    const-string v2, "plc001_act_s"

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, v2, v3}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v4, 0x1

    .line 23
    if-ne v2, v4, :cond_2

    .line 24
    .line 25
    iget-object v2, v0, Lcom/kuaishou/weapon/p0/cv$1;->b:Lcom/kuaishou/weapon/p0/cv;

    .line 26
    .line 27
    invoke-static {v2}, Lcom/kuaishou/weapon/p0/cv;->a(Lcom/kuaishou/weapon/p0/cv;)Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v2}, Lcom/kuaishou/weapon/p0/dd;->a(Landroid/content/Context;)Lcom/kuaishou/weapon/p0/dd;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v5, "act_a1_1_upl_time"

    .line 36
    .line 37
    invoke-virtual {v2, v5}, Lcom/kuaishou/weapon/p0/dd;->a(Ljava/lang/String;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v7

    .line 45
    const-string v2, "plc001_act_i"

    .line 46
    .line 47
    const/16 v9, 0x8

    .line 48
    .line 49
    invoke-virtual {v1, v2, v9}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    int-to-long v9, v2

    .line 54
    const-wide/32 v11, 0x36ee80

    .line 55
    .line 56
    .line 57
    mul-long/2addr v9, v11

    .line 58
    const-string v2, "plc001_al_b"

    .line 59
    .line 60
    invoke-virtual {v1, v2, v3}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    const-wide/16 v13, 0x0

    .line 65
    .line 66
    cmp-long v2, v5, v13

    .line 67
    .line 68
    if-lez v2, :cond_0

    .line 69
    .line 70
    sub-long v13, v7, v5

    .line 71
    .line 72
    sget v2, Lcom/kuaishou/weapon/p0/WeaponHI;->ii:I

    .line 73
    .line 74
    move-wide v15, v11

    .line 75
    int-to-long v11, v2

    .line 76
    mul-long/2addr v11, v15

    .line 77
    cmp-long v2, v13, v11

    .line 78
    .line 79
    if-gez v2, :cond_0

    .line 80
    .line 81
    sget-object v2, Lcom/kuaishou/weapon/p0/WeaponHI;->isList:Ljava/util/List;

    .line 82
    .line 83
    if-eqz v2, :cond_0

    .line 84
    .line 85
    new-instance v2, Ljava/util/Date;

    .line 86
    .line 87
    invoke-direct {v2, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    sget-object v11, Lcom/kuaishou/weapon/p0/WeaponHI;->isList:Ljava/util/List;

    .line 95
    .line 96
    new-instance v12, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-interface {v11, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_0

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_0
    sub-long/2addr v7, v5

    .line 116
    cmp-long v2, v7, v9

    .line 117
    .line 118
    if-gez v2, :cond_1

    .line 119
    .line 120
    iget v2, v0, Lcom/kuaishou/weapon/p0/cv$1;->a:I

    .line 121
    .line 122
    const/16 v5, 0x6a

    .line 123
    .line 124
    if-eq v2, v5, :cond_1

    .line 125
    .line 126
    const/16 v5, 0x64

    .line 127
    .line 128
    if-ne v2, v5, :cond_2

    .line 129
    .line 130
    if-ne v1, v4, :cond_2

    .line 131
    .line 132
    :cond_1
    new-instance v1, Lcom/kuaishou/weapon/p0/cf;

    .line 133
    .line 134
    iget-object v2, v0, Lcom/kuaishou/weapon/p0/cv$1;->b:Lcom/kuaishou/weapon/p0/cv;

    .line 135
    .line 136
    invoke-static {v2}, Lcom/kuaishou/weapon/p0/cv;->a(Lcom/kuaishou/weapon/p0/cv;)Landroid/content/Context;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    iget v5, v0, Lcom/kuaishou/weapon/p0/cv$1;->a:I

    .line 141
    .line 142
    invoke-direct {v1, v2, v5}, Lcom/kuaishou/weapon/p0/cf;-><init>(Landroid/content/Context;I)V

    .line 143
    .line 144
    .line 145
    sget-object v2, Lcom/kuaishou/weapon/p0/ci;->a:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Lcom/kuaishou/weapon/p0/cf;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    iget-object v2, v0, Lcom/kuaishou/weapon/p0/cv$1;->b:Lcom/kuaishou/weapon/p0/cv;

    .line 152
    .line 153
    invoke-static {v2}, Lcom/kuaishou/weapon/p0/cv;->a(Lcom/kuaishou/weapon/p0/cv;)Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    sget-object v5, Lcom/kuaishou/weapon/p0/ci;->a:Ljava/lang/String;

    .line 158
    .line 159
    invoke-static {v2, v1, v5, v3, v4}, Lcom/kuaishou/weapon/p0/cn;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .line 161
    .line 162
    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method
