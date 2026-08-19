.class final Lcom/beizi/fusion/r2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/fusion/r2$b;,
        Lcom/beizi/fusion/r2$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/beizi/fusion/la;

.field private final b:Lcom/beizi/fusion/q2;

.field private final c:Landroid/content/Context;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/List;

.field private j:Lcom/beizi/fusion/r2$b;

.field private k:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/beizi/fusion/la;Lcom/beizi/fusion/q2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/beizi/fusion/r2;->a:Lcom/beizi/fusion/la;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/beizi/fusion/r2;->b:Lcom/beizi/fusion/q2;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/beizi/fusion/r2;->c:Landroid/content/Context;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic a(Lcom/beizi/fusion/r2;)Lcom/beizi/fusion/la;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/r2;->a:Lcom/beizi/fusion/la;

    return-object p0
.end method

.method private a(Lcom/beizi/fusion/asnp/common/analyse2/db/AnalyseEventDBModel;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/common/analyse2/db/AnalyseEventDBModel;->e()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/common/analyse2/db/AnalyseEventDBModel;->c()Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v2, Lcom/beizi/fusion/r2$c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/beizi/fusion/r2$c;-><init>(Lcom/beizi/fusion/r2;Lcom/beizi/fusion/asnp/common/analyse2/db/AnalyseEventDBModel;Lcom/beizi/fusion/r2$a;)V

    .line 11
    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/common/analyse2/db/AnalyseEventDBModel;->d()[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 12
    iget-object v3, p0, Lcom/beizi/fusion/r2;->b:Lcom/beizi/fusion/q2;

    invoke-virtual {v3, v0, v1, p1, v2}, Lcom/beizi/fusion/q2;->a(Ljava/lang/String;Ljava/lang/String;[BLcom/beizi/fusion/ua;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic b(Lcom/beizi/fusion/r2;)Lcom/beizi/fusion/r2$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/r2;->j:Lcom/beizi/fusion/r2$b;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/beizi/fusion/r2$b;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/beizi/fusion/r2;->j:Lcom/beizi/fusion/r2$b;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/beizi/fusion/r2;->f:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/beizi/fusion/r2;->g:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/beizi/fusion/r2;->h:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/beizi/fusion/r2;->k:Ljava/util/List;

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/beizi/fusion/r2;->i:Ljava/util/List;

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/r2;->e:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/r2;->d:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/r2;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/beizi/fusion/r2;->a(Ljava/util/List;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/r2;->e:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/beizi/fusion/asnp/common/analyse2/db/AnalyseEventDBModel;

    .line 26
    .line 27
    invoke-direct {p0, v1}, Lcom/beizi/fusion/r2;->a(Lcom/beizi/fusion/asnp/common/analyse2/db/AnalyseEventDBModel;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/r2;->d:Ljava/util/List;

    .line 32
    .line 33
    invoke-direct {p0, v0}, Lcom/beizi/fusion/r2;->a(Ljava/util/List;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/beizi/fusion/r2;->i:Ljava/util/List;

    .line 40
    .line 41
    invoke-direct {p0, v0}, Lcom/beizi/fusion/r2;->a(Ljava/util/List;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_6

    .line 46
    .line 47
    :cond_1
    invoke-static {}, Lcom/beizi/fusion/bn;->a()Lcom/beizi/fusion/bn;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/beizi/fusion/r2;->c:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/x9;->b(Landroid/content/Context;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lcom/beizi/fusion/ye;

    .line 58
    .line 59
    instance-of v1, v0, Lcom/beizi/fusion/v7;

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    check-cast v0, Lcom/beizi/fusion/v7;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/beizi/fusion/r2;->h:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/v7;->b(Ljava/lang/String;)Lcom/beizi/fusion/k2;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/beizi/fusion/r2;->k:Ljava/util/List;

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    new-array v2, v2, [Ljava/lang/String;

    .line 77
    .line 78
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, [Ljava/lang/String;

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    new-array v1, v2, [Ljava/lang/String;

    .line 86
    .line 87
    :goto_1
    if-eqz v0, :cond_4

    .line 88
    .line 89
    invoke-interface {v0, v1}, Lcom/beizi/fusion/k2;->a([Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    const/4 v0, 0x0

    .line 94
    :cond_4
    :goto_2
    if-eqz v0, :cond_6

    .line 95
    .line 96
    iget-object v1, p0, Lcom/beizi/fusion/r2;->i:Ljava/util/List;

    .line 97
    .line 98
    invoke-direct {p0, v1}, Lcom/beizi/fusion/r2;->a(Ljava/util/List;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_5

    .line 103
    .line 104
    iget-object v1, p0, Lcom/beizi/fusion/r2;->c:Landroid/content/Context;

    .line 105
    .line 106
    iget-object v2, p0, Lcom/beizi/fusion/r2;->f:Ljava/lang/String;

    .line 107
    .line 108
    iget-object v3, p0, Lcom/beizi/fusion/r2;->g:Ljava/lang/String;

    .line 109
    .line 110
    iget-object v4, p0, Lcom/beizi/fusion/r2;->i:Ljava/util/List;

    .line 111
    .line 112
    invoke-static {v1, v2, v3, v0, v4}, Lcom/beizi/fusion/m2;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/beizi/fusion/k2;Ljava/util/List;)Lcom/beizi/fusion/asnp/common/analyse2/db/AnalyseEventDBModel;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    if-eqz v1, :cond_5

    .line 117
    .line 118
    invoke-direct {p0, v1}, Lcom/beizi/fusion/r2;->a(Lcom/beizi/fusion/asnp/common/analyse2/db/AnalyseEventDBModel;)V

    .line 119
    .line 120
    .line 121
    :cond_5
    iget-object v1, p0, Lcom/beizi/fusion/r2;->d:Ljava/util/List;

    .line 122
    .line 123
    invoke-direct {p0, v1}, Lcom/beizi/fusion/r2;->a(Ljava/util/List;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_6

    .line 128
    .line 129
    iget-object v1, p0, Lcom/beizi/fusion/r2;->c:Landroid/content/Context;

    .line 130
    .line 131
    iget-object v2, p0, Lcom/beizi/fusion/r2;->f:Ljava/lang/String;

    .line 132
    .line 133
    iget-object v3, p0, Lcom/beizi/fusion/r2;->g:Ljava/lang/String;

    .line 134
    .line 135
    iget-object v4, p0, Lcom/beizi/fusion/r2;->d:Ljava/util/List;

    .line 136
    .line 137
    invoke-static {v1, v2, v3, v0, v4}, Lcom/beizi/fusion/m2;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/beizi/fusion/k2;Ljava/util/List;)Lcom/beizi/fusion/asnp/common/analyse2/db/AnalyseEventDBModel;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-eqz v0, :cond_6

    .line 142
    .line 143
    invoke-direct {p0, v0}, Lcom/beizi/fusion/r2;->a(Lcom/beizi/fusion/asnp/common/analyse2/db/AnalyseEventDBModel;)V

    .line 144
    .line 145
    .line 146
    :cond_6
    return-void
.end method
