.class public LN1/c$b;
.super Lorg/eclipse/jetty/http/l$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LN1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:LN1/c;


# direct methods
.method public constructor <init>(LN1/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, LN1/c$b;->a:LN1/c;

    invoke-direct {p0}, Lorg/eclipse/jetty/http/l$a;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LN1/c;LN1/b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LN1/c$b;-><init>(LN1/c;)V

    return-void
.end method


# virtual methods
.method public a(LL1/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, LN1/c$b;->a:LN1/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LN1/c;->j(LL1/d;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, LN1/c$b;->a:LN1/c;

    .line 2
    .line 3
    invoke-virtual {v0}, LN1/c;->k()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, LN1/c$b;->a:LN1/c;

    .line 2
    .line 3
    invoke-virtual {v0}, LN1/c;->z()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(J)V
    .locals 1

    .line 1
    iget-object v0, p0, LN1/c$b;->a:LN1/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, LN1/c;->E(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(LL1/d;LL1/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, LN1/c$b;->a:LN1/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, LN1/c;->H(LL1/d;LL1/d;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(LL1/d;LL1/d;LL1/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, LN1/c$b;->a:LN1/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, LN1/c;->K(LL1/d;LL1/d;LL1/d;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g(LL1/d;ILL1/d;)V
    .locals 3

    .line 1
    invoke-static {}, LN1/c;->f()LR1/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, LR1/c;->f()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, LN1/c;->f()LR1/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "Bad request!: "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, " "

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const/4 p2, 0x0

    .line 47
    new-array p2, p2, [Ljava/lang/Object;

    .line 48
    .line 49
    invoke-interface {v0, p1, p2}, LR1/c;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method
