.class Lcom/beizi/fusion/mj$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/bo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/mj$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/mj$b;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/mj$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/mj$b$a;->a:Lcom/beizi/fusion/mj$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/mj$b$a;->a:Lcom/beizi/fusion/mj$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/beizi/fusion/mj$b;->b:Lcom/beizi/fusion/mj;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/beizi/fusion/mj;->e(Lcom/beizi/fusion/mj;)Lcom/beizi/fusion/rn;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const-string v0, "BeiZisAd"

    .line 12
    .line 13
    const-string v1, "enter BeiZi ad show"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/beizi/fusion/mj$b$a;->a:Lcom/beizi/fusion/mj$b;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/beizi/fusion/mj$b;->b:Lcom/beizi/fusion/mj;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/beizi/fusion/mj;->g(Lcom/beizi/fusion/mj;)Lcom/beizi/fusion/rn;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/beizi/fusion/mj$b$a;->a:Lcom/beizi/fusion/mj$b;

    .line 27
    .line 28
    iget-object v2, v1, Lcom/beizi/fusion/mj$b;->a:Landroid/view/View;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/beizi/fusion/mj$b;->b:Lcom/beizi/fusion/mj;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/beizi/fusion/mj;->f(Lcom/beizi/fusion/mj;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/beizi/fusion/rn;->f(Landroid/view/View;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/beizi/fusion/mj$b$a;->a:Lcom/beizi/fusion/mj$b;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/beizi/fusion/mj$b;->b:Lcom/beizi/fusion/mj;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/beizi/fusion/mj;->h(Lcom/beizi/fusion/mj;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lcom/beizi/fusion/mj$b$a;->a:Lcom/beizi/fusion/mj$b;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/beizi/fusion/mj$b;->b:Lcom/beizi/fusion/mj;

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    invoke-static {v0, v1}, Lcom/beizi/fusion/mj;->a(Lcom/beizi/fusion/mj;Z)Z

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/beizi/fusion/v3;->b()Lcom/beizi/fusion/v3;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/beizi/fusion/mj$b$a;->a:Lcom/beizi/fusion/mj$b;

    .line 62
    .line 63
    iget-object v1, v1, Lcom/beizi/fusion/mj$b;->b:Lcom/beizi/fusion/mj;

    .line 64
    .line 65
    invoke-static {v1}, Lcom/beizi/fusion/mj;->i(Lcom/beizi/fusion/mj;)Lcom/beizi/fusion/a5;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/v3;->a(Lcom/beizi/fusion/a5;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    goto :goto_1

    .line 75
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/mj$b$a;->a:Lcom/beizi/fusion/mj$b;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/beizi/fusion/mj$b;->a:Landroid/view/View;

    .line 78
    .line 79
    new-instance v1, Lcom/beizi/fusion/mj$b$a$a;

    .line 80
    .line 81
    invoke-direct {v1, p0}, Lcom/beizi/fusion/mj$b$a$a;-><init>(Lcom/beizi/fusion/mj$b$a;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    :cond_1
    return-void

    .line 88
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    .line 90
    .line 91
    return-void
.end method
