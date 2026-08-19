.class Lcom/kuaishou/weapon/p0/cx$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kuaishou/weapon/p0/cx;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/kuaishou/weapon/p0/cx;


# direct methods
.method public constructor <init>(Lcom/kuaishou/weapon/p0/cx;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kuaishou/weapon/p0/cx$1;->b:Lcom/kuaishou/weapon/p0/cx;

    .line 2
    .line 3
    iput p2, p0, Lcom/kuaishou/weapon/p0/cx$1;->a:I

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
    .locals 13

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/kuaishou/weapon/p0/cx$1;->b:Lcom/kuaishou/weapon/p0/cx;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kuaishou/weapon/p0/cx;->a(Lcom/kuaishou/weapon/p0/cx;)Landroid/content/Context;

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
    const-string v1, "plc002_pp_s"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-ne v1, v2, :cond_2

    .line 21
    .line 22
    iget-object v1, p0, Lcom/kuaishou/weapon/p0/cx$1;->b:Lcom/kuaishou/weapon/p0/cx;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/kuaishou/weapon/p0/cx;->a(Lcom/kuaishou/weapon/p0/cx;)Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Lcom/kuaishou/weapon/p0/dd;->a(Landroid/content/Context;)Lcom/kuaishou/weapon/p0/dd;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v3, "cpgc_a1_1_upl_time"

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Lcom/kuaishou/weapon/p0/dd;->a(Ljava/lang/String;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    const-string v1, "plc002_pp_i"

    .line 43
    .line 44
    const/16 v7, 0xc

    .line 45
    .line 46
    invoke-virtual {v0, v1, v7}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    int-to-long v0, v0

    .line 51
    const-wide/32 v7, 0x36ee80

    .line 52
    .line 53
    .line 54
    mul-long/2addr v0, v7

    .line 55
    const-wide/16 v9, 0x0

    .line 56
    .line 57
    cmp-long v9, v3, v9

    .line 58
    .line 59
    if-lez v9, :cond_0

    .line 60
    .line 61
    sub-long v9, v5, v3

    .line 62
    .line 63
    sget v11, Lcom/kuaishou/weapon/p0/WeaponHI;->ii:I

    .line 64
    .line 65
    int-to-long v11, v11

    .line 66
    mul-long/2addr v11, v7

    .line 67
    cmp-long v7, v9, v11

    .line 68
    .line 69
    if-gez v7, :cond_0

    .line 70
    .line 71
    sget-object v7, Lcom/kuaishou/weapon/p0/WeaponHI;->isList:Ljava/util/List;

    .line 72
    .line 73
    if-eqz v7, :cond_0

    .line 74
    .line 75
    new-instance v7, Ljava/util/Date;

    .line 76
    .line 77
    invoke-direct {v7, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    sget-object v8, Lcom/kuaishou/weapon/p0/WeaponHI;->isList:Ljava/util/List;

    .line 85
    .line 86
    new-instance v9, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-eqz v7, :cond_0

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    sub-long/2addr v5, v3

    .line 106
    cmp-long v0, v5, v0

    .line 107
    .line 108
    if-gez v0, :cond_1

    .line 109
    .line 110
    iget v0, p0, Lcom/kuaishou/weapon/p0/cx$1;->a:I

    .line 111
    .line 112
    const/16 v1, 0x6a

    .line 113
    .line 114
    if-ne v0, v1, :cond_2

    .line 115
    .line 116
    :cond_1
    new-instance v0, Lcom/kuaishou/weapon/p0/ch;

    .line 117
    .line 118
    iget-object v1, p0, Lcom/kuaishou/weapon/p0/cx$1;->b:Lcom/kuaishou/weapon/p0/cx;

    .line 119
    .line 120
    invoke-static {v1}, Lcom/kuaishou/weapon/p0/cx;->a(Lcom/kuaishou/weapon/p0/cx;)Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-direct {v0, v1}, Lcom/kuaishou/weapon/p0/ch;-><init>(Landroid/content/Context;)V

    .line 125
    .line 126
    .line 127
    sget-object v1, Lcom/kuaishou/weapon/p0/ci;->h:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Lcom/kuaishou/weapon/p0/ch;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/kuaishou/weapon/p0/cx$1;->b:Lcom/kuaishou/weapon/p0/cx;

    .line 134
    .line 135
    invoke-static {v1}, Lcom/kuaishou/weapon/p0/cx;->a(Lcom/kuaishou/weapon/p0/cx;)Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    sget-object v3, Lcom/kuaishou/weapon/p0/ci;->h:Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {v1, v0, v3, v2, v2}, Lcom/kuaishou/weapon/p0/cn;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .line 143
    .line 144
    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method
