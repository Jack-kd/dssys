.class public abstract LN1/j;
.super Ljavax/servlet/ServletOutputStream;
.source "SourceFile"


# instance fields
.field public final a:LN1/c;

.field public final b:Lorg/eclipse/jetty/http/a;

.field public c:Z


# direct methods
.method public constructor <init>(LN1/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljavax/servlet/ServletOutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LN1/j;->a:LN1/c;

    .line 5
    .line 6
    invoke-virtual {p1}, LN1/c;->o()Lorg/eclipse/jetty/http/c;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lorg/eclipse/jetty/http/a;

    .line 11
    .line 12
    iput-object p1, p0, LN1/j;->b:Lorg/eclipse/jetty/http/a;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, LN1/j;->b:Lorg/eclipse/jetty/http/a;

    .line 2
    .line 3
    invoke-virtual {p0}, LN1/j;->b()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    int-to-long v1, v1

    .line 8
    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/a;->r(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, LN1/j;->a:LN1/c;

    .line 2
    .line 3
    invoke-virtual {v0}, LN1/c;->p()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LN1/j;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LN1/j;->c:Z

    .line 3
    .line 4
    return-void
.end method
