.class Lcom/beizi/fusion/gj$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/gj;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/gj;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/gj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/gj$c;->a:Lcom/beizi/fusion/gj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/gj$c;->a:Lcom/beizi/fusion/gj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/gj;->a(Lcom/beizi/fusion/gj;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/gj$c;->a:Lcom/beizi/fusion/gj;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/beizi/fusion/gj;->X()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/gj$c;->a:Lcom/beizi/fusion/gj;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/beizi/fusion/gj;->b(Lcom/beizi/fusion/gj;)Lcom/beizi/fusion/rn;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/beizi/fusion/gj$c;->a:Lcom/beizi/fusion/gj;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/beizi/fusion/gj;->C(Lcom/beizi/fusion/gj;)Lcom/beizi/fusion/rn;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/beizi/fusion/gj$c;->a:Lcom/beizi/fusion/gj;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/beizi/fusion/gj;->m(Lcom/beizi/fusion/gj;)Landroid/view/ViewGroup;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/beizi/fusion/gj$c;->a:Lcom/beizi/fusion/gj;

    .line 32
    .line 33
    invoke-static {v2}, Lcom/beizi/fusion/gj;->w(Lcom/beizi/fusion/gj;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/rn;->f(Landroid/view/View;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/gj$c;->a:Lcom/beizi/fusion/gj;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/beizi/fusion/gj;->D(Lcom/beizi/fusion/gj;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/beizi/fusion/gj$c;->a:Lcom/beizi/fusion/gj;

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    invoke-static {v0, v1}, Lcom/beizi/fusion/gj;->c(Lcom/beizi/fusion/gj;Z)Z

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/beizi/fusion/v3;->b()Lcom/beizi/fusion/v3;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/beizi/fusion/gj$c;->a:Lcom/beizi/fusion/gj;

    .line 59
    .line 60
    invoke-static {v1}, Lcom/beizi/fusion/gj;->E(Lcom/beizi/fusion/gj;)Lcom/beizi/fusion/a5;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/v3;->a(Lcom/beizi/fusion/a5;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/gj$c;->a:Lcom/beizi/fusion/gj;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/beizi/fusion/gj;->F(Lcom/beizi/fusion/gj;)Lcom/beizi/fusion/p1;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    iget-object v0, p0, Lcom/beizi/fusion/gj$c;->a:Lcom/beizi/fusion/gj;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/beizi/fusion/gj;->F(Lcom/beizi/fusion/gj;)Lcom/beizi/fusion/p1;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/beizi/fusion/p1;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    :cond_2
    return-void

    .line 85
    :catch_0
    iget-object v0, p0, Lcom/beizi/fusion/gj$c;->a:Lcom/beizi/fusion/gj;

    .line 86
    .line 87
    const/16 v1, 0xb

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/gj;->a(I)V

    .line 90
    .line 91
    .line 92
    return-void
.end method
