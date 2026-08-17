.class public abstract Lcom/beizi/fusion/l9;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/beizi/fusion/me;Lcom/beizi/fusion/ua;)Lcom/beizi/fusion/sa;
    .locals 2

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/beizi/fusion/me;->b()Lcom/beizi/fusion/fm;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/beizi/fusion/fm;->b:Lcom/beizi/fusion/fm;

    .line 8
    .line 9
    if-ne v1, v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/beizi/fusion/gl;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcom/beizi/fusion/gl;-><init>(Lcom/beizi/fusion/me;Lcom/beizi/fusion/ua;)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    sget-object v1, Lcom/beizi/fusion/fm;->c:Lcom/beizi/fusion/fm;

    .line 18
    .line 19
    if-ne v1, v0, :cond_1

    .line 20
    .line 21
    new-instance v0, Lcom/beizi/fusion/p8;

    .line 22
    .line 23
    invoke-direct {v0, p0, p1}, Lcom/beizi/fusion/p8;-><init>(Lcom/beizi/fusion/me;Lcom/beizi/fusion/ua;)V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    sget-object v1, Lcom/beizi/fusion/fm;->d:Lcom/beizi/fusion/fm;

    .line 28
    .line 29
    if-ne v1, v0, :cond_2

    .line 30
    .line 31
    new-instance v0, Lcom/beizi/fusion/jh;

    .line 32
    .line 33
    invoke-direct {v0, p0, p1}, Lcom/beizi/fusion/jh;-><init>(Lcom/beizi/fusion/me;Lcom/beizi/fusion/ua;)V

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_2
    sget-object v1, Lcom/beizi/fusion/fm;->f:Lcom/beizi/fusion/fm;

    .line 38
    .line 39
    if-ne v1, v0, :cond_3

    .line 40
    .line 41
    new-instance v0, Lcom/beizi/fusion/of;

    .line 42
    .line 43
    invoke-direct {v0, p0, p1}, Lcom/beizi/fusion/of;-><init>(Lcom/beizi/fusion/me;Lcom/beizi/fusion/ua;)V

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_3
    sget-object v1, Lcom/beizi/fusion/fm;->e:Lcom/beizi/fusion/fm;

    .line 48
    .line 49
    if-ne v1, v0, :cond_4

    .line 50
    .line 51
    new-instance v0, Lcom/beizi/fusion/hl;

    .line 52
    .line 53
    invoke-direct {v0, p0, p1}, Lcom/beizi/fusion/hl;-><init>(Lcom/beizi/fusion/me;Lcom/beizi/fusion/ua;)V

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_4
    const/4 p0, 0x0

    .line 58
    return-object p0
.end method
