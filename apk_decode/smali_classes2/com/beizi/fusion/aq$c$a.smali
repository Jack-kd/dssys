.class Lcom/beizi/fusion/aq$c$a;
.super Lcom/beizi/fusion/b1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/aq$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/aq$c;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/aq$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/aq$c$a;->a:Lcom/beizi/fusion/aq$c;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/beizi/fusion/b1;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/beizi/fusion/pc;)V
    .locals 1

    .line 3
    iget-object p1, p0, Lcom/beizi/fusion/aq$c$a;->a:Lcom/beizi/fusion/aq$c;

    iget-object v0, p1, Lcom/beizi/fusion/va$d;->d:Lcom/beizi/fusion/va$c;

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p1, Lcom/beizi/fusion/va$d;->c:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/beizi/fusion/va$c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/beizi/fusion/ta;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/beizi/fusion/aq$c$a;->a:Lcom/beizi/fusion/aq$c;

    iget-object v0, p1, Lcom/beizi/fusion/va$d;->d:Lcom/beizi/fusion/va$c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p1, Lcom/beizi/fusion/va$d;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/beizi/fusion/va$d;->b:Ljava/io/File;

    invoke-interface {v0, v1, p1}, Lcom/beizi/fusion/va$c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
