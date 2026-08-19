.class public Lorg/eclipse/jetty/util/q;
.super Lorg/eclipse/jetty/util/Utf8Appendable;
.source "SourceFile"


# instance fields
.field public final g:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/Utf8Appendable;-><init>(Ljava/lang/Appendable;)V

    .line 2
    iget-object v0, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->a:Ljava/lang/Appendable;

    check-cast v0, Ljava/lang/StringBuilder;

    iput-object v0, p0, Lorg/eclipse/jetty/util/q;->g:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/Utf8Appendable;-><init>(Ljava/lang/Appendable;)V

    .line 4
    iget-object p1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->a:Ljava/lang/Appendable;

    check-cast p1, Ljava/lang/StringBuilder;

    iput-object p1, p0, Lorg/eclipse/jetty/util/q;->g:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public f()V
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/eclipse/jetty/util/Utf8Appendable;->f()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/eclipse/jetty/util/q;->g:Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public h()Ljava/lang/StringBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Utf8Appendable;->d()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/eclipse/jetty/util/q;->g:Ljava/lang/StringBuilder;

    .line 5
    .line 6
    return-object v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/util/q;->g:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Utf8Appendable;->d()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/eclipse/jetty/util/q;->g:Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method
