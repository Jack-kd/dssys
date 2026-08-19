.class Lcom/beizi/fusion/hp$q;
.super Lcom/beizi/fusion/fp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/hp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/fp;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/beizi/fusion/rg;Ljava/lang/Number;)V
    .locals 2

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/beizi/fusion/rg;->k()Lcom/beizi/fusion/rg;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/beizi/fusion/rg;->a(D)Lcom/beizi/fusion/rg;

    return-void
.end method

.method public bridge synthetic a(Lcom/beizi/fusion/rg;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/beizi/fusion/hp$q;->a(Lcom/beizi/fusion/rg;Ljava/lang/Number;)V

    return-void
.end method
