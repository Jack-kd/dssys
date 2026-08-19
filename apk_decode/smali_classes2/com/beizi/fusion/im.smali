.class public Lcom/beizi/fusion/im;
.super Lcom/beizi/fusion/zo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/fusion/im$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/td;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/beizi/fusion/zo;-><init>(Lcom/beizi/fusion/td;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/beizi/fusion/jc$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/a1;->a:Lcom/beizi/fusion/kb;

    instance-of v1, v0, Lcom/beizi/fusion/wf;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/beizi/fusion/wf;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/wf;->a(Lcom/beizi/fusion/jc$a;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/beizi/fusion/vc;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/a1;->a:Lcom/beizi/fusion/kb;

    instance-of v1, v0, Lcom/beizi/fusion/wf;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/beizi/fusion/wf;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/wf;->a(Lcom/beizi/fusion/vc;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/beizi/fusion/wc;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/a1;->a:Lcom/beizi/fusion/kb;

    instance-of v0, v0, Lcom/beizi/fusion/wf;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/zo;->b:Lcom/beizi/fusion/zo$a;

    instance-of v1, v0, Lcom/beizi/fusion/im$b;

    if-eqz v1, :cond_0

    .line 7
    check-cast v0, Lcom/beizi/fusion/im$b;

    invoke-static {v0, p1}, Lcom/beizi/fusion/im$b;->a(Lcom/beizi/fusion/im$b;Lcom/beizi/fusion/wc;)V

    .line 8
    iget-object p1, p0, Lcom/beizi/fusion/a1;->a:Lcom/beizi/fusion/kb;

    check-cast p1, Lcom/beizi/fusion/wf;

    iget-object v0, p0, Lcom/beizi/fusion/zo;->b:Lcom/beizi/fusion/zo$a;

    check-cast v0, Lcom/beizi/fusion/im$b;

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/wf;->a(Lcom/beizi/fusion/wc;)V

    :cond_0
    return-void
.end method

.method public l()Lcom/beizi/fusion/zo$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/beizi/fusion/im$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/beizi/fusion/im$b;-><init>(Lcom/beizi/fusion/im$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/a1;->a:Lcom/beizi/fusion/kb;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/beizi/fusion/wf;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/beizi/fusion/wf;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/beizi/fusion/wf;->s()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public n()Lcom/beizi/fusion/se;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/a1;->a:Lcom/beizi/fusion/kb;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/beizi/fusion/wf;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/beizi/fusion/wf;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/beizi/fusion/wf;->t()Lcom/beizi/fusion/se;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method
