.class public abstract Lcom/beizi/fusion/oo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/fusion/oo$b;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 1

    .line 2
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/Writer;

    return-object p0

    :cond_0
    new-instance v0, Lcom/beizi/fusion/oo$b;

    invoke-direct {v0, p0}, Lcom/beizi/fusion/oo$b;-><init>(Ljava/lang/Appendable;)V

    return-object v0
.end method

.method public static a(Lcom/beizi/fusion/ig;Lcom/beizi/fusion/rg;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/beizi/fusion/hp;->t:Lcom/beizi/fusion/fp;

    invoke-virtual {v0, p1, p0}, Lcom/beizi/fusion/fp;->a(Lcom/beizi/fusion/rg;Ljava/lang/Object;)V

    return-void
.end method
