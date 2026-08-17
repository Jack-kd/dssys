.class Lcom/beizi/fusion/gj$g;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/gj;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/gj;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/gj;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/gj$g;->a:Lcom/beizi/fusion/gj;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/gj$g;->a:Lcom/beizi/fusion/gj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/gj;->y(Lcom/beizi/fusion/gj;)Lcom/beizi/fusion/rn;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/gj$g;->a:Lcom/beizi/fusion/gj;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/gj;->z(Lcom/beizi/fusion/gj;)Lcom/beizi/fusion/rn;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/rn;->a(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/gj$g;->a:Lcom/beizi/fusion/gj;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/beizi/fusion/gj;->F(Lcom/beizi/fusion/gj;)Lcom/beizi/fusion/p1;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/beizi/fusion/gj$g;->a:Lcom/beizi/fusion/gj;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/beizi/fusion/gj;->F(Lcom/beizi/fusion/gj;)Lcom/beizi/fusion/p1;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/beizi/fusion/p1;->b()V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/gj$g;->a:Lcom/beizi/fusion/gj;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/beizi/fusion/gj;->A(Lcom/beizi/fusion/gj;)Landroid/os/CountDownTimer;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    iget-object v0, p0, Lcom/beizi/fusion/gj$g;->a:Lcom/beizi/fusion/gj;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/beizi/fusion/gj;->A(Lcom/beizi/fusion/gj;)Landroid/os/CountDownTimer;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/gj$g;->a:Lcom/beizi/fusion/gj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/gj;->F(Lcom/beizi/fusion/gj;)Lcom/beizi/fusion/p1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/gj$g;->a:Lcom/beizi/fusion/gj;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/gj;->F(Lcom/beizi/fusion/gj;)Lcom/beizi/fusion/p1;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/beizi/fusion/p1;->a(J)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
