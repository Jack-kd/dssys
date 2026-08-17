.class Lcom/beizi/fusion/h9$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/h9$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

.field final synthetic c:Lcom/beizi/fusion/h9$a;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/h9$a;ILcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/h9$a$a;->c:Lcom/beizi/fusion/h9$a;

    .line 2
    .line 3
    iput p2, p0, Lcom/beizi/fusion/h9$a$a;->a:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/beizi/fusion/h9$a$a;->b:Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

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
    .locals 4

    .line 1
    iget v0, p0, Lcom/beizi/fusion/h9$a$a;->a:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-eq v0, v1, :cond_4

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_3

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static {}, Lcom/beizi/fusion/h9;->a()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/beizi/fusion/mq;->a(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/beizi/fusion/widget/JSView;

    .line 28
    .line 29
    invoke-static {}, Lcom/beizi/fusion/h9;->a()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/beizi/fusion/h9$a$a;->b:Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

    .line 34
    .line 35
    invoke-direct {v0, v1, v2}, Lcom/beizi/fusion/widget/JSView;-><init>(Landroid/content/Context;Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/beizi/fusion/widget/JSView;->load()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    invoke-static {}, Lcom/beizi/fusion/h9;->a()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/beizi/fusion/mq;->a(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Lcom/beizi/fusion/widget/LandingView;

    .line 50
    .line 51
    invoke-static {}, Lcom/beizi/fusion/h9;->a()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/beizi/fusion/h9$a$a;->b:Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

    .line 56
    .line 57
    invoke-direct {v0, v1, v2}, Lcom/beizi/fusion/widget/LandingView;-><init>(Landroid/content/Context;Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/beizi/fusion/widget/LandingView;->load()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    invoke-static {}, Lcom/beizi/fusion/h9;->a()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/beizi/fusion/j5;->a(Landroid/content/Context;)Lcom/beizi/fusion/j5;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/beizi/fusion/h9$a$a;->b:Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/j5;->a(Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_3
    invoke-static {}, Lcom/beizi/fusion/w3;->b()Lcom/beizi/fusion/w3;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/beizi/fusion/w3;->f()Ljava/util/concurrent/ExecutorService;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-instance v1, Lcom/beizi/fusion/yo;

    .line 87
    .line 88
    invoke-static {}, Lcom/beizi/fusion/h9;->a()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    iget-object v3, p0, Lcom/beizi/fusion/h9$a$a;->b:Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

    .line 93
    .line 94
    invoke-direct {v1, v2, v3}, Lcom/beizi/fusion/yo;-><init>(Landroid/content/Context;Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;)V

    .line 95
    .line 96
    .line 97
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_4
    invoke-static {}, Lcom/beizi/fusion/w3;->b()Lcom/beizi/fusion/w3;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/beizi/fusion/w3;->e()Ljava/util/concurrent/ExecutorService;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    new-instance v1, Lcom/beizi/fusion/s2;

    .line 110
    .line 111
    invoke-static {}, Lcom/beizi/fusion/h9;->a()Landroid/content/Context;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    iget-object v3, p0, Lcom/beizi/fusion/h9$a$a;->b:Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

    .line 116
    .line 117
    invoke-direct {v1, v2, v3}, Lcom/beizi/fusion/s2;-><init>(Landroid/content/Context;Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;)V

    .line 118
    .line 119
    .line 120
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method
