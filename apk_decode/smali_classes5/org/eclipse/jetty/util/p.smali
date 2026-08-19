.class public Lorg/eclipse/jetty/util/p;
.super Lorg/eclipse/jetty/util/Utf8Appendable;
.source "SourceFile"


# instance fields
.field public final g:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/Utf8Appendable;-><init>(Ljava/lang/Appendable;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lorg/eclipse/jetty/util/Utf8Appendable;->a:Ljava/lang/Appendable;

    .line 10
    .line 11
    check-cast p1, Ljava/lang/StringBuffer;

    .line 12
    .line 13
    iput-object p1, p0, Lorg/eclipse/jetty/util/p;->g:Ljava/lang/StringBuffer;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public h()Ljava/lang/StringBuffer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Utf8Appendable;->d()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/eclipse/jetty/util/p;->g:Ljava/lang/StringBuffer;

    .line 5
    .line 6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Utf8Appendable;->d()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/eclipse/jetty/util/p;->g:Ljava/lang/StringBuffer;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method
