.class Lcom/kuaishou/weapon/p0/dc$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kuaishou/weapon/p0/dc;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/kuaishou/weapon/p0/dc;


# direct methods
.method public constructor <init>(Lcom/kuaishou/weapon/p0/dc;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kuaishou/weapon/p0/dc$1;->b:Lcom/kuaishou/weapon/p0/dc;

    .line 2
    .line 3
    iput p2, p0, Lcom/kuaishou/weapon/p0/dc$1;->a:I

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
    .locals 10

    .line 1
    const-string v0, "soc_a1_1_upl_time"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/kuaishou/weapon/p0/dc$1;->b:Lcom/kuaishou/weapon/p0/dc;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/kuaishou/weapon/p0/dc;->a(Lcom/kuaishou/weapon/p0/dc;)Landroid/content/Context;

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
    const-string v2, "plc002_soc_s"

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
    const/4 v3, 0x1

    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget-object v2, p0, Lcom/kuaishou/weapon/p0/dc$1;->b:Lcom/kuaishou/weapon/p0/dc;

    .line 26
    .line 27
    invoke-static {v2}, Lcom/kuaishou/weapon/p0/dc;->a(Lcom/kuaishou/weapon/p0/dc;)Landroid/content/Context;

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
    invoke-virtual {v2, v0}, Lcom/kuaishou/weapon/p0/dd;->a(Ljava/lang/String;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    const-string v6, "plc002_soc_i"

    .line 44
    .line 45
    const/4 v7, 0x2

    .line 46
    invoke-virtual {v1, v6, v7}, Lcom/kuaishou/weapon/p0/h;->b(Ljava/lang/String;I)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    int-to-long v6, v1

    .line 51
    const-wide/32 v8, 0x36ee80

    .line 52
    .line 53
    .line 54
    mul-long/2addr v6, v8

    .line 55
    sub-long v1, v4, v2

    .line 56
    .line 57
    cmp-long v1, v1, v6

    .line 58
    .line 59
    if-gez v1, :cond_0

    .line 60
    .line 61
    iget v1, p0, Lcom/kuaishou/weapon/p0/dc$1;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 62
    .line 63
    const/16 v2, 0x6a

    .line 64
    .line 65
    if-ne v1, v2, :cond_2

    .line 66
    .line 67
    :cond_0
    :try_start_1
    new-instance v1, Lcom/kuaishou/weapon/p0/cm;

    .line 68
    .line 69
    iget-object v2, p0, Lcom/kuaishou/weapon/p0/dc$1;->b:Lcom/kuaishou/weapon/p0/dc;

    .line 70
    .line 71
    invoke-static {v2}, Lcom/kuaishou/weapon/p0/dc;->a(Lcom/kuaishou/weapon/p0/dc;)Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-direct {v1, v2}, Lcom/kuaishou/weapon/p0/cm;-><init>(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    sget-object v2, Lcom/kuaishou/weapon/p0/ci;->i:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Lcom/kuaishou/weapon/p0/cm;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    sget-object v2, Lcom/kuaishou/weapon/p0/ci;->i:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v1, :cond_1

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    const/16 v6, 0xa

    .line 101
    .line 102
    if-le v3, v6, :cond_1

    .line 103
    .line 104
    new-instance v3, Lcom/kuaishou/weapon/p0/ba;

    .line 105
    .line 106
    iget-object v6, p0, Lcom/kuaishou/weapon/p0/dc$1;->b:Lcom/kuaishou/weapon/p0/dc;

    .line 107
    .line 108
    invoke-static {v6}, Lcom/kuaishou/weapon/p0/dc;->a(Lcom/kuaishou/weapon/p0/dc;)Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-direct {v3, v6, v1, v2}, Lcom/kuaishou/weapon/p0/ba;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 113
    .line 114
    .line 115
    const-string v1, "1000"

    .line 116
    .line 117
    invoke-virtual {v3, v1}, Lcom/kuaishou/weapon/p0/ba;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .line 119
    .line 120
    :catchall_0
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/kuaishou/weapon/p0/dc$1;->b:Lcom/kuaishou/weapon/p0/dc;

    .line 121
    .line 122
    invoke-static {v1}, Lcom/kuaishou/weapon/p0/dc;->a(Lcom/kuaishou/weapon/p0/dc;)Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v1}, Lcom/kuaishou/weapon/p0/dd;->a(Landroid/content/Context;)Lcom/kuaishou/weapon/p0/dd;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v1, v0, v4, v5}, Lcom/kuaishou/weapon/p0/dd;->a(Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 131
    .line 132
    .line 133
    :catchall_1
    :cond_2
    return-void
.end method
