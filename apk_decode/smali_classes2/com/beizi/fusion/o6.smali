.class Lcom/beizi/fusion/o6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/zd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/beizi/fusion/lc;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/beizi/fusion/vj;

    const-string v1, "Unsupported"

    invoke-direct {v0, v1}, Lcom/beizi/fusion/vj;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/beizi/fusion/lc;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
