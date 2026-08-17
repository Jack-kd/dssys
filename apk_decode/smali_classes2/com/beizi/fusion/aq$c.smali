.class Lcom/beizi/fusion/aq$c;
.super Lcom/beizi/fusion/va$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/beizi/fusion/va$d;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Lcom/beizi/fusion/aq$c$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/beizi/fusion/aq$c$a;-><init>(Lcom/beizi/fusion/aq$c;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/beizi/fusion/s5;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/beizi/fusion/s5;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/s5;->a(Z)Lcom/beizi/fusion/s5;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Lcom/beizi/fusion/s5;->a(Lcom/beizi/fusion/ua;)Lcom/beizi/fusion/s5;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/beizi/fusion/va$d;->a:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/beizi/fusion/va$d;->b:Ljava/io/File;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/s5;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/beizi/fusion/s5;->a()Lcom/beizi/fusion/sa;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 32
    .line 33
    .line 34
    return-void
.end method
