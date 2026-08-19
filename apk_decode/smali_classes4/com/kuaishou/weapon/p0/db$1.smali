.class Lcom/kuaishou/weapon/p0/db$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kuaishou/weapon/p0/db;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/kuaishou/weapon/p0/db;


# direct methods
.method public constructor <init>(Lcom/kuaishou/weapon/p0/db;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kuaishou/weapon/p0/db$1;->b:Lcom/kuaishou/weapon/p0/db;

    .line 2
    .line 3
    iput p2, p0, Lcom/kuaishou/weapon/p0/db$1;->a:I

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
    iget-object v0, p0, Lcom/kuaishou/weapon/p0/db$1;->b:Lcom/kuaishou/weapon/p0/db;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kuaishou/weapon/p0/db;->a(Lcom/kuaishou/weapon/p0/db;)Landroid/content/Context;

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
    const-string v1, "plc001_b_s"

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
    iget-object v1, p0, Lcom/kuaishou/weapon/p0/db$1;->b:Lcom/kuaishou/weapon/p0/db;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/kuaishou/weapon/p0/db;->a(Lcom/kuaishou/weapon/p0/db;)Landroid/content/Context;

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
    invoke-virtual {v1}, Lcom/kuaishou/weapon/p0/dd;->a()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v5

    .line 40
    const-string v1, "plc001_b_i"

    .line 41
    .line 42
    const/16 v7, 0x8

    .line 43
    .line 44
    invoke-virtual {v0, v1, v7}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    int-to-long v0, v0

    .line 49
    const-wide/32 v7, 0x36ee80

    .line 50
    .line 51
    .line 52
    mul-long/2addr v0, v7

    .line 53
    const-wide/16 v9, 0x0

    .line 54
    .line 55
    cmp-long v9, v3, v9

    .line 56
    .line 57
    if-lez v9, :cond_0

    .line 58
    .line 59
    sub-long v9, v5, v3

    .line 60
    .line 61
    sget v11, Lcom/kuaishou/weapon/p0/WeaponHI;->ii:I

    .line 62
    .line 63
    int-to-long v11, v11

    .line 64
    mul-long/2addr v11, v7

    .line 65
    cmp-long v7, v9, v11

    .line 66
    .line 67
    if-gez v7, :cond_0

    .line 68
    .line 69
    sget-object v7, Lcom/kuaishou/weapon/p0/WeaponHI;->isList:Ljava/util/List;

    .line 70
    .line 71
    if-eqz v7, :cond_0

    .line 72
    .line 73
    new-instance v7, Ljava/util/Date;

    .line 74
    .line 75
    invoke-direct {v7, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    sget-object v8, Lcom/kuaishou/weapon/p0/WeaponHI;->isList:Ljava/util/List;

    .line 83
    .line 84
    new-instance v9, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-eqz v7, :cond_0

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    sub-long/2addr v5, v3

    .line 104
    cmp-long v0, v5, v0

    .line 105
    .line 106
    if-gez v0, :cond_1

    .line 107
    .line 108
    iget v0, p0, Lcom/kuaishou/weapon/p0/db$1;->a:I

    .line 109
    .line 110
    const/16 v1, 0x6a

    .line 111
    .line 112
    if-ne v0, v1, :cond_2

    .line 113
    .line 114
    :cond_1
    new-instance v0, Lcom/kuaishou/weapon/p0/cl;

    .line 115
    .line 116
    iget-object v1, p0, Lcom/kuaishou/weapon/p0/db$1;->b:Lcom/kuaishou/weapon/p0/db;

    .line 117
    .line 118
    invoke-static {v1}, Lcom/kuaishou/weapon/p0/db;->a(Lcom/kuaishou/weapon/p0/db;)Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    iget v3, p0, Lcom/kuaishou/weapon/p0/db$1;->a:I

    .line 123
    .line 124
    invoke-direct {v0, v1, v3}, Lcom/kuaishou/weapon/p0/cl;-><init>(Landroid/content/Context;I)V

    .line 125
    .line 126
    .line 127
    sget-object v1, Lcom/kuaishou/weapon/p0/ci;->c:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Lcom/kuaishou/weapon/p0/cl;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/kuaishou/weapon/p0/db$1;->b:Lcom/kuaishou/weapon/p0/db;

    .line 134
    .line 135
    invoke-static {v1}, Lcom/kuaishou/weapon/p0/db;->a(Lcom/kuaishou/weapon/p0/db;)Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    sget-object v3, Lcom/kuaishou/weapon/p0/ci;->c:Ljava/lang/String;

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
