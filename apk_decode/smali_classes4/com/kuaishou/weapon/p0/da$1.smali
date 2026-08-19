.class Lcom/kuaishou/weapon/p0/da$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kuaishou/weapon/p0/da;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/kuaishou/weapon/p0/da;


# direct methods
.method public constructor <init>(Lcom/kuaishou/weapon/p0/da;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kuaishou/weapon/p0/da$1;->b:Lcom/kuaishou/weapon/p0/da;

    .line 2
    .line 3
    iput p2, p0, Lcom/kuaishou/weapon/p0/da$1;->a:I

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
    const-string v0, "fp_a1_1_upl_time"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/kuaishou/weapon/p0/da$1;->b:Lcom/kuaishou/weapon/p0/da;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/kuaishou/weapon/p0/da;->a(Lcom/kuaishou/weapon/p0/da;)Landroid/content/Context;

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
    const-string v2, "plc001_c_s"

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
    if-ne v2, v3, :cond_1

    .line 23
    .line 24
    iget-object v2, p0, Lcom/kuaishou/weapon/p0/da$1;->b:Lcom/kuaishou/weapon/p0/da;

    .line 25
    .line 26
    invoke-static {v2}, Lcom/kuaishou/weapon/p0/da;->a(Lcom/kuaishou/weapon/p0/da;)Landroid/content/Context;

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
    invoke-virtual {v2, v0}, Lcom/kuaishou/weapon/p0/dd;->a(Ljava/lang/String;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v6

    .line 42
    const-string v2, "plc001_c_b"

    .line 43
    .line 44
    const/4 v8, 0x0

    .line 45
    invoke-virtual {v1, v2, v8}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const-string v9, "plc001_c_i"

    .line 50
    .line 51
    const/4 v10, 0x6

    .line 52
    invoke-virtual {v1, v9, v10}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    int-to-long v9, v1

    .line 57
    const-wide/32 v11, 0x36ee80

    .line 58
    .line 59
    .line 60
    mul-long/2addr v9, v11

    .line 61
    sub-long v4, v6, v4

    .line 62
    .line 63
    cmp-long v1, v4, v9

    .line 64
    .line 65
    if-gez v1, :cond_0

    .line 66
    .line 67
    iget v1, p0, Lcom/kuaishou/weapon/p0/da$1;->a:I

    .line 68
    .line 69
    const/16 v9, 0x64

    .line 70
    .line 71
    if-ne v1, v9, :cond_1

    .line 72
    .line 73
    if-ne v2, v3, :cond_1

    .line 74
    .line 75
    const-wide/32 v1, 0xdbba00

    .line 76
    .line 77
    .line 78
    cmp-long v1, v4, v1

    .line 79
    .line 80
    if-ltz v1, :cond_1

    .line 81
    .line 82
    :cond_0
    new-instance v1, Lcom/kuaishou/weapon/p0/bu;

    .line 83
    .line 84
    iget-object v2, p0, Lcom/kuaishou/weapon/p0/da$1;->b:Lcom/kuaishou/weapon/p0/da;

    .line 85
    .line 86
    invoke-static {v2}, Lcom/kuaishou/weapon/p0/da;->a(Lcom/kuaishou/weapon/p0/da;)Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iget v4, p0, Lcom/kuaishou/weapon/p0/da$1;->a:I

    .line 91
    .line 92
    invoke-direct {v1, v2, v4, v8}, Lcom/kuaishou/weapon/p0/bu;-><init>(Landroid/content/Context;IZ)V

    .line 93
    .line 94
    .line 95
    sget-object v2, Lcom/kuaishou/weapon/p0/ci;->f:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Lcom/kuaishou/weapon/p0/bu;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iget-object v2, p0, Lcom/kuaishou/weapon/p0/da$1;->b:Lcom/kuaishou/weapon/p0/da;

    .line 102
    .line 103
    invoke-static {v2}, Lcom/kuaishou/weapon/p0/da;->a(Lcom/kuaishou/weapon/p0/da;)Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    sget-object v4, Lcom/kuaishou/weapon/p0/ci;->f:Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {v2, v1, v4, v3}, Lcom/kuaishou/weapon/p0/ce;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lcom/kuaishou/weapon/p0/da$1;->b:Lcom/kuaishou/weapon/p0/da;

    .line 113
    .line 114
    invoke-static {v1}, Lcom/kuaishou/weapon/p0/da;->a(Lcom/kuaishou/weapon/p0/da;)Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-static {v1}, Lcom/kuaishou/weapon/p0/dd;->a(Landroid/content/Context;)Lcom/kuaishou/weapon/p0/dd;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1, v0, v6, v7}, Lcom/kuaishou/weapon/p0/dd;->a(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .line 124
    .line 125
    :catchall_0
    :cond_1
    return-void
.end method
