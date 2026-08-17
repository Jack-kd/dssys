.class public abstract Lcom/beizi/fusion/u6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/lc;


# direct methods
.method public static a(Landroid/content/Context;Lcom/beizi/fusion/lc;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/beizi/fusion/xj;->a(Landroid/content/Context;)Lcom/beizi/fusion/zd;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/beizi/fusion/zd;->a(Lcom/beizi/fusion/lc;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/beizi/fusion/xj;->a(Landroid/content/Context;)Lcom/beizi/fusion/zd;

    move-result-object p0

    invoke-interface {p0}, Lcom/beizi/fusion/zd;->a()Z

    move-result p0

    return p0
.end method
